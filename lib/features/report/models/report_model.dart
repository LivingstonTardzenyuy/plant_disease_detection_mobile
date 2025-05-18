// class ReportModel {
//   final String reportId;
//   final String diseaseId; // Use this to link to DiseaseInfo
//   final List<String> imageUrls;
//   final int confidence;
//   final String scanType;
//   final double affectedArea;
//   final DateTime date;
//   final double latitude;
//   final double longitude;
//
//   ReportModel({
//     required this.reportId,
//     required this.diseaseId,
//     required this.imageUrls,
//     required this.confidence,
//     required this.scanType,
//     required this.affectedArea,
//     required this.date,
//     required this.latitude,
//     required this.longitude,
//   });
//
//   factory ReportModel.fromJson(Map<String, dynamic> json) {
//     return ReportModel(
//       reportId: json['reportId'],
//       diseaseId: json['diseaseId'],
//       imageUrls: List<String>.from(json['imageUrls']),
//       confidence: json['confidence'],
//       scanType: json['scanType'],
//       affectedArea: json['affectedArea'],
//       date: DateTime.parse(json['date']),
//       latitude: json['latitude'],
//       longitude: json['longitude'],
//     );
//   }
// }

class ReportModel {
  final String reportId;
  final String scanType; // 'Phone' or 'Drone'
  final DateTime date;

  ReportModel({
    required this.reportId,
    required this.scanType,
    required this.date,
  });
}
