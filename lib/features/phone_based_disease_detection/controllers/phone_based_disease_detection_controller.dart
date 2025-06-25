import 'dart:io';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:intl/intl.dart';
import 'package:path_provider/path_provider.dart';

class PhoneBasedDiseaseDetectionController extends GetxController {
  final Rx<File?> selectedImage = Rx<File?>(null);
  final RxBool isLoading = false.obs;

  final ImagePicker _picker = ImagePicker();

  Future<void> pickImage(ImageSource source) async {
    final pickedFile = await _picker.pickImage(source: source);

    if (pickedFile != null) {
      final croppedFile = await ImageCropper().cropImage(
        sourcePath: pickedFile.path,
        aspectRatio: const CropAspectRatio(ratioX: 1, ratioY: 1),
        compressFormat: ImageCompressFormat.jpg,
        maxWidth: 224,
        maxHeight: 224,
        uiSettings: [
          AndroidUiSettings(
            toolbarTitle: 'Crop Image',
            initAspectRatio: CropAspectRatioPreset.square,
            lockAspectRatio: true,
          ),
          IOSUiSettings(
            title: 'Crop Image',
            aspectRatioLockEnabled: true,
          )
        ],
      );

      if (croppedFile != null) {
        selectedImage.value = File(croppedFile.path);
      }
    }
  }

  void clearImage() {
    selectedImage.value = null;
  }

  // Future<void> submitImageForDiagnosis() async {
  //   if (selectedImage.value == null) return;
  //
  //   isLoading.value = true;
  //
  //   // Simulate backend upload
  //   await Future.delayed(const Duration(seconds: 2));
  //
  //   isLoading.value = false;
  //
  //   Get.snackbar("Scan Submitted", "Your scan is being processed.");
  // }

  Future<void> submitImageForDiagnosis() async {
    if (selectedImage.value == null) return;

    isLoading.value = true;

    try {
      // Get app's document directory (permanent storage)
      final Directory appDocDir = await getApplicationDocumentsDirectory();

      // Create a unique filename based on timestamp
      final String timestamp = DateFormat('yyyyMMdd_HHmmss').format(DateTime.now());
      final String fileName = 'diagnosis_$timestamp.jpg';

      // Create destination file path
      final String newPath = '${appDocDir.path}/$fileName';

      // Copy the file
      final File savedImage = await selectedImage.value!.copy(newPath);

      // Simulate backend upload
      await Future.delayed(const Duration(seconds: 2));

      // Notify user and show the saved path
      Get.snackbar("Scan Submitted", "Image saved at:\n$newPath");
      print("Image saved at:\n$newPath");

      // Optionally: clear the selected image
      selectedImage.value = null;
    } catch (e) {
      Get.snackbar("Error", "Failed to save image: $e");
    } finally {
      isLoading.value = false;
    }
  }
}
