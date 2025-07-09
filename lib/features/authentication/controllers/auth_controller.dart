import 'package:get/get.dart';
import 'package:plant_disease_detection_mobile/common/widgets/success_screen/success_screen.dart';
import 'package:plant_disease_detection_mobile/navigation_menu.dart';
import 'package:plant_disease_detection_mobile/utils/constants/image_strings.dart';
import 'package:plant_disease_detection_mobile/utils/constants/text_strings.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:plant_disease_detection_mobile/features/authentication/services/auth_service.dart';
import 'package:plant_disease_detection_mobile/features/authentication/models/user_model.dart';
import 'package:jwt_decoder/jwt_decoder.dart';
import 'package:flutter/material.dart'; // Import for SnackBar colors, etc.

class AuthController extends GetxController {
  final AuthService _authService = AuthService();

  RxBool isLoading = false.obs;
  RxString errorMessage = ''.obs;
  Rx<UserModel?> currentUser = Rx<UserModel?>(null);
  RxString accessToken = ''.obs;
  RxString refreshToken = ''.obs;

  @override
  void onInit() {
    super.onInit();
    // Automatically check login status when the controller is initialized
    // ensure this is not called on every rebuild if its a part of a widget tree that rebuilds
    // consider calling this in main.dart or your binding if you want it only once at app startup.
    // However, if AuthController is Get.put() once, onInit is called once.
    checkLoginStatus();
  }


  // Helper to fetch user profile and update currentUser
  Future<void> _fetchAndSetUserProfile() async {
    try {
      Get.log('Fetching user profile...');
      final userData = await _authService.fetchUserProfile();
      Get.log('User profile fetched: $userData');
      currentUser.value = UserModel.fromJson(userData);
      Get.log('User profile fetched and set: ${currentUser.value?.username}');
    } catch (e) {
      Get.log('Failed to fetch user profile: $e');
      // If profile fetch fails, it might indicate an invalid token
      // or other issues. You might want to log out the user here.
      Get.snackbar(
        'Profile Error',
        'Could not load user profile: $e. Please log in again.',
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.redAccent,
        colorText: Colors.white,
      );
      await logoutUser(); // Force logout if profile cannot be fetched
    }
  }

  Future<void> loginUser(String username, String password) async {
    Get.log('Attempting to log in user: $username');
    isLoading.value = true;
    errorMessage.value = ''; // Clear previous error
    try {
      final data = await _authService.login(username, password);
      await _saveTokens(data['access'], data['refresh']);
      accessToken.value = data['access'];
      refreshToken.value = data['refresh'];
      // currentUser.value = UserModel.fromJson(data['user']);
      await _fetchAndSetUserProfile();
      Get.log('Login successful for user: $username. Navigating to home.');
      Get.offAllNamed('/nav-menu'); // Navigate on success
      Get.snackbar(
        'Success',
        'Welcome back!',
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.green,
        colorText: Colors.white,
      );
    } catch (e) {
      errorMessage.value =
          e.toString(); // Use toString() as AuthService now throws a String
      Get.log('Login failed for user $username: ${errorMessage.value}');
      Get.snackbar(
        'Login Error',
        errorMessage.value,
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.redAccent,
        colorText: Colors.white,
      );
    } finally {
      isLoading.value = false;
      Get.log('Login process finished.');
    }
  }

