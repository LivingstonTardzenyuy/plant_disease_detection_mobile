import 'package:get/get.dart';
import 'package:plant_disease_detection_mobile/common/widgets/success_screen/success_screen.dart';
import 'package:plant_disease_detection_mobile/utils/constants/image_strings.dart';
import 'package:plant_disease_detection_mobile/utils/constants/text_strings.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:jwt_decoder/jwt_decoder.dart';
import '../services/auth_service.dart';
import '../models/user_model.dart';

class AuthController extends GetxController {
  final AuthService _authService = AuthService();

  final RxBool isLoading = false.obs;
  final RxString errorMessage = ''.obs;
  final RxBool isLoggedIn = false.obs;
  final Rx<UserModel?> userProfile = Rx<UserModel?>(null);

  @override
  void onInit() {
    super.onInit();
    autoLogin();
  }

  Future<void> autoLogin() async {
    final prefs = await SharedPreferences.getInstance();
    final accessToken = prefs.getString('accessToken');
    final refreshToken = prefs.getString('refreshToken');
    if (accessToken != null && accessToken.isNotEmpty) {
      if (!JwtDecoder.isExpired(accessToken)) {
        isLoggedIn.value = true;
        await fetchUserProfile();
      } else if (refreshToken != null &&
          refreshToken.isNotEmpty &&
          !JwtDecoder.isExpired(refreshToken)) {
        // Try to refresh token
        try {
          final data = await _authService.refreshToken(refreshToken);
          await prefs.setString('accessToken', data['access']);
          await prefs.setString('refreshToken', data['refresh']);
          isLoggedIn.value = true;
          await fetchUserProfile();
        } catch (e) {
          await logoutUser();
        }
      } else {
        await logoutUser();
      }
    } else {
      isLoggedIn.value = false;
    }
  }

  Future<void> loginUser(
    String username,
    String password, {
    bool routeToHome = true,
  }) async {
    isLoading.value = true;
    errorMessage.value = '';
    try {
      final data = await _authService.login(username, password);
      final accessToken = data['access'];
      final refreshToken = data['refresh'];
      final prefs = await SharedPreferences.getInstance();
      await prefs.setString('accessToken', accessToken);
      await prefs.setString('refreshToken', refreshToken);
      isLoggedIn.value = true;
      await fetchUserProfile();
      if (routeToHome) {
        Get.offAllNamed('/nav-menu');
      }
    } catch (e) {
      errorMessage.value = e.toString();
      isLoggedIn.value = false;
    } finally {
      isLoading.value = false;
    }
  }

  Future<void> registerUser({
    required String email,
    required String password,
    required String username,
    required String firstName,
    required String lastName,
  }) async {
    isLoading.value = true;
    errorMessage.value = '';
    try {
      await _authService.register(
        email,
        password,
        username,
        firstName,
        lastName,
      );
      // After registration, login
      loginUser(username, password, routeToHome: false);

      Get.offAll(
        () => SuccessScreen(
          image: TImages.staticSuccessIllustration,
          title: TTexts.yourAccountCreatedTitle,
          subTitle: TTexts.yourAccountCreatedSubTitle,
          onPressed: () => Get.offAllNamed('/nav-menu'),
        ),
      );
    } catch (e) {
      errorMessage.value = e.toString();
    } finally {
      isLoading.value = false;
    }
  }

  Future<void> logoutUser() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove('accessToken');
    await prefs.remove('refreshToken');
    isLoggedIn.value = false;
    userProfile.value = null;
    Get.offAllNamed('/login');
  }

  Future<void> checkLoginStatus() async {
    final prefs = await SharedPreferences.getInstance();
    final accessToken = prefs.getString('accessToken');
    isLoggedIn.value =
        accessToken != null &&
        accessToken.isNotEmpty &&
        !JwtDecoder.isExpired(accessToken);
  }

  Future<void> fetchUserProfile() async {
    try {
      final data = await _authService.fetchUserProfile();
      userProfile.value = UserModel.fromJson(data);
    } catch (e) {
      errorMessage.value = e.toString();
      userProfile.value = null;
    }
  }
}
