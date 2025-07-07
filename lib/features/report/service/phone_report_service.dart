import 'package:plant_disease_detection_mobile/common/models/Geo_point_model.dart';
import 'package:plant_disease_detection_mobile/features/report/models/phone_report_model.dart';

class PhoneReportService {
  static final List<PhoneScanReportModel> reports = [
    PhoneScanReportModel(
      reportId: "r1",
      diseaseId: "Cassava__brown_streak_disease",
      imageUrl:
          "assets/images/leaves_images/Cassava__brown_streak_disease.jpeg",
      scanType: "Phone",
      confidence: 94,
      date: DateTime.now().subtract(const Duration(days: 1)),
      location: GeoPointModel(lat: 5.6037, lon: -0.1870),
    ),
    PhoneScanReportModel(
      reportId: "r2",
      diseaseId: "Cassava__bacteria_blight_disease",
      imageUrl: "assets/images/leaves_images/cassava_bacteria_blight.jpeg",
      scanType: "Phone",
      confidence: 88,
      date: DateTime.now().subtract(const Duration(days: 3)),
      location: GeoPointModel(lat: 5.5937, lon: -0.1900),
    ),
    PhoneScanReportModel(
      reportId: "r3",
      diseaseId: "Corn__common_rust",
      imageUrl: "assets/images/leaves_images/Corn__common_rust.jpeg",
      scanType: "Phone",
      confidence: 99,
      date: DateTime.now().subtract(const Duration(days: 6)),
      location: GeoPointModel(lat: 5.6130, lon: -0.2001),
    ),
    PhoneScanReportModel(
      reportId: "r4",
      diseaseId: "Corn__healthy",
      imageUrl: "assets/images/leaves_images/Corn__healthy.jpeg",
      scanType: "Phone",
      confidence: 90,
      date: DateTime.now().subtract(const Duration(days: 6)),
      location: GeoPointModel(lat: 5.6040, lon: -0.1850),
    ),
    PhoneScanReportModel(
      reportId: "r5",
      diseaseId: "Pepper_bell__bacterial_spot",
      imageUrl: "assets/images/leaves_images/Pepper_bell__bacterial_spot.jpeg",
      scanType: "Phone",
      confidence: 92,
      date: DateTime.now().subtract(const Duration(days: 6)),
      location: GeoPointModel(lat: 5.6011, lon: -0.1890),
    ),
    PhoneScanReportModel(
      reportId: "r6",
      diseaseId: "Potato__early_blight",
      imageUrl: "assets/images/leaves_images/Potato__early_blight.jpeg",
      scanType: "Phone",
      confidence: 95,
      date: DateTime.now().subtract(const Duration(days: 6)),
      location: GeoPointModel(lat: 5.6111, lon: -0.1880),
    ),
    PhoneScanReportModel(
      reportId: "r7",
      diseaseId: "Potato__late_blight",
      imageUrl: "assets/images/leaves_images/Potato__late_blight.webp",
      scanType: "Phone",
      confidence: 89,
      date: DateTime.now().subtract(const Duration(days: 6)),
      location: GeoPointModel(lat: 5.6140, lon: -0.1830),
    ),
    PhoneScanReportModel(
      reportId: "r8",
      diseaseId: "Tomato__healthy",
      imageUrl: "assets/images/leaves_images/Tomato__healthy.jpeg",
      scanType: "Phone",
      confidence: 99,
      date: DateTime.now().subtract(const Duration(days: 6)),
      location: GeoPointModel(lat: 5.6067, lon: -0.1811),
    ),
    PhoneScanReportModel(
      reportId: "r9",
      diseaseId: "Tomato__mosaic_virus",
      imageUrl: "assets/images/leaves_images/Tomato__mosaic_virus.jpeg",
      scanType: "Phone",
      confidence: 90,
      date: DateTime.now().subtract(const Duration(days: 6)),
      location: GeoPointModel(lat: 5.6099, lon: -0.1901),
    ),
  ];
}
