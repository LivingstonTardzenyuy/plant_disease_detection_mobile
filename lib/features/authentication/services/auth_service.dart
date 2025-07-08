import 'package:dio/dio.dart';
import 'package:plant_disease_detection_mobile/utils/services/http/http_client.dart';

class AuthService {
  final Dio _dio = DioClient().dio;

  // Helper method to parse DioException and extract a user-friendly message
  String _parseDioException(DioException error) {
    // Check if there's a response and data in the response
    if (error.response != null && error.response!.data != null) {
      if (error.response!.data is Map) {
        Map<String, dynamic> errorData = error.response!.data;

        // --- Common Django REST Framework (DRF) Error Structures ---

        // 1. Field-specific errors (e.g., {"username": ["exists"], "email": ["invalid"]})
        for (var key in ['username', 'email', 'password', 'first_name', 'last_name', 'detail']) {
          if (errorData.containsKey(key)) {
            final dynamic value = errorData[key];
            if (value is List && value.isNotEmpty) {
              return value.join(', '); // Join messages for multiple issues on one field
            } else if (value is String) {
              return value; // Direct string detail
            }
          }
        }

        // 2. Non-field errors (e.g., {"non_field_errors": ["Passwords do not match"]})
        if (errorData.containsKey('non_field_errors') && errorData['non_field_errors'] is List) {
          final List nonFieldErrors = errorData['non_field_errors'];
          if (nonFieldErrors.isNotEmpty) {
            return nonFieldErrors.join(', ');
          }
        }

        // 3. General 'detail' message (common for 401, 403, 404, etc. from DRF)
        if (errorData.containsKey('detail') && errorData['detail'] is String) {
          return errorData['detail'];
        }

        // Fallback for any other unexpected map structure, try to join all values
        // This can be broad, so better to target specific keys above.
        // return errorData.values.expand((element) => element is List ? element.map((e) => e.toString()) : [element.toString()]).join(', ');
      } else if (error.response!.data is String) {
        // If the error response is just a plain string (less common for DRF)
        return error.response!.data;
      }
    }

    // --- Generic Network/Dio Error Types ---
    if (error.type == DioExceptionType.connectionTimeout) {
      return 'Connection timed out. Please check your internet connection.';
    } else if (error.type == DioExceptionType.receiveTimeout) {
      return 'Server took too long to respond. Please try again.';
    } else if (error.type == DioExceptionType.badResponse) {
      // Includes 4xx, 5xx status codes where data might be null or unrecognized
      return 'Server error: ${error.response?.statusCode ?? 'Unknown'}. Please try again.';
    } else if (error.type == DioExceptionType.unknown) {
      return 'Network error. Please check your internet connection and try again.';
    } else if (error.type == DioExceptionType.cancel) {
      return 'Request was cancelled.';
    } else if (error.type == DioExceptionType.sendTimeout) {
      return 'Failed to send data in time. Please try again.';
    }

    // Default fallback message
    return 'An unexpected error occurred.';
  }

  Future<Map<String, dynamic>> login(String username, String password) async {
    try {
      final response = await _dio.post(
        'users/login/', // Relative path, base URL from DioClient
        data: {'username': username, 'password': password},
      );
      return response.data;
    } on DioException catch (e) {
      // Catch DioException and throw the parsed string message
      throw _parseDioException(e);
    } catch (e) {
      // Catch any other unexpected errors
      throw 'An unknown error occurred during login.';
    }
  }

  Future<Map<String, dynamic>> register(String email, String password, String username, String firstName, String lastName) async {
    try {
      final response = await _dio.post(
        'users/register/', // Relative path, base URL from DioClient
        data: {'email': email, 'password': password, 'username': username, 'first_name': firstName, 'last_name': lastName},
      );
      return response.data;
    } on DioException catch (e) {
      // Catch DioException and throw the parsed string message
      throw _parseDioException(e);
    } catch (e) {
      throw 'An unknown error occurred during registration.';
    }
  }

  Future<Map<String, dynamic>> refreshToken(String refreshToken) async {
    try {
      final response = await _dio.post(
        'users/login/refresh/', // Relative path, base URL from DioClient
        data: {'refresh': refreshToken},
      );
      return response.data;
    } on DioException catch (e) {
      // Catch DioException and throw the parsed string message
      throw _parseDioException(e); // Will return messages like "Token not valid"
    } catch (e) {
      throw 'An unknown error occurred during token refresh.';
    }
  }

  /// New method to fetch user profile data
  Future<Map<String, dynamic>> fetchUserProfile() async {
    try {
      // The Dio interceptor should automatically add the Authorization header
      final response = await _dio.get('users/profile/');
      return response.data;
    } on DioException catch (e) {
      // If fetching profile fails (e.g., token expired, unauthorized)
      // We'll throw the parsed error message
      throw _parseDioException(e);
    } catch (e) {
      throw 'Failed to fetch user profile.';
    }
  }
}