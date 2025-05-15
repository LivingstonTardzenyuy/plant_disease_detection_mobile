class Report {
  final String imageUrl;
  final String disease;
  final String scanType; // "Drone" or "Phone"
  final double confidence;
  final DateTime date;

  Report({
    required this.imageUrl,
    required this.disease,
    required this.scanType,
    required this.confidence,
    required this.date,
  });

  static final List<Report> reports = [
    Report(
      imageUrl:
      "assets/images/leaves_images/Cassava__brown_streak_disease.jpeg",
      disease: "Cassava Brown Streak Disease",
      scanType: "Phone",
      confidence: 94,
      date: DateTime.now().subtract(const Duration(days: 1)),
    ),
    Report(
      imageUrl: "assets/images/leaves_images/cassava_bacteria_blight.jpeg",
      disease: "Cassava Bacteria Blight",
      scanType: "Drone",
      confidence: 88,
      date: DateTime.now().subtract(const Duration(days: 3)),
    ),
    Report(
      imageUrl: "assets/images/leaves_images/Corn__common_rust.jpeg",
      disease: "Corn Common Rust",
      scanType: "Phone",
      confidence: 99,
      date: DateTime.now().subtract(const Duration(days: 6)),
    ),
    Report(
      imageUrl: "assets/images/leaves_images/Corn__healthy.jpeg",
      disease: "Corn Healthy",
      scanType: "Phone",
      confidence: 90,
      date: DateTime.now().subtract(const Duration(days: 6)),
    ),
    Report(
      imageUrl:
      "assets/images/leaves_images/Pepper_bell__bacterial_spot.jpeg",
      disease: "Pepper Bell Bacterial Spot",
      scanType: "Phone",
      confidence: 92,
      date: DateTime.now().subtract(const Duration(days: 6)),
    ),
    Report(
      imageUrl: "assets/images/leaves_images/Potato__early_blight.jpeg",
      disease: "Potato Early Blight",
      scanType: "Phone",
      confidence: 95,
      date: DateTime.now().subtract(const Duration(days: 6)),
    ),
    Report(
      imageUrl: "assets/images/leaves_images/Potato__late_blight.webp",
      disease: "Potato Late Blight",
      scanType: "Phone",
      confidence: 89,
      date: DateTime.now().subtract(const Duration(days: 6)),
    ),
    Report(
      imageUrl: "assets/images/leaves_images/Tomato__healthy.jpeg",
      disease: "Tomato Healthy",
      scanType: "Phone",
      confidence: 99,
      date: DateTime.now().subtract(const Duration(days: 6)),
    ),
    Report(
      imageUrl: "assets/images/leaves_images/Tomato__mosaic_virus.jpeg",
      disease: "Tomato Mosaic Virus",
      scanType: "Phone",
      confidence: 90,
      date: DateTime.now().subtract(const Duration(days: 6)),
    ),
  ];
}