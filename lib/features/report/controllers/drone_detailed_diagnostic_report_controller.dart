import 'package:get/get.dart';

class DroneDetailedDiagnosticReportController extends GetxController {
  var currentCarouselIndex = 0.obs;

  void updateIndex(int index) => currentCarouselIndex.value = index;
}
