import 'package:plant_disease_detection_mobile/common/models/Geo_point_model.dart';
import 'package:plant_disease_detection_mobile/features/report/models/drone_report_model.dart';

class DroneReportService {
  static final List<DroneScanReportModel> reports = [
    DroneScanReportModel(
      reportId: "d1",
      scanType: "Drone",
      date: DateTime.now().subtract(const Duration(days: 2)),
      totalImagesScanned: 50,
      subReports: [
        DroneSubReportModel(
          diseaseId: "cassava_bacteria_blight",

          imageUrls: [
            "assets/images/leaves_images/cassava_bacteria_blight.jpeg",
            "assets/images/leaves_images/cassava_bacteria_blight.jpeg",
          ],
          averageConfidence: 87.5,
          locations: [
            GeoPointModel(lat: 5.5900, lon: -0.1850),
            GeoPointModel(lat: 5.5920, lon: -0.1840),
          ],
        ),
      ],
    ),
    DroneScanReportModel(
      reportId: "d2",
      scanType: "Drone",
      date: DateTime.now().subtract(const Duration(days: 4)),
      totalImagesScanned: 30,
      subReports: [
        DroneSubReportModel(
          diseaseId: "corn_common_rust",
          imageUrls: [
            "assets/images/leaves_images/Corn__common_rust.jpeg",
            "assets/images/leaves_images/Corn__common_rust.jpeg",
            "assets/images/leaves_images/Corn__common_rust.jpeg",
          ],
          averageConfidence: 91.2,
          locations: [
            GeoPointModel(lat: 5.5950, lon: -0.1890),
            GeoPointModel(lat: 5.5965, lon: -0.1902),
          ],
        ),
      ],
    ),
    DroneScanReportModel(
      reportId: "d3",
      scanType: "Drone",
      date: DateTime.now().subtract(const Duration(days: 6)),
      totalImagesScanned: 40,
      subReports: [
        DroneSubReportModel(
          diseaseId: "potato_late_blight",
          imageUrls: [
            "assets/images/leaves_images/Potato__late_blight.webp",
            "assets/images/leaves_images/Potato__late_blight.webp",
          ],
          averageConfidence: 88.3,
          locations: [
            GeoPointModel(lat: 5.6001, lon: -0.1920),
            GeoPointModel(lat: 5.6022, lon: -0.1935),
          ],
        ),
        DroneSubReportModel(
          diseaseId: "potato_early_blight",
          imageUrls: ["assets/images/leaves_images/Potato__early_blight.jpeg"],
          averageConfidence: 84.0,
          locations: [GeoPointModel(lat: 5.6030, lon: -0.1950)],
        ),
      ],
    ),
    DroneScanReportModel(
      reportId: "d4",
      scanType: "Drone",
      date: DateTime.now().subtract(const Duration(days: 8)),
      totalImagesScanned: 20,
      subReports: [
        DroneSubReportModel(
          diseaseId: "tomato_mosaic_virus",
          imageUrls: ["assets/images/leaves_images/Tomato__mosaic_virus.jpeg"],
          averageConfidence: 92.0,
          locations: [GeoPointModel(lat: 5.5970, lon: -0.1805)],
        ),
      ],
    ),
    DroneScanReportModel(
      reportId: "d5",
      scanType: "Drone",
      date: DateTime.now().subtract(const Duration(days: 10)),
      totalImagesScanned: 35,
      subReports: [
        DroneSubReportModel(
          diseaseId: "pepper_bacterial_spot",
          imageUrls: [
            "assets/images/leaves_images/Pepper_bell__bacterial_spot.jpeg",
            "assets/images/leaves_images/Pepper_bell__bacterial_spot.jpeg",
          ],
          averageConfidence: 86.7,
          locations: [
            GeoPointModel(lat: 5.5990, lon: -0.1855),
            GeoPointModel(lat: 5.6010, lon: -0.1868),
          ],
        ),
      ],
    ),
    DroneScanReportModel(
      reportId: "d6",
      scanType: "Drone",
      date: DateTime.now().subtract(const Duration(days: 12)),
      totalImagesScanned: 60,
      subReports: [
        DroneSubReportModel(
          diseaseId: "cassava_brown_streak",
          imageUrls: [
            "assets/images/leaves_images/Cassava__brown_streak_disease.jpeg",
            "assets/images/leaves_images/Cassava__brown_streak_disease.jpeg",
            "assets/images/leaves_images/Cassava__brown_streak_disease.jpeg",
          ],
          averageConfidence: 90.1,
          locations: [
            GeoPointModel(lat: 5.6045, lon: -0.1820),
            GeoPointModel(lat: 5.6055, lon: -0.1832),
          ],
        ),
      ],
    ),
  ];
}
