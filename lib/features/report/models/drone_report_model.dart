import 'package:plant_disease_detection_mobile/common/models/Geo_point_model.dart';
import 'package:plant_disease_detection_mobile/features/report/models/report_model.dart';

class DroneSubReportModel {
  final String diseaseId;
  final List<String> imageUrls; // All drone images where this disease was found
  final double averageConfidence;
  final List<GeoPointModel> locations;

  DroneSubReportModel({
    required this.diseaseId,
    required this.imageUrls,
    required this.averageConfidence,
    required this.locations,
  }); // GPS locations where disease was found
}

class DroneScanReportModel extends ReportModel {
  final List<DroneSubReportModel> subReports;
  final int totalImagesScanned;

  DroneScanReportModel({
    required this.subReports,
    required this.totalImagesScanned,
    required super.reportId,
    required super.scanType,
    required super.date,
  });
}
