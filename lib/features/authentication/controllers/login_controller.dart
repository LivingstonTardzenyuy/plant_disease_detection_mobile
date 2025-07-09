import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:plant_disease_detection_mobile/features/authentication/controllers/auth_controller.dart';

class LoginController extends GetxController {
  // Get the instance of AuthController for actual login API call
  final AuthController authController = Get.find<AuthController>();

  // GlobalKey for the form
  final GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();

  // Text editing controllers for form fields
  final TextEditingController username = TextEditingController();
  final TextEditingController password = TextEditingController();

  // RxBools for UI state (e.g., password visibility, remember me)
  final RxBool obscurePassword = true.obs;
  final RxBool rememberMe = false.obs; // Initialize to false

  @override
  void onInit() {
    super.onInit();
    // Optional: Load saved credentials if 'Remember Me' was checked previously
    // This requires implementing a saving mechanism (e.g., SharedPreferences)
    // For now, it's just initialized to false.
  }

  @override
  void onClose() {
    // Dispose controllers to free up resources
    username.dispose();
    password.dispose();
    super.onClose();
  }

  // Login submission logic
  Future<void> signIn() async {
    // Validate form fields
    if (!loginFormKey.currentState!.validate()) {
      return; // Stop if validation fails
    }

    // You can optionally save 'rememberMe' state here if needed
    // if (rememberMe.value) {
    //   // Save email and password (carefully, not recommended for real passwords)
    //   // Or just save a flag that user wants to be remembered.
    // } else {
    //   // Clear saved credentials
    // }

    // Call the loginUser method from AuthController
    await authController.loginUser(
      username.text.trim(),
      password.text.trim(),
    );

    // After successful login, you might want to clear the password field for security
    // The AuthController already handles navigation on success.
    if (!authController.isLoading.value && !authController.errorMessage.value.isNotEmpty) {
      password.clear(); // Clear password field on successful login
    }
  }
}