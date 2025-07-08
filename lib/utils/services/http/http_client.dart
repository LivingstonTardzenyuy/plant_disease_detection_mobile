import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:get/get.dart';
import 'package:jwt_decoder/jwt_decoder.dart';

class DioClient {
  static final DioClient _instance = DioClient._internal();
  factory DioClient() => _instance;
  late final Dio dio;

  static const String baseUrl =
      'https://backend-plant-disease-detection.onrender.com/api/';

  DioClient._internal() {
    dio = Dio(BaseOptions(baseUrl: baseUrl));
    dio.interceptors.add(
      InterceptorsWrapper(
        onRequest: (options, handler) async {
          final prefs = await SharedPreferences.getInstance();
          final accessToken = prefs.getString('accessToken');
          if (accessToken != null && accessToken.isNotEmpty) {
            options.headers['Authorization'] = 'Bearer $accessToken';
          }
          return handler.next(options);
        },
        onError: (DioException error, handler) async {
          final prefs = await SharedPreferences.getInstance();
          final refreshToken = prefs.getString('refreshToken');
          final requestOptions = error.requestOptions;
          // Only try to refresh if 401, not for login/refresh endpoints
          if (error.response?.statusCode == 401 &&
              !requestOptions.path.contains('/users/login') &&
              !requestOptions.path.contains('/users/register')) {
            if (refreshToken != null &&
                refreshToken.isNotEmpty &&
                !JwtDecoder.isExpired(refreshToken)) {
              try {
                final response = await dio.post(
                  'users/login/refresh/',
                  data: {'refresh': refreshToken},
                  options: Options(headers: {'Authorization': null}),
                );
                final newAccess = response.data['access'];
                final newRefresh = response.data['refresh'];
                await prefs.setString('accessToken', newAccess);
                await prefs.setString('refreshToken', newRefresh);
                // Retry original request with new token
                requestOptions.headers['Authorization'] = 'Bearer $newAccess';
                final cloneReq = await dio.fetch(requestOptions);
                return handler.resolve(cloneReq);
              } catch (e) {
                // Token refresh failed, log out
                await prefs.remove('accessToken');
                await prefs.remove('refreshToken');
                Get.offAllNamed('/login');
                return handler.reject(error);
              }
            } else {
              // No valid refresh token, log out
              await prefs.remove('accessToken');
              await prefs.remove('refreshToken');
              Get.offAllNamed('/login');
              return handler.reject(error);
            }
          }
          return handler.next(error);
        },
      ),
    );
  }
}
