import 'package:get/get.dart';
import 'package:plant_disease_detection_mobile/features/report/models/disease_info_model.dart';

class DiseaseInfoService {
  static final List<DiseaseInfoModel> _diseases = [
    DiseaseInfoModel(
      diseaseId: "cassava_brown_streak",
      name: "Cassava Brown Streak Disease (CBSD)",
      explanation: "A viral disease that causes yellow or brown streaks on cassava leaves and necrosis in tubers.",
      possibleCauses: "Transmitted by whiteflies or infected planting material.",
      treatment: "Use certified virus-free cassava cuttings (e.g., NASE 14, TME 204), destroy infected plants, and control whiteflies using insecticides like Imidacloprid (Confidor) or organic options like neem oil spray.",
    ),
    DiseaseInfoModel(
      diseaseId: "cassava_bacteria_blight",
      name: "Cassava Bacterial Blight (CBB)",
      explanation: "Leads to wilting, dieback, and watery lesions on cassava leaves.",
      possibleCauses: "Spread via contaminated tools, rain splash, or infected soil.",
      treatment: "Disinfect tools using 10% bleach solution or ethanol; practice crop rotation; apply copper-based bactericides like Kocide 3000 or Nordox 75 WG.",
    ),
    DiseaseInfoModel(
      diseaseId: "corn_common_rust",
      name: "Corn Common Rust",
      explanation: "Fungal infection producing reddish-brown pustules on corn leaves.",
      possibleCauses: "High humidity and wind-spread spores.",
      treatment: "Use resistant corn hybrids (e.g., Pioneer P1197); apply fungicides like Mancozeb (Dithane M-45), Azoxystrobin (Quadris), or Propiconazole (Tilt).",
    ),
    DiseaseInfoModel(
      diseaseId: "corn_healthy",
      name: "Healthy Corn",
      explanation: "No signs of infection, optimal growth and leaf health.",
      possibleCauses: "—",
      treatment: "Maintain health with fertilizers like NPK 15-15-15, and apply preventive foliar sprays such as Seaweed Extract or Biostimulants like Algifol.",
    ),
    DiseaseInfoModel(
      diseaseId: "pepper_bacterial_spot",
      name: "Pepper Bell Bacterial Spot",
      explanation: "Results in dark, water-soaked lesions on leaves and fruit.",
      possibleCauses: "Warm, moist conditions and contaminated seeds.",
      treatment: "Use certified disease-free seeds (e.g., Seminis or Syngenta seeds); apply copper fungicides like Champion 50 WP or Serenade ASO (biological control with *Bacillus subtilis*).",
    ),
    DiseaseInfoModel(
      diseaseId: "potato_early_blight",
      name: "Potato Early Blight",
      explanation: "Characterized by dark spots with concentric rings on older leaves.",
      possibleCauses: "High humidity and warm temperatures.",
      treatment: "Use fungicides like Chlorothalonil (Bravo), Mancozeb (Dithane M-45), or organic products like Serenade (Bacillus-based). Practice crop rotation and remove plant debris.",
    ),
    DiseaseInfoModel(
      diseaseId: "potato_late_blight",
      name: "Potato Late Blight",
      explanation: "Rapid leaf collapse, stem lesions, and mold on leaf undersides.",
      possibleCauses: "Cool, wet environments and infected tubers.",
      treatment: "Apply systemic fungicides such as Ridomil Gold (Metalaxyl + Mancozeb), Revus (Mandipropamid), or Infinito (Fluopicolide + Propamocarb). Remove infected plants immediately.",
    ),
    DiseaseInfoModel(
      diseaseId: "tomato_healthy",
      name: "Healthy Tomato",
      explanation: "Strong foliage, no signs of pests or diseases.",
      possibleCauses: "—",
      treatment: "Maintain with balanced fertilizers (e.g., YaraMila), and apply preventive foliar sprays like potassium bicarbonate or bio-fungicides such as Actinovate.",
    ),
    DiseaseInfoModel(
      diseaseId: "tomato_mosaic_virus",
      name: "Tomato Mosaic Virus (ToMV)",
      explanation: "Mottled leaf color, stunted growth, and misshapen fruits.",
      possibleCauses: "Mechanical transmission or infected seeds.",
      treatment: "Use resistant varieties like 'Heinz 1439' or 'Roma VF'. Disinfect tools with bleach or Virkon S. Remove infected plants promptly. Avoid handling tobacco near crops.",
    ),
  ];


  static DiseaseInfoModel? getDiseaseById(String id) {
    return _diseases.firstWhereOrNull((d) => d.diseaseId == id);
  }

  static String getName(String id) {
    return getDiseaseById(id)?.name ?? 'None';
  }

}
