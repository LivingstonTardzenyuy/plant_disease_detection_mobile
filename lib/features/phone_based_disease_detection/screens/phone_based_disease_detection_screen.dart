import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:image_picker/image_picker.dart';
import 'package:plant_disease_detection_mobile/common/widgets/appbar/appbar.dart';
import 'package:plant_disease_detection_mobile/common/widgets/images/rounded_images.dart';
import 'package:plant_disease_detection_mobile/common/widgets/texts/section_heading.dart';
import 'package:plant_disease_detection_mobile/features/phone_based_disease_detection/controllers/phone_based_disease_detection_controller.dart';
import 'package:plant_disease_detection_mobile/utils/constants/colors.dart';
import 'package:plant_disease_detection_mobile/utils/constants/image_strings.dart';
import 'package:plant_disease_detection_mobile/utils/constants/sizes.dart';

class PhoneBasedDiseaseDetectionScreen extends StatelessWidget {
  PhoneBasedDiseaseDetectionScreen({super.key});

  final PhoneBasedDiseaseDetectionController controller = Get.put(
    PhoneBasedDiseaseDetectionController(),
  );

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return Scaffold(
        appBar: TAppBar(
          showBackArrow: false,
          title: Text(
            "Scan",
            style: Theme.of(
              context,
            ).textTheme.headlineMedium!.apply(color: TColors.white),
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(TSizes.defaultSpace),
            child:
                controller.selectedImage.value == null
                    ? BuildInstructions()
                    : BuildPreview(),
          ),
        ),
      );
    });
  }

  Widget _buildInstructions(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "📸 How to Take a Good Scan",
          style: Theme.of(context).textTheme.titleMedium,
        ),
        const SizedBox(height: TSizes.sm),
        const Text("• Ensure proper lighting."),
        const Text("• Focus on a single infected leaf."),
        const Text("• Avoid blurry or distant shots."),
        const SizedBox(height: TSizes.spaceBtwItems),
        Center(
          child: Image.asset(TImages.phoneScanInstructionImage, height: 200),
        ),
        const SizedBox(height: TSizes.spaceBtwSections),
        ElevatedButton.icon(
          onPressed: () => controller.pickImage(ImageSource.camera),
          icon: const Icon(Icons.camera_alt),
          label: const Text("Take Photo"),
        ),
        const SizedBox(height: TSizes.sm),
        OutlinedButton.icon(
          onPressed: () => controller.pickImage(ImageSource.gallery),
          icon: const Icon(Icons.photo_library),
          label: const Text("Select from Gallery"),
        ),
      ],
    );
  }

  Widget _buildPreview(BuildContext context) {
    final File? image = controller.selectedImage.value;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        TRoundedImage(imageUrl: image!.path, width: double.infinity),
        const SizedBox(height: TSizes.spaceBtwItems),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            OutlinedButton.icon(
              onPressed: controller.clearImage,
              icon: const Icon(Icons.refresh),
              label: const Text("Retake"),
            ),
            ElevatedButton.icon(
              onPressed:
                  controller.isLoading.value
                      ? null
                      : controller.submitImageForDiagnosis,
              icon:
                  controller.isLoading.value
                      ? const CircularProgressIndicator()
                      : const Icon(Icons.send),
              label: const Text("Scan Now"),
            ),
          ],
        ),
      ],
    );
  }
}

class BuildInstructions extends StatelessWidget {
  const BuildInstructions({super.key});

  @override
  Widget build(BuildContext context) {
    final PhoneBasedDiseaseDetectionController controller =
        Get.find<PhoneBasedDiseaseDetectionController>();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        /// --- Instruction Title
        TSectionHeading(
          title: "📸 How to Take a Good Scan",
          showActionButton: false,
        ),
        const SizedBox(height: TSizes.md),

        /// --- Instructions List
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            InstructionItem(text: "Ensure proper lighting."),
            SizedBox(height: TSizes.sm),
            InstructionItem(text: "Focus on a single leaf or affected area."),
            SizedBox(height: TSizes.sm),
            InstructionItem(text: "Center the infected part in the frame."),
            SizedBox(height: TSizes.sm),
            InstructionItem(text: "Avoid blurry or distant shots."),
            SizedBox(height: TSizes.sm),
            InstructionItem(text: "Hold the phone steady while capturing."),
          ],
        ),
        const SizedBox(height: TSizes.spaceBtwSections),

        /// ----- Illustration Image
        Center(
          child: Image.asset(TImages.phoneScanInstructionImage, height: 200),
        ),
        const SizedBox(height: TSizes.spaceBtwSections),

        /// --- Take Photo using Camera
        SizedBox(
          width: double.infinity,
          child: ElevatedButton.icon(
            onPressed: () => controller.pickImage(ImageSource.camera),
            icon: const Icon(Icons.camera_alt),
            label: Text("Take Photo"),
          ),
        ),
        SizedBox(height: TSizes.spaceBtwItems),

        /// Select Image from Gallery
        SizedBox(
          width: double.infinity,
          child: OutlinedButton.icon(
            onPressed: () => controller.pickImage(ImageSource.gallery),
            icon: const Icon(Icons.photo_library),
            label: Text("Select from Gallery"),
          ),
        ),
        SizedBox(height: TSizes.spaceBtwItems),
      ],
    );
  }
}

class BuildPreview extends StatelessWidget {
  const BuildPreview({super.key});

  @override
  Widget build(BuildContext context) {
    final PhoneBasedDiseaseDetectionController controller =
        Get.find<PhoneBasedDiseaseDetectionController>();

    final File? image = controller.selectedImage.value;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        TRoundedImage(
          imageUrl: image!.path,
          width: double.infinity,
          isFileImage: true,
            borderRadius: 0,
        ),
        const SizedBox(height: TSizes.spaceBtwSections),
        Row(
          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              child: OutlinedButton.icon(
                onPressed: controller.clearImage,
                icon: const Icon(Icons.refresh),
                label: const Text("Retake"),
              ),
            ),
            SizedBox(width: TSizes.spaceBtwItems),
            Expanded(
              child: ElevatedButton.icon(
                onPressed:
                    controller.isLoading.value
                        ? null
                        : controller.submitImageForDiagnosis,
                icon:
                    controller.isLoading.value
                        ? const CircularProgressIndicator()
                        : const Icon(Icons.send),
                label: const Text("Scan Now"),
              ),
            ),
          ],
        ),
      ],
    );
  }
}


class InstructionItem extends StatelessWidget {
  final String text;

  const InstructionItem({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: TSizes.md),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Icon(Icons.check_circle, size: 20, color: TColors.success),
          const SizedBox(width: 8),
          Expanded(
            child: Text(text, style: Theme.of(context).textTheme.bodyMedium),
          ),
        ],
      ),
    );
  }
}

