import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:plant_disease_detection_mobile/features/authentication/controllers/auth_controller.dart';

class SignUpController extends GetxController {
  // Get the instance of AuthController, which handles the actual API calls
  final AuthController authController = Get.find<AuthController>();

  // GlobalKey for the form
  final GlobalKey<FormState> signupFormKey = GlobalKey<FormState>();

  // Text editing controllers for form fields
  final TextEditingController firstName = TextEditingController();
  final TextEditingController lastName = TextEditingController();
  final TextEditingController username = TextEditingController();
  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();
  final TextEditingController confirmPassword = TextEditingController();

  // RxBools for UI state (e.g., password visibility, terms checkbox)
  final RxBool obscurePassword = true.obs;
  final RxBool obscureConfirmPassword = true.obs;
  final RxBool agreeToTerms = false.obs;

  @override
  void onInit() {
    super.onInit();
    // Optional: You can pre-fill some fields for testing or specific scenarios here
  }

  @override
  void onClose() {
    // Dispose all TextEditingControllers when the controller is closed
    firstName.dispose();
    lastName.dispose();
    username.dispose();
    email.dispose();
    password.dispose();
    confirmPassword.dispose();
    super.onClose();
  }

  // Form validation and submission logic
  Future<void> signup() async {
    // Validate form fields
    if (!signupFormKey.currentState!.validate()) {
      return; // Stop if validation fails
    }

    // Check if terms and conditions are agreed
    if (!agreeToTerms.value) {
      Get.snackbar(
        'Accept Privacy Policy',
        'In order to create account, you must accept the Privacy Policy & Terms of Use.',
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.orange,
        colorText: Colors.white,
      );
      return;
    }

    // Check if passwords match
    if (password.text != confirmPassword.text) {
      Get.snackbar(
        'Password Mismatch',
        'The entered passwords do not match. Please re-enter them.',
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.redAccent,
        colorText: Colors.white,
      );
      return;
    }

    // Call the registerUser method from AuthController
    // AuthController will handle isLoading, error messages, and navigation
    await authController.registerUser(
      email: email.text.trim(),
      password: password.text.trim(),
      username: username.text.trim(),
      firstName: firstName.text.trim(),
      lastName: lastName.text.trim(),
    );

    // After successful registration (handled by AuthController's navigation),
    // you might want to clear the form fields
    if (!authController.isLoading.value && !authController.errorMessage.value.isNotEmpty) {
      // Clear fields only if registration was successful and no error occurred
      firstName.clear();
      lastName.clear();
      username.clear();
      email.clear();
      password.clear();
      confirmPassword.clear();
      agreeToTerms.value = false; // Reset checkbox
    }
  }

}