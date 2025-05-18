import 'package:plant_disease_detection_mobile/common/models/Geo_point_model.dart';
import 'package:plant_disease_detection_mobile/features/report/models/report_model.dart';

class PhoneScanReportModel extends ReportModel {
  final String diseaseId;
  final String imageUrl;
  final int confidence;
  final GeoPointModel? location;

  PhoneScanReportModel({
    required super.reportId,
    required super.scanType,
    required super.date,
    required this.diseaseId,
    required this.imageUrl,
    required this.confidence,
    required this.location,
  });
}