  Future<void> registerUser({
    required String email,
    required String password,
    required String username,
    required String firstName,
    required String lastName,
  }) async {
    Get.log('Attempting to register new user: $username');
    isLoading.value = true;
    errorMessage.value = ''; // Clear previous error
    try {
      final data = await _authService.register(
        email,
        password,
        username,
        firstName,
        lastName,
      );
      Get.log('Registration successful for user: $username');
      Get.snackbar(
        'Success',
        'Account created successfully',
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.green,
        colorText: Colors.white,
      );
      // After successful registration, you might want to automatically login or navigate to login screen
      // If you auto-login, remove the success snackbar above and let loginUser handle its own snackbar.
      // await loginUser(email, password); // Auto-login after registration

      final loginData = await _authService.login(username, password);
      await _saveTokens(loginData['access'], loginData['refresh']);
      accessToken.value = loginData['access'];
      refreshToken.value = loginData['refresh'];
      // currentUser.value = UserModel.fromJson(loginData['user']);
      await _fetchAndSetUserProfile();
      Get.log('Login successful for user: $email. Navigating to home.');

      Get.to(
        () => SuccessScreen(
          image: TImages.staticSuccessIllustration,
          title: TTexts.yourAccountCreatedTitle,
          subTitle: TTexts.yourAccountCreatedSubTitle,
          onPressed: () => Get.to(() => const NavigationMenu()),
        ),
      );
    } catch (e) {
      errorMessage.value =
          e.toString(); // Use toString() as AuthService now throws a String
      Get.log('Registration failed for user $username: ${errorMessage.value}');
      Get.snackbar(
        'Registration Error',
        errorMessage.value,
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.redAccent,
        colorText: Colors.white,
      );
    } finally {
      isLoading.value = false;
      Get.log('Registration process finished.');
    }
  }

  Future<void> logoutUser() async {
    Get.log('Attempting to log out user.');
    await _clearTokens();
    accessToken.value = '';
    refreshToken.value = '';
    currentUser.value = null;
    Get.log('Tokens cleared. User data reset. Navigating to login.');
    Get.offAllNamed('/login');
    Get.snackbar(
      'Logged Out',
      'You have been logged out.',
      snackPosition: SnackPosition.BOTTOM,
      backgroundColor: Colors.blueAccent,
      colorText: Colors.white,
    );
  }

  Future<void> checkLoginStatus() async {
    Get.log('Checking login status...');
    final tokens = await _getTokens();
    final String? access = tokens['access'];
    final String? refresh = tokens['refresh'];

    if (access != null && refresh != null) {
      Get.log('Tokens found in storage.');
      if (!JwtDecoder.isExpired(access)) {
        Get.log('Access token is valid. Logging in automatically.');
        accessToken.value = access;
        refreshToken.value = refresh;
        // Optionally decode user from token or fetch user info if current user is null
        Get.offAllNamed('/nav-menu');
      } else if (!JwtDecoder.isExpired(refresh)) {
        Get.log(
          'Access token expired, refresh token is valid. Attempting to refresh token...',
        );
        try {
          final data = await _authService.refreshToken(refresh);
          Get.log('Token refresh successful.');
          await _saveTokens(data['access'], data['refresh']);
          accessToken.value = data['access'];
          refreshToken.value = data['refresh'];
          Get.offAllNamed('/nav-menu');
        } catch (e) {
          Get.log('Token refresh failed: $e. Logging out.');
          Get.snackbar(
            'Session Expired',
            e.toString(), // Message from AuthService
            snackPosition: SnackPosition.BOTTOM,
            backgroundColor: Colors.redAccent,
            colorText: Colors.white,
          );
          await logoutUser();
        }
      } else {
        Get.log('Both access and refresh tokens expired. Logging out.');
        Get.snackbar(
          'Session Expired',
          'Please log in again.',
          snackPosition: SnackPosition.BOTTOM,
          backgroundColor: Colors.redAccent,
          colorText: Colors.white,
        );
        await logoutUser();
      }
    } else {
      Get.log('No tokens found in storage. Redirecting to login.');
      await logoutUser(); // This will navigate to login screen
    }
  }

  Future<void> _saveTokens(String access, String refresh) async {
    Get.log('Saving tokens to SharedPreferences...');
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('accessToken', access);
    await prefs.setString('refreshToken', refresh);
    Get.log('Tokens saved.');
  }

  Future<Map<String, String?>> _getTokens() async {
    Get.log('Retrieving tokens from SharedPreferences...');
    final prefs = await SharedPreferences.getInstance();
    final access = prefs.getString('accessToken');
    final refresh = prefs.getString('refreshToken');
    Get.log(
      'Tokens retrieved: Access: ${access != null ? 'Present' : 'Absent'}, Refresh: ${refresh != null ? 'Present' : 'Absent'}',
    );
    return {'access': access, 'refresh': refresh};
  }

  Future<void> _clearTokens() async {
    Get.log('Clearing tokens from SharedPreferences...');
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove('accessToken');
    await prefs.remove('refreshToken');
    Get.log('Tokens cleared.');
  }
}
