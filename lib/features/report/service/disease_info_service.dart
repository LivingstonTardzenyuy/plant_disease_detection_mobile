import 'package:get/get.dart';
import 'package:plant_disease_detection_mobile/features/report/models/disease_info_model.dart';

class DiseaseInfoService {
  static final List<DiseaseInfoModel> _diseases = [
    DiseaseInfoModel(
      diseaseId: "Apple__black_rot",
      name: "Apple Black Rot",
      explanation: "Apple Black Rot is a fungal disease caused by Botryosphaeria obtusa. It affects leaves, fruit, and branches, leading to:\n\n"
          "- **Leaf spots:** Small purple spots enlarging to brown lesions.\n"
          "- **Fruit rot:** Begins as a small purple spot, expanding to a black, mummified fruit, often with concentric rings.\n"
          "- **Cankers:** Sunken, discolored areas on branches, which can girdle and kill limbs. Infected fruit often shrivels and remains on the tree.",
      possibleCauses: "The fungus overwinters in:\n\n"
          "- Mummified fruit (on tree or ground).\n"
          "- Cankers on branches.\n"
          "- Dead wood near the orchard.\n\n"
          "Spores are spread by rain splash, wind, and insects, especially during warm, humid weather (>20°C and wet). Wounds from hail, insects, or pruning facilitate infection.",
      treatment: "1.  **Sanitation:**\n\n"
          "- Remove and destroy all mummified fruits (both on the tree and on the ground).\n"
          "- Prune out cankered and dead branches during dormancy (winter) and burn or dispose of them away from the orchard.\n\n"
          "2.  **Fungicides:**\n\n"
          "- Apply protective fungicides like Captan, Mancozeb, or Flint (Trifloxystrobin).\n"
          "- Start applications at green tip and continue through summer cover sprays, typically every 7-14 days depending on product label and weather.\n"
          "- Rotate fungicides to prevent resistance.\n\n"
          "3.  **Pruning:**\n\n"
          "- Ensure good air circulation by proper pruning to reduce humidity within the canopy.\n\n"
          "4.  **Wound Protection:**\n\n"
          "- Protect trees from mechanical injuries and insect damage, as wounds are entry points for the fungus.",
    ),
    DiseaseInfoModel(
      diseaseId: "Apple__healthy",
      name: "Healthy Apple Tree",
      explanation: "A healthy apple tree exhibits:\n\n"
          "- **Robust Growth:** Strong, vigorous shoots and branches.\n"
          "- **Vibrant Leaves:** Deep green color, full size, without discoloration, spots, or distortions.\n"
          "- **Clean Fruit:** Well-formed, blemish-free fruit with good color and texture.\n\n"
          "There are no visible signs of fungal growth, insect damage, cankers, or deformities. Leaves are fully expanded and turgid, indicating good hydration.",
      possibleCauses: "—", // No specific 'cause' for being healthy, but good cultural practices ensure it.
      treatment: "1.  **Balanced Nutrition:**\n\n"
          "- Provide appropriate fertilizers (e.g., NPK 10-10-10 or a balanced fruit tree fertilizer) based on soil test results and tree age.\n\n"
          "2.  **Adequate Watering:**\n\n"
          "- Ensure consistent moisture, especially during dry periods and fruit development.\n"
          "- Prefer drip irrigation or soaker hoses to avoid wetting foliage, which can encourage diseases.\n\n"
          "3.  **Proper Pruning:**\n\n"
          "- Prune annually (dormant pruning in winter) to maintain tree shape, remove dead/diseased wood, improve light penetration, and ensure good air circulation.\n\n"
          "4.  **Pest and Disease Monitoring:**\n\n"
          "- Regularly inspect trees for early signs of pests or diseases.\n"
          "- Address issues promptly using integrated pest management (IPM) principles.\n\n"
          "5.  **Weed Control:**\n\n"
          "- Manage weeds around the tree base to reduce competition for nutrients and water.\n\n"
          "6.  **Preventive Measures:**\n\n"
          "- Consider dormant oil sprays for overwintering pests/eggs if needed.\n"
          "- Apply dormant copper sprays for general fungal suppression if desired, following label instructions.",
    ),
    DiseaseInfoModel(
      diseaseId: "Apple__rust",
      name: "Apple Rust (e.g., Cedar Apple Rust)",
      explanation: "Apple Rust (e.g., Cedar Apple Rust, Gymnosporangium juniperi-virginianae) is a fungal disease requiring two hosts: an apple/crabapple tree and a juniper/cedar tree.\n\n"
          "- **On Apple Leaves:** Causes bright orange-yellow spots (lesions) that later develop small, black dots (pycnia). These lesions may become raised and produce tiny tube-like structures on the underside.\n"
          "- **On Fruit:** Leads to orange lesions that can cause distortion and make the fruit unmarketable.\n"
          "- **On Branches:** Less common, but cankers may form.\n\n"
          "On juniper/cedar, it causes distinctive woody galls that produce gelatinous orange spore horns in spring.",
      possibleCauses: "The disease cycle is reliant on both hosts:\n\n"
          "- **Spore Release:** Spores (basidiospores) from gelatinous galls on juniper/cedar trees are released in spring during wet periods (rain, dew) and carried by wind to apple trees.\n"
          "- **Infection:** Spores infect young apple leaves, fruit, and twigs. Lesions develop over several weeks.\n"
          "- **Return to Juniper:** Spores (aeciospores) produced on infected apple tissue are then carried back by wind to infect juniper/cedar hosts, completing the cycle.\n\n"
          "Proximity (within a few hundred meters) to infected juniper/cedar trees is the primary cause.",
      treatment: "1.  **Remove Juniper/Cedar Hosts:**\n\n"
          "- The most effective long-term solution is to remove susceptible juniper/cedar trees within a few hundred meters (approx. 400m / quarter-mile) of the apple orchard. This breaks the disease cycle.\n\n"
          "2.  **Resistant Varieties:**\n\n"
          "- Plant rust-resistant apple varieties (e.g., 'Liberty', 'Prima', 'Redfree', 'Enterprise', 'William's Pride', 'Honeycrisp').\n\n"
          "3.  **Fungicides:**\n\n"
          "- Apply fungicides such as Myclobutanil (e.g., Immunox), Propiconazole (e.g., Tilt), Fenarimol, or Mancozeb.\n"
          "- Start applications at bud break (tight cluster to pink bud stage) and continue through early fruit development, typically every 7-14 days depending on product label and prevailing weather conditions (especially during wet periods).\n"
          "- Timing is crucial to protect new, susceptible growth.\n\n"
          "4.  **Pruning Galls:**\n\n"
          "- If removing host trees isn't feasible, prune and destroy galls from nearby juniper/cedar trees before they produce spores in spring (late winter/early spring).",
    ),
    DiseaseInfoModel(
      diseaseId: "Apple__scab",
      name: "Apple Scab",
      explanation: "Apple Scab (Venturia inaequalis) is a very common fungal disease affecting leaves, fruit, twigs, and blossoms.\n\n"
          "- **On Leaves:** Causes olive-green to brown, velvety spots that become darker and more defined over time. Severely infected leaves may yellow, crinkle, and drop prematurely.\n"
          "- **On Fruit:** Lesions are circular, olive-green at first, turning brown/black and corky. They often cause cracks and distortions, making the fruit unmarketable. Early fruit infection can lead to fruit drop.\n"
          "- **On Twigs:** Lesions can cause small, blister-like spots that eventually become cankers.",
      possibleCauses: "The fungus overwinters in:\n\n"
          "- Fallen infected leaves and twigs on the orchard floor.\n\n"
          "In spring, primary spores (ascospores) are released from fallen leaves during wet periods and carried by wind to new growth. Subsequent secondary infections (conidia) spread rapidly during cool, wet conditions (rain, dew, high humidity), leading to rapid disease progression.",
      treatment: "1.  **Sanitation:**\n\n"
          "- Rake and destroy (burn, bury, or compost hot) all fallen leaves in autumn after leaf drop. This is crucial to reduce overwintering inoculum.\n"
          "- Flail mowing or applying urea to fallen leaves can also help decompose them faster.\n\n"
          "2.  **Resistant Varieties:**\n\n"
          "- Plant scab-resistant apple varieties (e.g., 'Liberty', 'Prima', 'Enterprise', 'GoldRush', 'Honeycrisp', 'CrimsonCrisp'). This is the most effective long-term strategy.\n\n"
          "3.  **Fungicides:**\n\n"
          "- Apply fungicides such as Myclobutanil (e.g., Immunox), Captan, Mancozeb, or Flint (Trifloxystrobin).\n"
          "- Start applications at green tip and continue through cover sprays, especially during wet periods and throughout the primary infection period (spring).\n"
          "- Follow product labels for rates and intervals. Rotate fungicides to prevent resistance.\n\n"
          "4.  **Pruning:**\n\n"
          "- Prune trees for good air circulation and light penetration to help leaves dry faster, reducing infection risk.\n\n"
          "5.  **Dormant Applications:**\n\n"
          "- While less effective than leaf removal, a dormant copper spray can help reduce some overwintering spores.",
    ),
    DiseaseInfoModel(
      diseaseId: "Cassava__bacterial_blight",
      name: "Cassava Bacterial Blight (CBB)",
      explanation: "Cassava Bacterial Blight (CBB) is a destructive disease caused by the bacterium *Xanthomonas axonopodis pv. manihotis*. It affects leaves, stems, and sometimes roots.\n\n"
          "- **Leaf Symptoms:** Angular, water-soaked leaf spots that enlarge and coalesce, forming large blighted areas.\n"
          "- **Vein Browning:** Veins turn brown to black, a characteristic symptom often accompanied by bacterial ooze (yellowish liquid).\n"
          "- **Wilting and Dieback:** Leaves may wilt and eventually die off, leading to defoliation. Stems can experience dieback, where the tips shrivel and blacken.",
      possibleCauses: "The bacterium is primarily spread through:\n\n"
          "- **Infected Planting Material:** Using cuttings from diseased plants is the most common and effective means of dissemination.\n"
          "- **Rain Splash & Wind:** Rain can splash bacteria from infected leaves to healthy ones or to the soil. Wind can also carry infected aerosols.\n"
          "- **Contaminated Tools:** Farm tools (machetes, hoes) can spread the bacteria when used on infected and then healthy plants.\n"
          "- **Soil Contamination:** The bacterium can survive in the soil or in infected plant debris. \n\n"
          "Warm, humid conditions and heavy rainfall highly favor disease development and spread.",
      treatment: "1.  **Use Clean Planting Material:**\n\n"
          "- Plant only certified disease-free cassava cuttings. This is the single most critical control measure.\n\n"
          "2.  **Sanitation:**\n\n"
          "- Disinfect farm tools (machetes, hoes, pruning shears) regularly with a 10% bleach solution or 70% alcohol, especially when moving between fields or plants.\n"
          "- Remove and destroy (burn or bury deeply) all infected plant debris and severely diseased plants to reduce inoculum.\n\n"
          "3.  **Crop Rotation:**\n\n"
          "- Practice crop rotation with non-host crops (e.g., cereals, legumes) for at least 1-2 years to reduce pathogen buildup in the soil.\n\n"
          "4.  **Resistant Varieties:**\n\n"
          "- Where available, plant resistant or tolerant cassava varieties that have been developed for your region.\n\n"
          "5.  **Weed Control:**\n\n"
          "- Control weeds, as some can act as alternative hosts or harbor the bacteria.\n\n"
          "6.  **Avoid Working in Wet Fields:**\n\n"
          "- Minimize field operations (e.g., weeding, pruning) when plants are wet to prevent accidental spread of bacteria.\n\n"
          "7.  **Copper-based Bactericides:**\n\n"
          "- In severe cases or for high-value crops, copper-based bactericides (e.g., Copper hydroxide, Copper oxychloride) can be applied preventively, but their effectiveness is limited once infection is widespread. Always follow label instructions.",
    ),
    DiseaseInfoModel(
      diseaseId: "Cassava__brown_streak_disease",
      name: "Cassava Brown Streak Disease (CBSD)",
      explanation: "Cassava Brown Streak Disease (CBSD) is a devastating viral disease caused by Cassava Brown Streak Virus (CBSV) and Uganda Cassava Brown Streak Virus (UCBSV).\n\n"
          "- **Tuber Symptoms (Most Critical):** Causes dry, corky, necrotic lesions (streaks) within the tubers, rendering them hard, discolored, unpalatable, and unmarketable. This is often internal and may not be visible until harvest.\n"
          "- **Leaf Symptoms:** Characterized by distinctive feathery yellow or orange vein chlorosis (streaks) along the secondary and tertiary veins. These symptoms can be mild or absent in some tolerant varieties, making diagnosis challenging based on leaves alone.",
      possibleCauses: "CBSD is mainly transmitted by:\n\n"
          "- **Whitefly Vector:** The whitefly *Bemisia tabaci* transmits the virus from infected plants to healthy ones during feeding. Whitefly populations are a major driver of localized spread.\n"
          "- **Infected Planting Material:** The disease is readily spread over long distances and across regions through the use of infected stem cuttings for propagation. This is the primary means of introducing the disease to new areas.",
      treatment: "1.  **Use Clean Planting Material:**\n\n"
          "- The most effective control is to plant only certified virus-free cassava cuttings obtained from known healthy sources or clean seed programs.\n\n"
          "2.  **Resistant/Tolerant Varieties:**\n\n"
          "- Plant CBSD-resistant or tolerant varieties (e.g., NASE 14, NASE 19, TME 204, Kiroba, KBH 2006/006). This is a cornerstone of long-term management in endemic areas.\n\n"
          "3.  **Vector Control (Whiteflies):**\n\n"
          "- Control whitefly populations using insecticides (e.g., neonicotinoids like Imidacloprid as a soil drench for seedlings or foliar sprays for heavy infestations).\n"
          "- Promote biological control agents (e.g., entomopathogenic fungi like *Beauveria bassiana*).\n"
          "- Practice proper field hygiene to reduce whitefly breeding sites.\n\n"
          "4.  **Rogueing (Early Removal):**\n\n"
          "- Regularly scout fields ( ideally every 2-4 weeks) and promptly remove and destroy (burn or bury deeply) any symptomatic plants to reduce inoculum sources for whiteflies.\n\n"
          "5.  **Quarantine Measures:**\n\n"
          "- Implement strict phytosanitary measures to prevent the movement of infected planting material into new areas or across borders.",
    ),
    DiseaseInfoModel(
      diseaseId: "Cassava__green_mottle",
      name: "Cassava Green Mottle (CGM)",
      explanation: "Cassava Green Mottle (CGM) is a viral disease caused by Cassava Green Mottle Virus (CGMV).\n\n"
          "- **Leaf Symptoms:** Primarily affects cassava leaves, causing a mosaic pattern of light green to yellow mottling, often accompanied by leaf distortion, blistering, and sometimes a 'green mottle' effect where some areas remain dark green while others are chlorotic.\n"
          "- **Stunting:** Infected plants may exhibit stunted growth and reduced vigor.\n\n"
          "Unlike CBSD, CGM usually does not cause significant symptoms or necrosis in the tubers, but it can lead to reduced plant vigor and overall yield losses.",
      possibleCauses: "CGM is mainly transmitted through:\n\n"
          "- **Infected Planting Material:** Using stem cuttings from infected plants is the primary mode of transmission.\n"
          "- **Mechanical Transmission:** Evidence suggests it can be spread through contaminated farm tools (e.g., machetes, hoes) during cultural practices.\n"
          "- **No Primary Vector:** Unlike CMD and CBSD, whiteflies are generally *not* considered a primary vector for Cassava Green Mottle Virus.",
      treatment: "1.  **Use Clean Planting Material:**\n\n"
          "- The most effective control measure is to use certified virus-free cassava cuttings for planting. Source cuttings from disease-free fields or nurseries.\n\n"
          "2.  **Rogueing:**\n\n"
          "- Regularly inspect fields and immediately remove and destroy (burn or bury deeply away from the field) any plants showing symptoms of green mottle to reduce sources of infection.\n\n"
          "3.  **Sanitation:**\n\n"
          "- Disinfect farm tools (machetes, hoes, pruning shears) when moving between fields or even between plants in an infected field to prevent mechanical transmission.\n\n"
          "4.  **Resistant Varieties:**\n\n"
          "- Where available, select and plant cassava varieties that are known to be resistant or tolerant to Cassava Green Mottle Virus.\n\n"
          "5.  **Good Agricultural Practices:**\n\n"
          "- While less direct for viral diseases, maintaining overall plant health through balanced nutrition and proper cultivation can improve resilience.",
    ),
    DiseaseInfoModel(
      diseaseId: "Cassava__healthy",
      name: "Healthy Cassava Plant",
      explanation: "A healthy cassava plant displays:\n\n"
          "- **Vigorous Growth:** Strong, upright stems and lush canopy development.\n"
          "- **Vibrant Leaves:** Large, deep green leaves without any yellowing, spots, mottling, distortion, or holes from pest damage.\n"
          "- **Strong Roots/Tubers:** Tubers developing well underground, free from necrosis, rot, or signs of internal browning.\n\n"
          "The plant shows no visible symptoms of disease, nutrient deficiencies, or significant pest infestation.",
      possibleCauses: "—", // No specific 'cause' for being healthy.
      treatment: "1.  **Optimal Soil Conditions:**\n\n"
          "- Plant in well-drained, fertile soil with a pH between 5.5 and 7.0. Cassava prefers sandy loams but can tolerate a range of soil types.\n\n"
          "2.  **Balanced Fertilization:**\n\n"
          "- Apply appropriate fertilizers (e.g., NPK 15-15-15 or formulations specific for root crops like cassava) based on soil analysis and the plant's growth stage.\n\n"
          "3.  **Adequate Watering:**\n\n"
          "- Ensure consistent moisture, especially during tuber bulking, but avoid waterlogging, which can lead to root rot.\n\n"
          "4.  **Weed Control:**\n\n"
          "- Keep fields free of weeds, especially during the early growth stages, to reduce competition for nutrients, water, and light.\n\n"
          "5.  **Pest and Disease Monitoring:**\n\n"
          "- Regularly scout for early signs of pests (e.g., whiteflies, mealybugs) or diseases and implement integrated pest management (IPM) strategies promptly if issues arise.\n\n"
          "6.  **Good Agricultural Practices:**\n\n"
          "- Practice proper spacing, timely planting, and harvesting to promote strong, healthy plants and maximize yield.",
    ),
    DiseaseInfoModel(
      diseaseId: "Cassava__mosaic_disease",
      name: "Cassava Mosaic Disease (CMD)",
      explanation: "Cassava Mosaic Disease (CMD) is a widespread and destructive viral disease caused by several distinct viruses, notably African Cassava Mosaic Virus (ACMV) and East African Cassava Mosaic Virus (EACMV).\n\n"
          "- **Leaf Symptoms (Characteristic):** Causes highly characteristic mosaic patterns on leaves, ranging from mild yellowing to severe chlorosis (yellowing) and distortion.\n"
          "  - Symptoms include: twisting, crinkling, blistering, and significant reduction in leaf size. The green areas may appear darker than normal, contrasting with the chlorotic areas.\n" // Nested list item, use 2 spaces indentation
          "- **Stunting:** Severely infected plants are often stunted and produce significantly reduced, sometimes fibrous and inedible, tubers, leading to substantial yield losses.",
      possibleCauses: "CMD is primarily transmitted by:\n\n"
          "- **Whitefly Vector:** The whitefly *Bemisia tabaci* is the main vector, transmitting the virus persistently from infected plants to healthy ones during feeding. Whitefly populations are a major driver of local spread.\n"
          "- **Infected Planting Material:** The most common and effective means of spreading CMD over long distances and introducing it to new areas is through the use of infected stem cuttings for planting. This is crucial for regional spread.",
      treatment: "1.  **Use Clean Planting Material:**\n\n"
          "- Plant only certified virus-free cassava cuttings obtained from official disease-free sources or certified nurseries. This is the cornerstone of CMD management.\n\n"
          "2.  **Resistant Varieties:**\n\n"
          "- Plant CMD-resistant or tolerant cassava varieties. Many national agricultural research programs have developed high-yielding, CMD-resistant varieties (e.g., TMS 30572, TMEB 419, TME 14, NASE 3, NASE 12).\n\n"
          "3.  **Vector Control (Whiteflies):**\n\n"
          "- Manage whitefly populations using insecticides (e.g., systemic insecticides applied at planting, or foliar sprays in severe cases).\n"
          "- Promote biological control agents and practice cultural methods like intercropping with non-host crops.\n\n"
          "4.  **Rogueing (Early Removal):**\n\n"
          "- Regularly scout fields (ideally weekly, especially in the first 3 months after planting) and promptly remove and destroy (burn or bury deeply, away from the field) any plants showing CMD symptoms, even mild ones. This reduces inoculum sources for whiteflies.\n\n"
          "5.  **Sanitation:**\n\n"
          "- While less critical than clean cuttings and rogueing, disinfecting farm tools when moving between fields or infected plants can help prevent mechanical transmission.\n\n"
          "6.  **Community Awareness & Collaboration:**\n\n"
          "- Educate farmers on CMD symptoms and control measures to encourage community-wide efforts in managing the disease, as individual efforts may be undermined by nearby infected fields.",
    ),
    DiseaseInfoModel(
      diseaseId: "Cherry__healthy",
      name: "Healthy Cherry Tree",
      explanation: "A healthy cherry tree exhibits vibrant green leaves, smooth bark without lesions or cracks, and well-formed, blemish-free fruit. The foliage is dense and shows no signs of discoloration, spots, or distortions. Branches are strong, and the tree displays vigorous, balanced growth.",
      possibleCauses: "—",
      treatment: "1.  **Optimal Site Selection:**\n\n"
          "- Plant in well-drained soil with adequate sunlight.\n\n"
          "2.  **Balanced Nutrition:**\n\n"
          "- Apply appropriate, balanced fertilizers based on soil tests.\n\n"
          "3.  **Consistent Watering:**\n\n"
          "- Provide regular, deep watering, especially during dry periods, to ensure proper fruit development.\n\n"
          "4.  **Proper Pruning:**\n\n"
          "- Prune annually to maintain tree structure, promote air circulation, and remove any dead or weak branches.\n\n"
          "5.  **Pest & Disease Monitoring:**\n\n"
          "- Regularly inspect the tree for early signs of issues and implement integrated pest management (IPM) strategies proactively.",
    ),
    DiseaseInfoModel(
      diseaseId: "Cherry__powdery_mildew",
      name: "Cherry Powdery Mildew",
      explanation: "Cherry powdery mildew is a fungal disease caused primarily by *Podosphaera clandestina*. It appears as white, powdery patches on the surface of young leaves, shoots, and sometimes fruit. Infected leaves may become distorted, curled, or stunted, and severe infections can lead to premature defoliation and reduced fruit quality.",
      possibleCauses: "The fungus overwinters as chasmothecia (small, black resting structures) in bark crevices or fallen leaves. Spores (ascospores) are released in spring and spread by wind to new growth. Secondary spores (conidia) are produced rapidly on infected tissue, spreading the disease further, especially in warm, humid, and shady conditions. Unlike many fungi, it thrives in dry leaf surfaces with high humidity.",
      treatment: "1.  **Resistant Varieties:**\n\n"
          "- Plant resistant cherry varieties when possible.\n\n"
          "2.  **Pruning & Air Circulation:**\n\n"
          "- Prune trees to open up the canopy, improve air circulation, and allow better light penetration, which helps reduce humidity.\n\n"
          "3.  **Fungicides:**\n\n"
          "- Apply fungicides containing active ingredients like Myclobutanil (e.g., Immunox), Propiconazole, Triflumizole, or Sulfur. Begin applications at the first sign of disease and continue according to product label, especially during periods favorable for powdery mildew development.\n\n"
          "4.  **Horticultural Oils/Neem Oil:**\n\n"
          "- For organic control or less severe cases, horticultural oils or neem oil can be effective, but require thorough coverage and repeat applications. Apply when temperatures are not extreme to avoid plant damage.\n\n"
          "5.  **Sanitation:**\n\n"
          "- Remove and destroy severely infected plant parts to reduce inoculum.",
    ),
    DiseaseInfoModel(
      diseaseId: "Chili__healthy",
      name: "Healthy Chili Pepper Plant",
      explanation: "A healthy chili pepper plant displays lush, vibrant green foliage with no signs of yellowing, spots, or deformities. Stems are sturdy, and fruits are well-formed and ripening normally. The plant exhibits vigorous growth and is free from visible pests or disease symptoms.",
      possibleCauses: "—",
      treatment: "1.  **Adequate Sunlight:**\n\n"
          "- Ensure the plant receives at least 6-8 hours of direct sunlight daily.\n\n"
          "2.  **Proper Watering:**\n\n"
          "- Water consistently, keeping the soil moist but not waterlogged. Allow the top inch of soil to dry out between waterings.\n\n"
          "3.  **Balanced Fertilization:**\n\n"
          "- Use a balanced fertilizer during vegetative growth and switch to one higher in phosphorus and potassium for flowering and fruiting.\n\n"
          "4.  **Pest & Disease Scouting:**\n\n"
          "- Regularly inspect plants for early signs of pests or diseases to allow for timely intervention.\n\n"
          "5.  **Good Air Circulation:**\n\n"
          "- Space plants appropriately to promote air flow and reduce humidity, which can deter fungal diseases.",
    ),
    DiseaseInfoModel(
      diseaseId: "Chili__healthy",
      name: "Healthy Chili Pepper Plant",
      explanation: "A healthy chili pepper plant displays lush, vibrant green foliage with no signs of yellowing, spots, or deformities. Stems are sturdy, and fruits are well-formed and ripening normally. The plant exhibits vigorous growth and is free from visible pests or disease symptoms.",
      possibleCauses: "—",
      treatment: "1.  **Adequate Sunlight:**\n\n"
          "- Ensure the plant receives at least 6-8 hours of direct sunlight daily.\n\n"
          "2.  **Proper Watering:**\n\n"
          "- Water consistently, keeping the soil moist but not waterlogged. Allow the top inch of soil to dry out between waterings.\n\n"
          "3.  **Balanced Fertilization:**\n\n"
          "- Use a balanced fertilizer during vegetative growth and switch to one higher in phosphorus and potassium for flowering and fruiting.\n\n"
          "4.  **Pest & Disease Scouting:**\n\n"
          "- Regularly inspect plants for early signs of pests or diseases to allow for timely intervention.\n\n"
          "5.  **Good Air Circulation:**\n\n"
          "- Space plants appropriately to promote air flow and reduce humidity, which can deter fungal diseases.",
    ),
    DiseaseInfoModel(
      diseaseId: "Chili__leaf_curl",
      name: "Chili Leaf Curl",
      explanation: "Chili leaf curl is a viral disease caused by various Geminiviruses (e.g., Chili Leaf Curl Virus). Infected leaves show characteristic upward or downward curling, puckering, distortion, and often develop a thick, leathery texture. Veins may swell, and plant growth is severely stunted, leading to reduced flower and fruit production, and often complete yield loss in severe cases.",
      possibleCauses: "The primary cause of chili leaf curl is infection by one or more species of Geminivirus. These viruses are almost exclusively transmitted by:\n\n"
          "- **Whiteflies:** Specifically, the tobacco whitefly (*Bemisia tabaci*) is the main vector, spreading the virus from infected plants to healthy ones during feeding. \n\n"
          "The virus does not spread through soil or direct contact. Infected seedlings used for transplanting are also a major source of initial infection.",
      treatment: "1.  **Whitefly Control:**\n\n"
          "- Manage whitefly populations aggressively using insecticides (e.g., Imidacloprid, Acetamiprid) or organic sprays (e.g., neem oil, insecticidal soap). Apply early and consistently.\n"
          "- Use yellow sticky traps to monitor and reduce whitefly numbers.\n"
          "- Consider reflective mulches to deter whiteflies.\n\n"
          "2.  **Rogueing:**\n\n"
          "- Promptly remove and destroy (burn or bury deeply) any plants showing leaf curl symptoms to eliminate virus sources.\n\n"
          "3.  **Use Clean Planting Material:**\n\n"
          "- Start with healthy, virus-free seeds or seedlings. Avoid using cuttings from potentially infected plants.\n\n"
          "4.  **Resistant Varieties:**\n\n"
          "- Plant leaf curl-resistant chili varieties if available in your region.\n\n"
          "5.  **Netting/Row Covers:**\n\n"
          "- Use fine-mesh insect netting over young plants to physically exclude whiteflies.",
    ),
    DiseaseInfoModel(
      diseaseId: "Chili__leaf_spot",
      name: "Chili Leaf Spot",
      explanation: "Chili leaf spot can refer to various fungal or bacterial diseases. Common fungal causes include *Cercospora capsici* (Cercospora Leaf Spot) and *Alternaria solani* (Early Blight). Bacterial leaf spot is caused by *Xanthomonas campestris pv. vesicatoria*.\n\n"
          "- **Fungal Leaf Spots:** Typically circular, tan to brown spots with dark borders, often developing concentric rings (target spots). Centers may fall out, creating a 'shot-hole' effect. Severe infection leads to defoliation.\n"
          "- **Bacterial Leaf Spots:** Small, water-soaked, irregular lesions that become dark brown with yellow halos. Can coalesce into larger necrotic areas. Often affects fruits as well, causing raised, scab-like lesions.",
      possibleCauses: "Both fungal and bacterial leaf spots thrive in:\n\n"
          "- **High Humidity & Moisture:** Prolonged leaf wetness from rain, dew, or overhead irrigation.\n"
          "- **Warm Temperatures:** Optimal temperatures vary by pathogen but generally warm conditions favor spread.\n"
          "- **Poor Air Circulation:** Dense foliage traps humidity.\n"
          "- **Infected Debris:** Pathogens can overwinter in plant debris or soil.\n"
          "- **Contaminated Seeds/Transplants:** Bacteria can be seed-borne.",
      treatment: "1.  **Sanitation:**\n\n"
          "- Remove and destroy infected plant debris at the end of the season. Practice good field hygiene.\n\n"
          "2.  **Watering Practices:**\n\n"
          "- Avoid overhead irrigation; use drip irrigation or water at the base of plants to minimize leaf wetness.\n"
          "- Water in the morning to allow foliage to dry quickly.\n\n"
          "3.  **Air Circulation:**\n\n"
          "- Space plants adequately and prune lower leaves to improve air flow.\n\n"
          "4.  **Crop Rotation:**\n\n"
          "- Rotate peppers with non-solanaceous crops for at least 2-3 years to reduce pathogen buildup in the soil.\n\n"
          "5.  **Fungicides/Bactericides:**\n\n"
          "- **For Fungal Spots:** Apply broad-spectrum fungicides like Chlorothalonil, Mancozeb, Azoxystrobin, or copper-based fungicides.\n"
          "- **For Bacterial Spots:** Copper-based bactericides (e.g., Kocide, Copper Hydroxide) can help suppress, but may not cure. Some biological options (*Bacillus subtilis*) are also available.\n"
          "- Always apply according to label instructions and rotation to prevent resistance.\n\n"
          "6.  **Resistant Varieties:**\n\n"
          "- Plant disease-resistant chili varieties when available.",
    ),
    DiseaseInfoModel(
      diseaseId: "Chili__whitefly",
      name: "Chili Whitefly Infestation",
      explanation: "Whiteflies are small, white, winged insects (e.g., *Bemisia tabaci*) that cluster on the undersides of chili pepper leaves. They feed by sucking sap from the plant, leading to:\n\n"
          "- **Yellowing & Stunting:** Leaves may yellow, curl, and overall plant growth is stunted due to sap depletion.\n"
          "- **Honeydew & Sooty Mold:** Whiteflies excrete sticky honeydew, which attracts black sooty mold growth, inhibiting photosynthesis.\n"
          "- **Virus Transmission:** Most critically, whiteflies are vectors for devastating viral diseases like Chili Leaf Curl Virus.",
      possibleCauses: "Whitefly populations thrive in:\n\n"
          "- **Warm, Dry Conditions:** Ideal for rapid reproduction.\n"
          "- **Dense Plantings:** Poor air circulation and easy movement between plants.\n"
          "- **Lack of Natural Predators:** Absence of beneficial insects that prey on whiteflies.\n"
          "- **Introduction of Infested Plants:** New plants can introduce whiteflies to a clean area.",
      treatment: "1.  **Monitor & Early Detection:**\n\n"
          "- Regularly check the undersides of leaves, especially new growth. Use yellow sticky traps to monitor adult whitefly populations.\n\n"
          "2.  **Cultural Control:**\n\n"
          "- **Water Spray:** Strong jets of water can dislodge whiteflies.\n"
          "- **Remove Infested Leaves:** Prune and destroy heavily infested leaves or plants.\n"
          "- **Reflective Mulch:** Silver-colored reflective mulches can deter whiteflies from landing on plants.\n\n"
          "3.  **Biological Control:**\n\n"
          "- Encourage natural predators like ladybugs, lacewings, and predatory mites.\n"
          "- Release parasitic wasps (*Encarsia formosa*) in enclosed environments.\n\n"
          "4.  **Organic Insecticides:**\n\n"
          "- **Insecticidal Soaps:** Effective against soft-bodied insects like whiteflies. Requires thorough coverage.\n"
          "- **Neem Oil:** Disrupts whitefly feeding and reproduction. Needs consistent application.\n\n"
          "5.  **Chemical Insecticides (Use as last resort):**\n\n"
          "- Systemic insecticides (e.g., Imidacloprid) or contact insecticides (e.g., Pyrethrin, Acetamiprid). Rotate active ingredients to prevent resistance. Always follow label instructions and observe pre-harvest intervals.",
    ),
    DiseaseInfoModel(
      diseaseId: "Chili__yellowish",
      name: "Chili Yellowing (General Chlorosis)",
      explanation: "General yellowing (chlorosis) of chili pepper leaves indicates a lack of chlorophyll. This is a symptom, not a disease itself, and can be caused by various factors, including nutrient deficiencies, improper watering, pest infestations, or environmental stress.\n\n"
          "- **Uniform Yellowing:** Often indicates nitrogen deficiency.\n"
          "- **Interveinal Yellowing (Veins remain green):** Suggests iron, magnesium, or zinc deficiency.\n"
          "- **Lower Leaves Yellowing first:** Often nutrient deficiencies (especially mobile ones like nitrogen).\n"
          "- **New Leaves Yellowing first:** Can indicate deficiencies of immobile nutrients like iron or sulfur, or pest issues.",
      possibleCauses: "1.  **Nutrient Deficiencies:**\n\n"
          "- **Nitrogen (N):** Most common. Causes uniform yellowing of older leaves.\n"
          "- **Iron (Fe), Magnesium (Mg), Zinc (Zn):** Cause interveinal chlorosis, often on newer leaves (Fe, Zn) or older leaves (Mg).\n"
          "- **Other Micronutrients:** Less common, but possible.\n\n"
          "2.  **Improper Watering:**\n\n"
          "- **Underwatering:** Leads to wilting and general stress, eventually yellowing.\n"
          "- **Overwatering:** Causes root rot, restricting nutrient uptake and leading to yellowing, especially on lower leaves.\n\n"
          "3.  **Soil pH Imbalance:**\n\n"
          "- Incorrect pH can lock up nutrients, making them unavailable to the plant even if present in the soil.\n\n"
          "4.  **Pest Infestation:**\n\n"
          "- Sap-sucking pests (e.g., aphids, whiteflies, spider mites) can cause yellowing as they deplete plant vigor.\n\n"
          "5.  **Environmental Stress:**\n\n"
          "- Extreme temperatures (too cold or too hot), transplant shock, or root damage.",
      treatment: "1.  **Diagnose the Specific Cause:**\n\n"
          "- Examine the pattern of yellowing (uniform, interveinal, old leaves, new leaves).\n"
          "- Check soil moisture and drainage.\n"
          "- Look for pests on leaf undersides.\n\n"
          "2.  **Address Nutrient Deficiencies:**\n\n"
          "- Conduct a soil test to confirm deficiencies. Apply appropriate fertilizers or micronutrient supplements (e.g., chelated iron, magnesium sulfate/Epsom salts).\n"
          "- Ensure balanced NPK fertilization.\n\n"
          "3.  **Adjust Watering:**\n\n"
          "- Establish a consistent watering schedule; water deeply when the topsoil is dry to the touch. Ensure good drainage.\n\n"
          "4.  **Correct Soil pH:**\n\n"
          "- Amend soil to bring pH into the optimal range for chilies (6.0-7.0).\n\n"
          "5.  **Pest Management:**\n\n"
          "- Identify and treat any pest infestations using appropriate methods (insecticidal soap, neem oil, biological control, targeted insecticides).\n\n"
          "6.  **Reduce Stress:**\n\n"
          "- Provide adequate sun, protect from extreme temperatures, and minimize root disturbance.",
    ),
    DiseaseInfoModel(
      diseaseId: "Coffee__cercospora_leaf_spot",
      name: "Coffee Cercospora Leaf Spot (Brown Eye Spot)",
      explanation: "Coffee Cercospora Leaf Spot, also known as Brown Eye Spot, is caused by the fungus *Cercospora coffeicola*. It is characterized by small, circular spots on leaves that are dark brown with a distinct light brown or grayish center (giving it the 'eye spot' appearance) and often a yellow halo. These spots enlarge, coalesce, and can lead to premature leaf drop. On berries, it causes sunken, dark spots.",
      possibleCauses: "The fungus thrives in:\n\n"
          "- **High Humidity & Wetness:** Prolonged periods of leaf wetness from rain or dew.\n"
          "- **Warm Temperatures:** Optimal range is typically 20-30°C.\n"
          "- **Nutrient Deficiency:** Plants under stress, particularly those with low nitrogen or potassium, are more susceptible.\n"
          "- **Poor Air Circulation & Shade:** Dense planting and excessive shade can create favorable microclimates.\n"
          "- **Spore Dispersal:** Spores are spread by wind and rain splash from infected leaves.",
      treatment: "1.  **Optimize Plant Nutrition:**\n\n"
          "- Ensure balanced fertilization, especially adequate nitrogen and potassium, to boost plant vigor and resistance.\n\n"
          "2.  **Improve Air Circulation & Light:**\n\n"
          "- Prune coffee trees to open up the canopy and allow better light penetration and air circulation. Regulate shade if plants are under shade trees.\n\n"
          "3.  **Fungicides:**\n\n"
          "- Apply protective fungicides such as copper-based fungicides (e.g., Copper Hydroxide, Copper Oxychloride) or systemic fungicides (e.g., Azoxystrobin, Pyraclostrobin). Consult local agricultural extension for recommended products and spray schedules.\n\n"
          "4.  **Sanitation:**\n\n"
          "- Collect and destroy fallen infected leaves and berries to reduce inoculum.\n\n"
          "5.  **Water Management:**\n\n"
          "- Avoid overhead irrigation if possible, or irrigate early in the day to allow leaves to dry quickly.",
    ),
    DiseaseInfoModel(
      diseaseId: "Coffee__healthy",
      name: "Healthy Coffee Plant",
      explanation: "A healthy coffee plant is characterized by lustrous, dark green leaves with no signs of discoloration, spots, or distortions. The branches are sturdy, bearing well-formed coffee berries (cherries) in various stages of ripeness. The plant displays vigorous growth, good foliage density, and overall vitality, indicating optimal health and nutrient uptake.",
      possibleCauses: "—",
      treatment: "1.  **Optimal Growing Conditions:**\n\n"
          "- Plant in rich, well-drained, slightly acidic soil (pH 6.0-6.5) with partial shade.\n\n"
          "2.  **Balanced Fertilization:**\n\n"
          "- Apply fertilizers tailored to coffee's needs, based on soil analysis.\n\n"
          "3.  **Consistent Watering:**\n\n"
          "- Ensure consistent moisture, especially during dry seasons, but avoid waterlogging.\n\n"
          "4.  **Pruning:**\n\n"
          "- Regularly prune to maintain plant shape, promote air circulation, and encourage berry production.\n\n"
          "5.  **Pest & Disease Scouting:**\n\n"
          "- Conduct routine inspections for any early signs of pests or diseases to allow for prompt, targeted intervention.",
    ),
    DiseaseInfoModel(
      diseaseId: "Coffee__red_spider_mite",
      name: "Coffee Red Spider Mite Infestation",
      explanation: "Red spider mites (*Oligonychus coffeae*) are tiny arachnids that infest coffee plants, primarily on the undersides of leaves. They cause damage by sucking sap from plant cells, leading to:\n\n"
          "- **Stippling:** Fine, yellowish-white speckles (stippling) on the upper leaf surface.\n"
          "- **Bronzing/Yellowing:** As infestation progresses, leaves turn yellow, then bronze, and can eventually become reddish-brown.\n"
          "- **Webbing:** In severe cases, fine silken webs may be visible on the undersides of leaves, stems, and around berries.\n"
          "- **Defoliation:** Heavy infestations can lead to premature leaf drop and reduced vigor and yield.",
      possibleCauses: "Red spider mite populations rapidly increase under:\n\n"
          "- **Hot, Dry Weather:** These conditions are highly favorable for mite reproduction and development.\n"
          "- **Dusty Conditions:** Dust on leaves can protect mites from predators and make them harder to dislodge.\n"
          "- **Excessive Nitrogen Fertilization:** Can promote succulent growth that mites prefer.\n"
          "- **Lack of Natural Predators:** Indiscriminate use of broad-spectrum insecticides can eliminate beneficial mites and insects that prey on spider mites, leading to outbreaks.",
      treatment: "1.  **Monitor Regularly:**\n\n"
          "- Inspect the undersides of leaves frequently, especially during dry periods. Use a magnifying glass if necessary, as mites are very small.\n\n"
          "2.  **Cultural Control:**\n\n"
          "- **Water Spray:** A strong jet of water can dislodge mites from leaves. Regular misting can also deter them.\n"
          "- **Dust Control:** Reduce dust accumulation on leaves.\n"
          "- **Pruning:** Remove and destroy heavily infested leaves or branches.\n\n"
          "3.  **Biological Control:**\n\n"
          "- Encourage natural predators such as predatory mites (*Phytoseiulus persimilis*), lacewings, and ladybugs. Avoid broad-spectrum insecticides that harm these beneficials.\n\n"
          "4.  **Miticides (Acaricides):**\n\n"
          "- Apply specific miticides if populations are high. Active ingredients include Abamectin, Spiromesifen, or oils (Horticultural oil, Neem oil). \n"
          "- Thorough coverage of the undersides of leaves is essential. Rotate miticides with different modes of action to prevent resistance.\n"
          "- Organic options like neem oil or insecticidal soaps can be effective for lighter infestations.",
    ),
    DiseaseInfoModel(
      diseaseId: "Coffee__rust",
      name: "Coffee Leaf Rust (CLR)",
      explanation: "Coffee Leaf Rust (CLR) is a highly destructive fungal disease caused by *Hemileia vastatrix*. It is characterized by distinctive powdery, orange-yellow spots on the undersides of coffee leaves. These spots enlarge and coalesce, and as the disease progresses, leaves turn yellow and eventually brown before falling prematurely. Severe defoliation significantly weakens the plant, reduces yield, and can lead to plant death.",
      possibleCauses: "The fungus thrives under:\n\n"
          "- **High Humidity & Moisture:** Prolonged periods of leaf wetness from rain or dew are essential for spore germination and infection.\n"
          "- **Moderate Temperatures:** Optimal range is typically 20-25°C.\n"
          "- **Susceptible Varieties:** Planting rust-susceptible coffee varieties (e.g., Arabica cultivars without resistance).\n"
          "- **Nutrient Stress:** Weakened plants, often due to nutrient deficiencies (especially potassium) or over-cropping, are more vulnerable.\n"
          "- **Spore Dispersal:** Spores are primarily spread by wind and rain splash, but can also be carried by insects, birds, and humans.",
      treatment: "1.  **Resistant Varieties:**\n\n"
          "- Plant rust-resistant coffee varieties (e.g., Catimor, Sarchimor, Ruiru 11, Castillo, Marsellesa). This is the most effective long-term strategy.\n\n"
          "2.  **Fungicides:**\n\n"
          "- Apply systemic fungicides (e.g., Triazoles like Epoxiconazole, Cyproconazole) or protective fungicides (e.g., Copper-based fungicides like Copper Oxychloride, Copper Hydroxide).\n"
          "- Applications are typically timed to critical periods of spore germination (before onset of wet season or at first symptom detection) and repeated as per label instructions. Rotate fungicides.\n\n"
          "3.  **Nutrient Management:**\n\n"
          "- Ensure balanced fertilization, with adequate potassium, to improve plant health and resilience to rust.\n\n"
          "4.  **Shade Management:**\n\n"
          "- Proper shade management can help regulate temperature and humidity, which can influence rust development. Too much shade can increase humidity; too little can stress plants.\n\n"
          "5.  **Pruning:**\n\n"
          "- Prune coffee trees to improve air circulation and light penetration, helping leaves dry faster.\n\n"
          "6.  **Sanitation:**\n\n"
          "- Collect and destroy fallen infected leaves to reduce the source of inoculum.",
    ),
    DiseaseInfoModel(
      diseaseId: "Corn__common_rust",
      name: "Corn Common Rust",
      explanation: "Corn Common Rust is a fungal infection caused by *Puccinia sorghi*. It produces characteristic reddish-brown to cinnamon-brown pustules (rust sori) on both the upper and lower surfaces of corn leaves. These pustules are typically oval to elongated and may rupture the epidermis, releasing powdery spores. Severe infections can lead to premature leaf senescence, reduced photosynthetic area, and significant yield loss.",
      possibleCauses: "The fungus overwinters on corn residue in warmer climates or is carried on wind currents from southern growing regions to northern ones. It thrives in:\n\n"
          "- **High Humidity & Leaf Wetness:** Prolonged periods of dew or rain (at least 6 hours of leaf wetness).\n"
          "- **Cooler to Moderate Temperatures:** Optimal range is typically 18-25°C.\n"
          "- **Wind-spread Spores:** Urediniospores are highly mobile and spread rapidly by wind.",
      treatment: "1.  **Resistant Hybrids:**\n\n"
          "- Plant corn hybrids with genetic resistance to common rust (e.g., many modern hybrids have good resistance). Check hybrid characteristics before planting.\n\n"
          "2.  **Fungicides:**\n\n"
          "- Apply foliar fungicides such as strobilurins (e.g., Azoxystrobin, Pyraclostrobin), triazoles (e.g., Propiconazole, Tebuconazole), or mixtures of these.\n"
          "- Fungicide application is typically warranted if the disease is severe early in the season (before silking) or if a susceptible hybrid is grown under favorable conditions.\n"
          "- Follow product labels for timing and rates, often applied between the VT (tasseling) and R3 (milk) growth stages.\n\n"
          "3.  **Crop Rotation:**\n\n"
          "- While not highly effective alone due to wind-blown spores, rotating with non-host crops can help reduce local inoculum levels.\n\n"
          "4.  **Residue Management:**\n\n"
          "- Tillage can help bury infected crop residue, reducing local overwintering inoculum, but is less effective against wind-borne spores.",
    ),
    DiseaseInfoModel(
      diseaseId: "Corn__gray_leaf_spot",
      name: "Corn Gray Leaf Spot (GLS)",
      explanation: "Corn Gray Leaf Spot (GLS) is a widespread fungal disease caused by *Cercospora zeae-maydis*. It produces characteristic rectangular to blocky lesions on corn leaves, typically grayish-brown with dark borders. These lesions run parallel to the leaf veins and can be quite long. As the disease progresses, lesions coalesce, leading to large blighted areas and premature defoliation, significantly reducing photosynthetic capacity and yield.",
      possibleCauses: "The fungus overwinters in:\n\n"
          "- **Corn Residue:** Infected corn residue on the soil surface is the primary source of inoculum. \n\n"
          "The disease thrives in:\n\n"
          "- **High Humidity & Prolonged Leaf Wetness:** Requires at least 11-15 hours of leaf wetness and temperatures between 24-30°C for infection and development.\n"
          "- **No-Till/Reduced-Till Fields:** The pathogen survives well in undisturbed residue, making no-till systems more susceptible.",
      treatment: "1.  **Resistant Hybrids:**\n\n"
          "- Plant corn hybrids with good genetic resistance or tolerance to Gray Leaf Spot. This is the most effective and economical control method.\n\n"
          "2.  **Residue Management:**\n\n"
          "- Implement tillage practices (e.g., plowing) to bury corn residue, which helps reduce inoculum levels for the next season. This is particularly important in fields with a history of severe GLS.\n\n"
          "3.  **Crop Rotation:**\n\n"
          "- Rotate corn with non-host crops (e.g., soybeans, wheat) for at least 2 years to reduce pathogen buildup in the residue.\n\n"
          "4.  **Fungicides:**\n\n"
          "- Apply foliar fungicides, typically strobilurins (e.g., Azoxystrobin, Pyraclostrobin), triazoles (e.g., Propiconazole, Tebuconazole), or mixtures of these.\n"
          "- Applications are generally recommended when lesions are present on lower leaves before silking (V14 to VT) and favorable weather persists. Follow product labels for specific timing and rates.\n\n"
          "5.  **Field Selection:**\n\n"
          "- Avoid planting susceptible hybrids in fields with a history of severe GLS, especially under no-till conditions.",
    ),
    DiseaseInfoModel(
      diseaseId: "Corn__healthy",
      name: "Healthy Corn Plant",
      explanation: "A healthy corn plant displays strong, upright stalks, broad, vibrant green leaves without any yellowing, spots, or lesions. Ears are developing well, with full kernel set. The plant exhibits uniform growth, good turgor, and no visible signs of pest damage or disease symptoms, indicating optimal nutrient uptake and environmental conditions.",
      possibleCauses: "—",
      treatment: "1.  **Optimal Planting:**\n\n"
          "- Plant at the correct time, depth, and spacing for your region.\n\n"
          "2.  **Balanced Nutrition:**\n\n"
          "- Apply appropriate NPK fertilizers and micronutrients based on soil tests and crop needs.\n\n"
          "3.  **Adequate Water:**\n\n"
          "- Ensure consistent moisture through rainfall or irrigation, especially during critical growth stages (tasseling, silking, grain fill).\n\n"
          "4.  **Weed Control:**\n\n"
          "- Implement effective weed management to reduce competition for resources.\n\n"
          "5.  **Pest & Disease Scouting:**\n\n"
          "- Regularly monitor fields for early detection of pests or diseases and apply integrated pest management (IPM) strategies proactively.\n\n"
          "6.  **Hybrid Selection:**\n\n"
          "- Choose hybrids adapted to your local climate and with good natural resistance to common diseases.",
    ),
    DiseaseInfoModel(
      diseaseId: "Corn__northern_leaf_blight",
      name: "Corn Northern Leaf Blight (NLB)",
      explanation: "Corn Northern Leaf Blight (NLB) is a destructive fungal disease caused by *Exserohilum turcicum*. It is characterized by long, elliptical, cigar-shaped lesions (1-6 inches long) that are grayish-green to tan in color. These lesions typically appear on lower leaves first and spread upwards. As they mature, they become necrotic (dead tissue) and can merge, blighting large portions of the leaf, significantly reducing photosynthetic area and leading to premature death of the plant.",
      possibleCauses: "The fungus overwinters in:\n\n"
          "- **Corn Residue:** Infected corn residue on the soil surface is the primary source of inoculum.\n\n"
          "The disease thrives in:\n\n"
          "- **Cool to Moderate Temperatures:** Optimal range is typically 18-27°C.\n"
          "- **High Humidity & Prolonged Leaf Wetness:** Requires extended periods of dew or rain for spore germination and infection (at least 6-18 hours of leaf wetness).\n"
          "- **No-Till Systems:** Undisturbed residue promotes survival of the pathogen.",
      treatment: "1.  **Resistant Hybrids:**\n\n"
          "- Plant corn hybrids with good genetic resistance or tolerance to Northern Leaf Blight. Many modern hybrids have excellent resistance (indicated by 'Ht' genes).\n\n"
          "2.  **Residue Management:**\n\n"
          "- Implement tillage practices (e.g., plowing) to bury corn residue, which helps reduce inoculum levels for the next season. This is particularly effective in fields with a history of severe NLB.\n\n"
          "3.  **Crop Rotation:**\n\n"
          "- Rotate corn with non-host crops (e.g., soybeans, wheat) for at least 1-2 years to reduce pathogen buildup in the residue.\n\n"
          "4.  **Fungicides:**\n\n"
          "- Apply foliar fungicides, typically strobilurins (e.g., Azoxystrobin, Pyraclostrobin), triazoles (e.g., Propiconazole, Tebuconazole), or mixtures of these.\n"
          "- Fungicide application is often economically viable if the disease appears early (before silking) or if a highly susceptible hybrid is grown under favorable conditions. Timely application (e.g., V10 to R1/R2 stages) is critical.\n\n"
          "5.  **Scouting:**\n\n"
          "- Regularly scout fields, especially in conducive conditions, to determine if fungicide application is warranted.",
    ),
    DiseaseInfoModel(
      diseaseId: "Cucumber__diseased",
      name: "Cucumber Diseased (General)",
      explanation: "This category represents a general diseased state for cucumbers, indicating the presence of symptoms such as:\n\n"
          "- **Leaf Spots:** Discolored lesions (yellow, brown, black) of various shapes and sizes.\n"
          "- **Yellowing/Wilting:** General chlorosis or drooping of leaves and stems.\n"
          "- **Mildew/Mold:** Powdery white, fuzzy gray, or dark sooty growth on leaves.\n"
          "- **Fruit Lesions:** Spots, rot, or deformities on cucumbers themselves.\n"
          "- **Stunting/Dieback:** Reduced plant vigor or death of plant parts.\n\n"
          "Further specific diagnosis is often required to identify the exact pathogen (e.g., Downy Mildew, Powdery Mildew, Bacterial Wilt, Anthracnose).",
      possibleCauses: "The causes for a general diseased state in cucumbers are diverse and can include:\n\n"
          "- **Fungal Pathogens:** Such as *Pseudoperonospora cubensis* (Downy Mildew), *Podosphaera xanthii* (Powdery Mildew), *Colletotrichum orbiculare* (Anthracnose).\n"
          "- **Bacterial Pathogens:** Like *Erwinia tracheiphila* (Bacterial Wilt), *Pseudomonas syringae pv. lachrymans* (Angular Leaf Spot).\n"
          "- **Viral Pathogens:** E.g., Cucumber Mosaic Virus (CMV), Zucchini Yellow Mosaic Virus (ZYMV), often spread by insects.\n"
          "- **Pest Damage:** Severe infestations (e.g., aphids, spider mites) can mimic disease symptoms or transmit diseases.\n"
          "- **Environmental Stress:** Nutrient deficiencies, improper watering, extreme temperatures, or poor soil conditions.",
      treatment: "1.  **Isolate & Diagnose:**\n\n"
          "- If possible, isolate the affected plant. Observe symptoms closely and try to identify the specific disease. Consult a local agricultural extension if unsure.\n\n"
          "2.  **Sanitation:**\n\n"
          "- Remove and destroy (do not compost) severely infected plants and plant debris to reduce inoculum.\n"
          "- Disinfect tools after handling diseased plants.\n\n"
          "3.  **Cultural Practices:**\n\n"
          "- **Crop Rotation:** Rotate cucumbers with non-cucurbit crops for 2-3 years.\n"
          "- **Watering:** Water at the base of plants in the morning to keep foliage dry.\n"
          "- **Air Circulation:** Ensure adequate plant spacing and support vines to improve air flow.\n\n"
          "4.  **Pest Control:**\n\n"
          "- Manage insect vectors (e.g., cucumber beetles for Bacterial Wilt, aphids for viruses) using appropriate methods (insecticides, biological control, row covers).\n\n"
          "5.  **Fungicides/Bactericides (if specific disease is identified):**\n\n"
          "- **For Fungal:** Apply appropriate fungicides (e.g., Chlorothalonil for general fungal, specific products for powdery or downy mildew).\n"
          "- **For Bacterial:** Copper-based bactericides may offer some suppression. No cure once systemic.\n"
          "- Always follow label instructions and observe pre-harvest intervals.\n\n"
          "6.  **Resistant Varieties:**\n\n"
          "- Plant disease-resistant cucumber varieties if available for common local diseases.",
    ),
    DiseaseInfoModel(
      diseaseId: "Cucumber__healthy",
      name: "Healthy Cucumber Plant",
      explanation: "A healthy cucumber plant exhibits vigorous vine growth, large, vibrant green leaves without any spots, yellowing, or signs of wilting. Flowers are abundant, and the developing cucumbers are firm, uniformly colored, and free from lesions or deformities. The plant shows no visible signs of pest infestation or disease symptoms.",
      possibleCauses: "—",
      treatment: "1.  **Optimal Growing Conditions:**\n\n"
          "- Plant in rich, well-drained soil with full sunlight (6-8 hours daily).\n\n"
          "2.  **Consistent Watering:**\n\n"
          "- Keep soil consistently moist, especially during flowering and fruiting. Avoid overhead watering to keep leaves dry.\n\n"
          "3.  **Balanced Fertilization:**\n\n"
          "- Provide balanced nutrients, supplementing with phosphorus and potassium during fruiting.\n\n"
          "4.  **Support:**\n\n"
          "- Use trellises or stakes to support vines, promoting air circulation and keeping fruit off the ground.\n\n"
          "5.  **Pest & Disease Scouting:**\n\n"
          "- Regularly inspect plants for early signs of issues and address them promptly with integrated pest management (IPM) strategies.",
    ),
    DiseaseInfoModel(
      diseaseId: "Gauva__diseased",
      name: "Guava Diseased (General)",
      explanation: "This category indicates a general diseased state in guava, characterized by various symptoms such as:\n\n"
          "- **Leaf Spots:** Discolored lesions (brown, black, yellow) often leading to defoliation.\n"
          "- **Fruit Lesions/Rot:** Spots, scabs, or soft rot on guava fruits, rendering them unmarketable or inedible.\n"
          "- **Cankers/Dieback:** Sunken lesions on stems and branches, potentially leading to twig or branch death.\n"
          "- **Wilt/Yellowing:** General decline, wilting, or yellowing of foliage, which could indicate root issues or vascular diseases.\n\n"
          "Common guava diseases include Anthracnose, Wilt, Dieback, and Canker.",
      possibleCauses: "Various pathogens can cause disease in guava:\n\n"
          "- **Fungal Pathogens:** Such as *Colletotrichum gloeosporioides* (Anthracnose), *Fusarium oxysporum* f. sp. *psidii* (Guava Wilt), *Pestalotiopsis psidii* (Pestalotiopsis Leaf Spot/Dieback).\n"
          "- **Bacterial Pathogens:** Less common, but can cause cankers or spots.\n"
          "- **Environmental Stress:** Nutrient deficiencies, water stress, or improper growing conditions can predispose trees to disease.\n"
          "- **Pests:** Some pests can cause damage that mimics disease or create entry points for pathogens.",
      treatment: "1.  **Diagnosis:**\n\n"
          "- Carefully observe symptoms to identify the specific disease if possible. Consult an an arborist or agricultural expert for confirmation.\n\n"
          "2.  **Sanitation:**\n\n"
          "- Prune and destroy (burn or bury deeply) all diseased plant parts, including infected fruits, leaves, and branches. Disinfect pruning tools with bleach solution.\n"
          "- Collect and dispose of fallen fruit and leaves from around the tree base.\n\n"
          "3.  **Cultural Practices:**\n\n"
          "- **Nutrition:** Ensure proper fertilization to maintain tree vigor and resistance.\n"
          "- **Watering:** Provide adequate, consistent watering, avoiding waterlogging.\n"
          "- **Pruning:** Maintain an open canopy to improve air circulation and reduce humidity.\n\n"
          "4.  **Fungicides (if specific fungal disease is identified):**\n\n"
          "- **For Anthracnose:** Apply copper-based fungicides or synthetic fungicides (e.g., Azoxystrobin, Mancozeb) during susceptible periods (flowering, fruit development), especially in wet weather.\n"
          "- **For Wilt:** No effective chemical cure once established. Focus on prevention and resistant varieties. Some biological agents might help in early stages.\n"
          "- Always follow label instructions for application rates and safety.\n\n"
          "5.  **Resistant Varieties:**\n\n"
          "- Where available and suitable for your region, plant disease-resistant guava varieties.",
    ),
    DiseaseInfoModel(
      diseaseId: "Gauva__healthy",
      name: "Healthy Guava Tree",
      explanation: "A healthy guava tree displays lush, green foliage, sturdy branches, and abundant, well-formed fruit. Leaves are free from spots, yellowing, or signs of pest damage. The trunk and branches are smooth, without visible cankers or dieback. The tree exhibits vigorous growth and overall vitality, indicating optimal health and productive capacity.",
      possibleCauses: "—",
      treatment: "1.  **Optimal Growing Conditions:**\n\n"
          "- Plant in full sun with well-drained, fertile soil.\n\n"
          "2.  **Balanced Fertilization:**\n\n"
          "- Apply balanced fertilizers appropriate for fruit trees, based on soil analysis.\n\n"
          "3.  **Consistent Watering:**\n\n"
          "- Provide regular deep watering, especially during dry periods and fruit development.\n\n"
          "4.  **Proper Pruning:**\n\n"
          "- Prune annually to maintain tree shape, remove dead/weak branches, and ensure good air circulation within the canopy.\n\n"
          "5.  **Pest & Disease Monitoring:**\n\n"
          "- Regularly inspect the tree for early signs of pests or diseases and implement integrated pest management (IPM) strategies proactively.",
    ),
    DiseaseInfoModel(
      diseaseId: "Grape__black_measles",
      name: "Grape Black Measles (Esca Complex)",
      explanation: "Grape Black Measles, or Esca disease complex, is a chronic grapevine trunk disease caused by a combination of fungi (e.g., *Phaeomoniella chlamydospora*, *Phaeoacremonium minimum*, *Fomitiporia mediterranea*). It causes distinct symptoms on leaves, berries, and wood.\n\n"
          "- **Leaf Symptoms:** Interveinal chlorosis (yellowing between veins) and necrosis (browning), giving a 'tiger-striped' appearance. Leaves may shrivel and fall prematurely, often appearing suddenly in mid-summer ('apoplectic' form).\n"
          "- **Berry Symptoms:** Dark spots or purple discoloration on berries, leading to shriveling and cracking.\n"
          "- **Wood Symptoms:** Internally, wood shows characteristic dark streaking and soft, spongy white rot, particularly in older wood. External symptoms include stunted growth, poor vine vigor, and sometimes sudden vine collapse.",
      possibleCauses: "The fungi associated with Black Measles are typically:\n\n"
          "- **Wound Pathogens:** They enter the vine through pruning wounds, grafting wounds, or other mechanical injuries.\n"
          "- **Overwintering:** Fungi survive in infected wood within the vine or in dead wood in the vineyard.\n"
          "- **Moisture:** Wet weather during and after pruning increases the risk of infection.\n\n"
          "Disease development is slow; symptoms may not appear for several years after infection.",
      treatment: "1.  **Prevention of Infection (Most Critical):**\n\n"
          "- **Pruning Wound Protection:** Apply wound protectants (e.g., thiophanate-methyl, benomyl, or biological agents like *Trichoderma* formulations) immediately after pruning, especially for larger cuts.\n"
          "- **Pruning Timing:** Prune in dry weather conditions, if possible, to minimize spore germination and infection.\n\n"
          "2.  **Sanitation:**\n\n"
          "- Remove and destroy (burn or chip away from vineyard) all severely infected or dead vines.\n"
          "- Rogue out (cut out) symptomatic cordons or arms where feasible.\n\n"
          "3.  **Vineyard Management:**\n\n"
          "- Maintain vine vigor through proper nutrition and irrigation.\n"
          "- Minimize mechanical injuries to vines.\n\n"
          "4.  **Chemical Treatments (Limited Effectiveness for Established Disease):**\n\n"
          "- Fungicides are generally not curative for established trunk diseases. Some phosphonates or strobilurins may offer some suppression or improve vine vigor if applied preventively.\n"
          "- For high-value vineyards, some curative practices like 'surgery' (removing infected wood) followed by wound protection are attempted.\n\n"
          "5.  **Resistant Rootstocks/Varieties:**\n\n"
          "- No fully resistant varieties, but some rootstocks or cultivars may show more tolerance.",
    ),
    DiseaseInfoModel(
      diseaseId: "Grape__black_rot",
      name: "Grape Black Rot",
      explanation: "Grape Black Rot is a highly destructive fungal disease caused by *Guignardia bidwellii*. It affects all green parts of the vine, primarily leaves and fruit.\n\n"
          "- **Leaf Symptoms:** Small, reddish-brown circular spots that enlarge, become tan to brown, and develop a dark border. Tiny black pimple-like structures (pycnidia) appear within the spots.\n"
          "- **Fruit Symptoms:** Infected berries first develop a small, light-colored spot. This spot rapidly enlarges, turns brown, and the entire berry shrivels and becomes a hard, black, wrinkled mummy, often covered with pycnidia.\n"
          "- **Shoot/Tendril Lesions:** Elongated, black, sunken lesions may also occur on young shoots and tendrils.",
      possibleCauses: "The fungus overwinters in:\n\n"
          "- **Mummified Berries:** Primarily in infected, shriveled berries (mummies) on the vine or on the vineyard floor.\n"
          "- **Cankers:** Can also survive in cane or tendril cankers.\n\n"
          "The disease thrives in:\n\n"
          "- **Warm, Wet Conditions:** Requires warm temperatures (20-27°C) and at least 6 hours of continuous leaf wetness for infection.\n"
          "- **Spore Dispersal:** Spores (ascospores from mummies, conidia from new lesions) are spread by rain splash and wind.",
      treatment: "1.  **Sanitation (Crucial):**\n\n"
          "- Remove and destroy all mummified berries from the vines and vineyard floor during dormancy. This significantly reduces primary inoculum.\n"
          "- Prune out any infected canes or tendrils.\n\n"
          "2.  **Fungicides:**\n\n"
          "- Apply protective fungicides (e.g., Mancozeb, Captan) or systemic fungicides (e.g., Myclobutanil, Fenarimol, Azoxystrobin) preventively.\n"
          "- Start applications at bud break and continue through veraison (start of fruit coloring), especially during wet periods. Repeat every 7-14 days based on product label and weather.\n"
          "- Rotate fungicides to prevent resistance.\n\n"
          "3.  **Cultural Practices:**\n\n"
          "- **Air Circulation:** Prune vines for an open canopy to improve air circulation and sunlight penetration, promoting faster drying of foliage.\n"
          "- **Weed Control:** Keep weeds down to improve air flow around the base of vines.\n"
          "- **Site Selection:** Plant grapes in well-drained sites with good air movement.",
    ),
    DiseaseInfoModel(
      diseaseId: "Grape__healthy",
      name: "Healthy Grape Vine",
      explanation: "A healthy grape vine exhibits robust growth with lush, vibrant green leaves free from spots, discoloration, or distortion. Shoots are vigorous, and clusters of well-formed, healthy grapes are developing evenly. The vine shows no signs of fungal growth, pest damage, cankers, or stunted growth, indicating optimal health and productive potential.",
      possibleCauses: "—",
      treatment: "1.  **Optimal Site & Soil:**\n\n"
          "- Plant in full sun with well-drained, fertile soil, ideally on a slope for good drainage.\n\n"
          "2.  **Proper Training & Pruning:**\n\n"
          "- Establish a suitable trellis system and prune annually to manage vine vigor, optimize fruit production, and improve air circulation.\n\n"
          "3.  **Balanced Nutrition:**\n\n"
          "- Apply fertilizers based on soil tests to meet the vine's specific nutrient requirements throughout its growth cycle.\n\n"
          "4.  **Adequate Watering:**\n\n"
          "- Provide consistent moisture, especially during dry periods, but avoid overwatering. Drip irrigation is often preferred.\n\n"
          "5.  **Pest & Disease Monitoring:**\n\n"
          "- Regularly inspect vines for early signs of issues and implement integrated pest management (IPM) strategies proactively.\n\n"
          "6.  **Resistant Varieties:**\n\n"
          "- Choose grape varieties (Vitis vinifera or hybrids) known for their resistance to common diseases in your region.",
    ),
    DiseaseInfoModel(
      diseaseId: "Grape__leaf_blight_(isariopsis_leaf_spot)",
      name: "Grape Leaf Blight (Isariopsis Leaf Spot)",
      explanation: "Grape Leaf Blight, also known as Isariopsis Leaf Spot, is caused by the fungus *Isariopsis clavispora*. It primarily affects grape leaves, causing numerous small, angular, dark brown to black spots. These spots often appear on the upper leaf surface, and on the underside, a velvety, olive-green to black fungal growth may be visible. Severe infection can lead to premature leaf senescence and defoliation, weakening the vine and potentially affecting fruit quality and yield in subsequent years.",
      possibleCauses: "The fungus overwinters in:\n\n"
          "- **Infected Leaves:** Primarily in fallen, infected grape leaves.\n"
          "- **Cane Lesions:** Can also survive in small lesions on canes.\n\n"
          "The disease thrives in:\n\n"
          "- **High Humidity & Wetness:** Requires prolonged periods of leaf wetness and warm temperatures (20-25°C) for spore germination and infection.\n"
          "- **Dense Canopy:** Poor air circulation in dense canopies promotes humidity.",
      treatment: "1.  **Sanitation:**\n\n"
          "- Remove and destroy (burn or deeply bury) fallen leaves at the end of the growing season to reduce overwintering inoculum.\n\n"
          "2.  **Cultural Practices:**\n\n"
          "- **Pruning:** Prune vines to ensure good air circulation and light penetration within the canopy, helping leaves dry faster after rain or dew.\n"
          "- **Weed Control:** Manage weeds to improve air flow around the base of vines.\n\n"
          "3.  **Fungicides:**\n\n"
          "- Apply protective fungicides such as Mancozeb, Captan, or Copper-based fungicides.\n"
          "- Applications typically begin before symptoms appear, especially during periods of wet weather favorable for disease development. Follow product labels for rates and intervals.\n"
          "- Rotate fungicides to prevent resistance.\n\n"
          "4.  **Resistant Varieties:**\n\n"
          "- Choose grape varieties with known resistance or tolerance to Isariopsis Leaf Spot if available for your region.",
    ),
    DiseaseInfoModel(
      diseaseId: "Jamun__diseased",
      name: "Jamun Diseased (General)",
      explanation: "This category signifies a general diseased state in Jamun (Java Plum), exhibiting various symptoms that impact the tree's health and fruit production, such as:\n\n"
          "- **Leaf Spots/Blights:** Discolored spots, patches, or blighted areas on leaves, often leading to premature defoliation.\n"
          "- **Fruit Rot/Spots:** Lesions, discoloration, or softening of Jamun fruits, making them inedible or reducing market value.\n"
          "- **Cankers/Dieback:** Sunken, necrotic lesions on branches or twigs, potentially causing dieback and branch mortality.\n"
          "- **Wilting/Gummosis:** General wilting of branches or the entire tree, often accompanied by gum exudation from the trunk or branches, indicative of vascular or stem diseases.",
      possibleCauses: "Various pathogens and environmental factors can cause diseases in Jamun:\n\n"
          "- **Fungal Pathogens:** Common causes include fungi responsible for leaf spots (e.g., *Cercospora*, *Colletotrichum*), anthracnose, rusts, and root rot diseases.\n"
          "- **Bacterial Pathogens:** Can cause leaf spots or cankers.\n"
          "- **Nutrient Deficiencies:** Imbalances can weaken the tree and make it more susceptible to disease.\n"
          "- **Water Stress:** Both drought and waterlogging can lead to stress and disease symptoms.\n"
          "- **Pest Infestations:** Some pests can cause direct damage or act as vectors for pathogens.",
      treatment: "1.  **Diagnosis:**\n\n"
          "- Observe symptoms carefully. For specific diagnosis, it may be necessary to consult a local agricultural extension or plant pathologist.\n\n"
          "2.  **Sanitation:**\n\n"
          "- Remove and destroy (burn or bury deeply) all infected plant parts, including fallen leaves, diseased fruits, and cankered branches. Disinfect pruning tools.\n\n"
          "3.  **Cultural Practices:**\n\n"
          "- **Pruning:** Prune to improve air circulation within the canopy and remove dead or weak branches.\n"
          "- **Nutrition:** Ensure balanced fertilization to maintain tree vigor.\n"
          "- **Watering:** Provide consistent, adequate watering, especially during dry periods, but ensure good drainage to prevent root rot.\n\n"
          "4.  **Fungicides/Bactericides (if specific disease is identified):**\n\n"
          "- **For Fungal Leaf Spots/Anthracnose:** Apply appropriate fungicides (e.g., copper-based, Mancozeb, Carbendazim) preventively or at the first sign of disease.\n"
          "- **For Bacterial Issues:** Copper-based sprays might offer some protection.\n"
          "- Always follow product labels for application rates, timing, and safety.\n\n"
          "5.  **Resistant Varieties:**\n\n"
          "- If available, choose Jamun varieties known to be more resistant to common local diseases.",
    ),
    DiseaseInfoModel(
      diseaseId: "Jamun__healthy",
      name: "Healthy Jamun (Java Plum) Tree",
      explanation: "A healthy Jamun tree exhibits lush, dense green foliage, a robust trunk, and strong branches. Leaves are free from spots, yellowing, or deformities. The tree produces abundant, well-formed, and ripening fruit (Jamuns) without any lesions or signs of rot. Overall, the tree displays vigorous growth and vitality, indicative of optimal health and productivity.",
      possibleCauses: "—",
      treatment: "1.  **Optimal Growing Conditions:**\n\n"
          "- Plant in full sun with well-drained, fertile soil. Jamun is relatively adaptable.\n\n"
          "2.  **Balanced Fertilization:**\n\n"
          "- Provide balanced nutrients, especially for young trees and during fruiting periods, based on soil analysis.\n\n"
          "3.  **Adequate Watering:**\n\n"
          "- Ensure consistent moisture, particularly during flowering and fruiting, but avoid waterlogging.\n\n"
          "4.  **Proper Pruning:**\n\n"
          "- Prune regularly to maintain tree shape, remove dead or weak wood, and encourage good air circulation.\n\n"
          "5.  **Pest & Disease Monitoring:**\n\n"
          "- Conduct routine inspections for any early signs of pests or diseases to allow for prompt, targeted intervention.",
    ),
    DiseaseInfoModel(
      diseaseId: "Lemon__diseased",
      name: "Lemon Diseased (General)",
      explanation: "This category encompasses various diseases affecting lemon trees, indicated by symptoms such as:\n\n"
          "- **Leaf Symptoms:** Yellowing (chlorosis), spots (dark, oily, sunken), blight, distortion, or premature leaf drop.\n"
          "- **Fruit Lesions/Rot:** Spots, scabs, cankers, decay, or abnormal development on lemons themselves.\n"
          "- **Twig/Branch Dieback:** Tips or entire branches dying back, often associated with cankers or gumming.\n"
          "- **Gummosis:** Exudation of sticky gum from the trunk or branches.\n"
          "- **Overall Decline:** Stunted growth, reduced vigor, or wilting of the entire tree.\n\n"
          "Common lemon diseases include Citrus Canker, Scab, Gummosis, and Tristeza Virus.",
      possibleCauses: "Diseases in lemon trees can stem from:\n\n"
          "- **Fungal Pathogens:** E.g., *Phytophthora* spp. (Gummosis, Root Rot), *Elsinoë fawcettii* (Citrus Scab), *Colletotrichum gloeosporioides* (Anthracnose).\n"
          "- **Bacterial Pathogens:** E.g., *Xanthomonas axonopodis pv. citri* (Citrus Canker).\n"
          "- **Viral Pathogens:** E.g., Citrus Tristeza Virus (CTV), transmitted by aphids.\n"
          "- **Nutrient Deficiencies/Toxicities:** Can lead to symptoms mimicking disease.\n"
          "- **Environmental Stress:** Drought, waterlogging, temperature extremes, or soil salinity.\n"
          "- **Pests:** Some pests (e.g., scale insects, citrus leafminer) cause direct damage or spread disease.",
      treatment: "1.  **Diagnosis:**\n\n"
          "- Carefully observe symptoms to identify the specific disease. Genetic tests or lab analysis might be needed for viral diseases. Consult local extension services.\n\n"
          "2.  **Sanitation:**\n\n"
          "- Remove and destroy (burn or bag and dispose of) all infected leaves, fruits, and branches. Disinfect pruning tools with a 10% bleach solution or ethanol.\n"
          "- Collect and dispose of fallen diseased debris.\n\n"
          "3.  **Cultural Practices:**\n\n"
          "- **Watering:** Ensure proper irrigation, avoiding waterlogging. For Gummosis, avoid wetting the trunk.\n"
          "- **Nutrition:** Maintain balanced soil fertility and address any nutrient deficiencies based on soil/leaf analysis.\n"
          "- **Air Circulation & Pruning:** Prune to improve air circulation within the canopy and remove dead or weak wood. Avoid unnecessary wounding.\n"
          "- **Site Selection:** Plant in well-drained soil.\n\n"
          "4.  **Chemical Control (if specific disease is identified):**\n\n"
          "- **For Fungal:** Copper-based fungicides (e.g., Copper Hydroxide) are broadly effective against many fungal issues. Specific systemic fungicides may be used for particular diseases (e.g., strobilurins).\n"
          "- **For Bacterial Canker:** Copper sprays are preventive and suppressive but not curative. Strict quarantine is essential.\n"
          "- **For Viral:** No chemical cure for viral diseases. Focus on vector control and removing infected plants.\n"
          "- Always follow product labels for application rates, timing, and safety.\n\n"
          "5.  **Resistant Rootstocks/Varieties:**\n\n"
          "- Use disease-resistant rootstocks (e.g., for Phytophthora or Tristeza) and plant varieties known for resistance to common local diseases.",
    ),
    DiseaseInfoModel(
      diseaseId: "Lemon__healthy",
      name: "Healthy Lemon Tree",
      explanation: "A healthy lemon tree is characterized by lush, glossy, dark green leaves with no signs of yellowing, spots, or curling. Branches are robust, and the tree produces abundant, well-formed lemons that ripen uniformly. There are no visible cankers, gumming, or signs of pest infestation or disease symptoms. The tree exhibits vigorous growth and overall vitality.",
      possibleCauses: "—",
      treatment: "1.  **Optimal Growing Conditions:**\n\n"
          "- Plant in full sun (at least 8 hours daily) with well-drained, slightly acidic soil.\n\n"
          "2.  **Balanced Fertilization:**\n\n"
          "- Apply citrus-specific fertilizers regularly, providing essential macro and micronutrients.\n\n"
          "3.  **Consistent Watering:**\n\n"
          "- Water deeply and regularly, allowing the topsoil to dry slightly between waterings. Avoid waterlogging.\n\n"
          "4.  **Proper Pruning:**\n\n"
          "- Prune to maintain tree shape, remove dead/weak branches, improve air circulation, and promote fruit production.\n\n"
          "5.  **Pest & Disease Monitoring:**\n\n"
          "- Regularly inspect the tree for early signs of pests or diseases and implement integrated pest management (IPM) strategies proactively.\n\n"
          "6.  **Protection:**\n\n"
          "- Protect young trees from frost and ensure adequate air circulation around the trunk.",
    ),
    DiseaseInfoModel(
      diseaseId: "Mango__diseased",
      name: "Mango Diseased (General)",
      explanation: "This category covers a general diseased state in mango trees, manifesting through various symptoms affecting leaves, flowers, fruit, and branches:\n\n"
          "- **Leaf Symptoms:** Spots, blight (large necrotic areas), powdery white growth, sooty mold, or distortions.\n"
          "- **Flower/Fruit Symptoms:** Black spots on flowers or young fruits (anthracnose), malformed or rotten fruits, internal discoloration or decay.\n"
          "- **Stem/Branch Symptoms:** Dieback (tips or branches dying), cankers (sunken lesions), or gummosis (exudation of sap).\n"
          "- **Overall Decline:** Stunting, wilting, or general loss of vigor.",
      possibleCauses: "Mango trees are susceptible to several diseases, including:\n\n"
          "- **Fungal Pathogens:**\n"
          "  - **Anthracnose (*Colletotrichum gloeosporioides*):** Most common, causes black spots on leaves, flowers, and fruit, leading to blossom blight and fruit rot, especially in humid conditions.\n"
          "  - **Powdery Mildew (*Oidium mangiferae*):** White, powdery growth on young leaves, flowers, and fruit, causing distortion and poor fruit set.\n"
          "  - **Malformation (*Fusarium mangiferae*):** Affects vegetative or floral buds, causing abnormal, compact growth that doesn't produce fruit.\n"
          "  - **Sooty Mold:** Develops on honeydew excreted by sap-sucking insects.\n"
          "- **Bacterial Pathogens:** Less common but can cause bacterial black spot.\n"
          "- **Pest Infestations:** Severe insect damage can mimic disease or predispose trees to infection.\n"
          "- **Nutrient Deficiencies/Environmental Stress:** Can weaken trees and make them more vulnerable.",
      treatment: "1.  **Diagnosis:**\n\n"
          "- Identify specific disease if possible. Consult local agricultural extension or plant pathologist.\n\n"
          "2.  **Sanitation:**\n\n"
          "- **Pruning:** Remove and destroy all diseased branches, leaves, and fruits (including fallen ones) to reduce inoculum. Disinfect pruning tools with a 10% bleach solution.\n"
          "- **Clean-up:** Ensure the area around the tree is free of plant debris.\n\n"
          "3.  **Cultural Practices:**\n\n"
          "- **Pruning:** Maintain an open canopy to improve air circulation and sunlight penetration, which helps reduce humidity and disease spread.\n"
          "- **Watering:** Provide adequate, consistent watering, especially during dry periods, but avoid overhead irrigation during flowering/fruiting if possible.\n"
          "- **Nutrition:** Ensure balanced fertilization to maintain tree vigor and health.\n"
          "- **Weed Control:** Manage weeds around the tree base.\n\n"
          "4.  **Fungicides (for specific fungal diseases):**\n\n"
          "- **For Anthracnose:** Apply copper-based fungicides (e.g., Bordeaux mixture, copper hydroxide) or systemic fungicides (e.g., Azoxystrobin, Benomyl) preventively, especially during flowering and fruit development in wet conditions.\n"
          "- **For Powdery Mildew:** Apply sulfur-based fungicides or specific mildewicides (e.g., Myclobutanil) as soon as symptoms appear or preventively.\n"
          "- **For Malformation:** No effective chemical cure; focus on removing affected parts and using resistant varieties.\n"
          "- Always follow product labels for application rates, timing, and pre-harvest intervals.\n\n"
          "5.  **Pest Management:**\n\n"
          "- Control sap-sucking insects (e.g., mealybugs, aphids) that produce honeydew, which leads to sooty mold.\n\n"
          "6.  **Resistant Varieties:**\n\n"
          "- Where available, plant mango varieties known to be resistant or tolerant to common diseases in your area.",
    ),
    DiseaseInfoModel(
      diseaseId: "Mango__healthy",
      name: "Healthy Mango Tree",
      explanation: "A healthy mango tree displays a dense canopy of lush, dark green leaves free from spots, discoloration, or distortions. Branches are strong and well-formed. The tree produces abundant, uniformly sized, and blemish-free mangoes. There are no signs of dieback, cankers, or significant pest infestations. The tree exhibits vigorous growth and overall vitality, indicating optimal health and productivity.",
      possibleCauses: "—",
      treatment: "1.  **Optimal Growing Conditions:**\n\n"
          "- Plant in full sun with well-drained, deep, fertile soil.\n\n"
          "2.  **Balanced Fertilization:**\n\n"
          "- Apply appropriate mango-specific fertilizers, ensuring adequate nitrogen for vegetative growth and phosphorus/potassium for flowering and fruiting.\n\n"
          "3.  **Consistent Watering:**\n\n"
          "- Provide regular deep watering, especially during dry seasons and critical growth stages (flowering, fruit set, fruit development). Avoid waterlogging.\n\n"
          "4.  **Proper Pruning:**\n\n"
          "- Prune young trees for good structure and mature trees to maintain size, improve air circulation, remove dead/weak wood, and encourage fruit production.\n\n"
          "5.  **Pest & Disease Monitoring:**\n\n"
          "- Regularly inspect the tree for early signs of pests or diseases and implement integrated pest management (IPM) strategies proactively. This includes regular scouting for common issues like anthracnose or powdery mildew, especially during humid periods.\n\n"
          "6.  **Weed Control:**\n\n"
          "- Keep the area around the tree base free of weeds to reduce competition for nutrients and water.",
    ),
    DiseaseInfoModel(
      diseaseId: "Peach__bacterial_spot",
      name: "Peach Bacterial Spot",
      explanation: "Peach Bacterial Spot is caused by the bacterium *Xanthomonas arboricola pv. pruni*. It affects leaves, fruit, and twigs.\n\n"
          "- **Leaf Symptoms:** Small, angular, water-soaked spots that turn purple-brown and often have a yellow halo. These spots can coalesce, and the centers may fall out, creating a 'shot-hole' appearance. Severely infected leaves turn yellow and drop prematurely, leading to defoliation.\n"
          "- **Fruit Symptoms:** Small, dark, circular spots on the fruit surface. These spots enlarge, become sunken, and can crack, allowing entry for secondary rots. This significantly reduces fruit quality and marketability.\n"
          "- **Twig Symptoms:** Dark, sunken lesions (cankers) may develop on twigs, often with gum exudation.",
      possibleCauses: "The bacterium overwinters in:\n\n"
          "- **Twig Cankers:** Primarily in small cankers on twigs.\n\n"
          "The disease thrives in:\n\n"
          "- **Warm, Wet/Humid Conditions:** Spread is favored by rain splash, wind, and temperatures between 20-30°C.\n"
          "- **Wind-driven Rain:** This is particularly effective at spreading the bacteria.\n"
          "- **Susceptible Varieties:** Some peach varieties are highly susceptible.",
      treatment: "1.  **Resistant Varieties:**\n\n"
          "- Plant peach varieties with genetic resistance or tolerance to bacterial spot (e.g., 'Contender', 'Reliance', 'Redskin' have some tolerance). This is the most effective long-term control.\n\n"
          "2.  **Sanitation:**\n\n"
          "- Prune out and destroy (burn or remove from orchard) cankered twigs during dormancy or in dry periods. Disinfect pruning tools.\n\n"
          "3.  **Copper Sprays:**\n\n"
          "- Apply copper-based bactericides (e.g., Copper Hydroxide, Bordeaux mixture) preventively. Dormant copper sprays can reduce overwintering inoculum.\n"
          "- Foliar applications during the growing season (e.g., at petal fall and subsequent cover sprays) can help suppress the disease, but may cause phytotoxicity (leaf spotting) in some varieties. Always test a small area first.\n\n"
          "4.  **Antibiotics (Limited Use):**\n\n"
          "- Some agricultural antibiotics (e.g., Oxytetracycline) can be used, but their effectiveness is variable, and resistance can develop. Often restricted.\n\n"
          "5.  **Cultural Practices:**\n\n"
          "- **Nutrition:** Maintain good tree vigor with balanced fertilization.\n"
          "- **Avoid Overhead Irrigation:** Water at the base of trees to minimize leaf wetness.\n"
          "- **Windbreaks:** Plant windbreaks around the orchard to reduce wind-driven rain and spread.",
    ),
    DiseaseInfoModel(
      diseaseId: "Peach__healthy",
      name: "Healthy Peach Tree",
      explanation: "A healthy peach tree displays vigorous growth, lush green foliage without spots, yellowing, or curling. Branches are strong and free from cankers or gummosis. The tree produces abundant, well-formed, and ripening peaches that are blemish-free. Overall, the tree exhibits good vigor and no visible signs of pest infestation or disease symptoms, indicating optimal health and productivity.",
      possibleCauses: "—",
      treatment: "1.  **Optimal Growing Conditions:**\n\n"
          "- Plant in full sun with well-drained soil.\n\n"
          "2.  **Balanced Fertilization:**\n\n"
          "- Apply appropriate fertilizers based on soil tests to meet the peach tree's nutritional needs throughout the season.\n\n"
          "3.  **Consistent Watering:**\n\n"
          "- Provide regular, deep watering, especially during dry periods and fruit development.\n\n"
          "4.  **Proper Pruning:**\n\n"
          "- Prune annually during dormancy (winter) to maintain tree shape, promote air circulation, remove dead/diseased wood, and encourage fruit production.\n\n"
          "5.  **Pest & Disease Monitoring:**\n\n"
          "- Regularly inspect the tree for early signs of pests or diseases and implement integrated pest management (IPM) strategies proactively.\n\n"
          "6.  **Weed Control:**\n\n"
          "- Keep the area around the tree base free of weeds to reduce competition and improve air flow.",
    ),
    DiseaseInfoModel(
      diseaseId: "Pepper_bell__bacterial_spot",
      name: "Bell Pepper Bacterial Spot",
      explanation: "Bell Pepper Bacterial Spot is caused by several species of *Xanthomonas* bacteria (*X. euvesicatoria*, *X. vesicatoria*, *X. gardneri*, *X. perforans*). It affects leaves, stems, and fruit.\n\n"
          "- **Leaf Symptoms:** Small, water-soaked spots that become dark brown or black and angular, often with a yellow halo. These lesions can coalesce, leading to large necrotic areas and premature defoliation.\n"
          "- **Fruit Symptoms:** On bell peppers, it causes raised, scab-like, dark lesions that are typically circular and rough to the touch. These spots don't usually cause rot but reduce marketability.\n"
          "- **Stem Symptoms:** Elongated, dark, sunken lesions can appear on stems.",
      possibleCauses: "The bacteria are primarily spread through:\n\n"
          "- **Contaminated Seeds/Transplants:** The most common source of initial infection.\n"
          "- **Rain Splash & Wind:** Bacteria are easily spread by wind-driven rain, overhead irrigation, and splashing water.\n"
          "- **Warm, Humid Conditions:** High humidity and temperatures between 24-30°C favor disease development.\n"
          "- **Contaminated Tools:** Tools can spread bacteria between plants.\n"
          "- **Plant Debris:** Bacteria can survive in infected plant debris in the soil.",
      treatment: "1.  **Use Certified Disease-Free Seeds/Transplants:**\n\n"
          "- This is the most critical preventive measure. Source seeds and seedlings from reputable suppliers.\n\n"
          "2.  **Sanitation:**\n\n"
          "- Remove and destroy (do not compost) infected plants and all plant debris after harvest to reduce overwintering inoculum. Disinfect tools regularly.\n\n"
          "3.  **Cultural Practices:**\n\n"
          "- **Crop Rotation:** Rotate bell peppers with non-solanaceous crops (e.g., corn, beans) for at least 2-3 years.\n"
          "- **Watering:** Avoid overhead irrigation; use drip irrigation or water at the base of plants to minimize leaf wetness.\n"
          "- **Air Circulation:** Space plants adequately to promote good air circulation and faster drying of foliage.\n\n"
          "4.  **Copper-based Bactericides:**\n\n"
          "- Apply copper-based bactericides (e.g., Copper Hydroxide, Copper Oxychloride, fixed coppers) preventively or at the first sign of disease.\n"
          "- Applications need to be frequent during favorable conditions. Resistance to copper can develop.\n"
          "- Some biological control agents (*Bacillus subtilis* e.g., Serenade ASO) can be used in combination with or instead of copper.\n\n"
          "5.  **Resistant Varieties:**\n\n"
          "- Plant bell pepper varieties with genetic resistance to bacterial spot (look for varieties with 'X' genes, e.g., X3R, X5R, X10R).",
    ),
    DiseaseInfoModel(
      diseaseId: "Pepper_bell__healthy",
      name: "Healthy Bell Pepper Plant",
      explanation: "A healthy bell pepper plant exhibits vibrant green, unblemished leaves, sturdy stems, and well-formed, glossy bell peppers. The plant displays vigorous growth, dense foliage, and no signs of yellowing, spots, curling, or pest damage. Flowers are abundant, indicating good potential for fruit set and a productive season.",
      possibleCauses: "—",
      treatment: "1.  **Optimal Sunlight:**\n\n"
          "- Provide at least 6-8 hours of direct sunlight daily.\n\n"
          "2.  **Well-Drained Soil:**\n\n"
          "- Plant in fertile, well-drained soil rich in organic matter.\n\n"
          "3.  **Consistent Watering:**\n\n"
          "- Keep soil consistently moist but not waterlogged. Avoid extreme fluctuations.\n\n"
          "4.  **Balanced Fertilization:**\n\n"
          "- Use a balanced fertilizer during vegetative growth, transitioning to one higher in phosphorus and potassium for flowering and fruiting.\n\n"
          "5.  **Proper Spacing:**\n\n"
          "- Ensure adequate spacing between plants for good air circulation.\n\n"
          "6.  **Pest & Disease Scouting:**\n\n"
          "- Regularly inspect plants for early signs of pests or diseases and address them promptly using integrated pest management (IPM) techniques.",
    ),
    DiseaseInfoModel(
      diseaseId: "Pomegranate__diseased",
      name: "Pomegranate Diseased (General)",
      explanation: "This category indicates a general diseased state in pomegranate, with symptoms such as:\n\n"
          "- **Leaf Symptoms:** Spots, blight, yellowing, or defoliation.\n"
          "- **Fruit Symptoms:** Lesions, cracking, internal rot, or external discoloration (e.g., black spots, sunken areas) making fruit unmarketable.\n"
          "- **Twig/Branch Symptoms:** Dieback (drying and death of shoots), cankers (sunken lesions), or splitting of bark.\n"
          "- **Overall Decline:** Stunting, wilting, or reduced tree vigor.\n\n"
          "Common pomegranate diseases include Anthracnose, Bacterial Blight, and Fruit Rot.",
      possibleCauses: "Pomegranates can be affected by various pathogens:\n\n"
          "- **Fungal Pathogens:** E.g., *Colletotrichum gloeosporioides* (Anthracnose), *Alternaria* spp. (Fruit Rot), *Cercospora* spp. (Leaf Spot).\n"
          "- **Bacterial Pathogens:** E.g., *Xanthomonas axonopodis pv. punicae* (Bacterial Blight).\n"
          "- **Environmental Stress:** Poor drainage, drought, nutrient deficiencies, or cold damage can predispose trees to disease.\n"
          "- **Pest Damage:** Some pests can create wounds that serve as entry points for pathogens.",
      treatment: "1.  **Diagnosis:**\n\n"
          "- Observe symptoms closely to narrow down the specific disease. Consult a local agricultural expert for accurate diagnosis.\n\n"
          "2.  **Sanitation:**\n\n"
          "- Remove and destroy (burn or bury deeply) all infected plant parts, including fallen leaves, diseased fruits, and cankered branches. Disinfect pruning tools thoroughly after each cut.\n\n"
          "3.  **Cultural Practices:**\n\n"
          "- **Pruning:** Prune to improve air circulation within the canopy, remove dead or weak wood, and open the tree to sunlight.\n"
          "- **Watering:** Provide consistent, adequate watering, especially during dry periods, but ensure excellent drainage to prevent root issues.\n"
          "- **Nutrition:** Maintain balanced soil fertility to ensure tree vigor and natural resistance.\n\n"
          "4.  **Fungicides/Bactericides (if specific disease is identified):**\n\n"
          "- **For Fungal Diseases (e.g., Anthracnose, Fruit Rot):** Apply copper-based fungicides (e.g., Bordeaux mixture, copper hydroxide) or broad-spectrum fungicides (e.g., Mancozeb, Azoxystrobin) preventively, especially during flowering and fruit development in humid conditions.\n"
          "- **For Bacterial Blight:** Copper sprays are the primary chemical control, applied preventively before expected disease conditions. Some biological treatments may also be used.\n"
          "- Always follow product labels for application rates, timing, and safety.\n\n"
          "5.  **Resistant Varieties:**\n\n"
          "- Where available, plant pomegranate varieties known to exhibit resistance or tolerance to common diseases in your area.",
    ),
    DiseaseInfoModel(
      diseaseId: "Pomegranate__healthy",
      name: "Healthy Pomegranate Tree",
      explanation: "A healthy pomegranate tree features vibrant green leaves free from spots or discoloration, sturdy branches, and abundant, well-formed fruits. The bark is smooth without cankers or gummosis. The tree exhibits vigorous growth, dense foliage, and no visible signs of pest infestation or disease symptoms, indicating optimal health and high productivity.",
      possibleCauses: "—",
      treatment: "1.  **Optimal Growing Conditions:**\n\n"
          "- Plant in full sun with well-drained, slightly acidic to alkaline soil.\n\n"
          "2.  **Balanced Fertilization:**\n\n"
          "- Apply appropriate fertilizers based on soil tests to meet the tree's nutritional needs.\n\n"
          "3.  **Consistent Watering:**\n\n"
          "- Provide regular deep watering, especially during dry periods and fruit development. Pomegranates are drought-tolerant once established but benefit from regular water.\n\n"
          "4.  **Proper Pruning:**\n\n"
          "- Prune annually to maintain tree structure, promote air circulation, remove suckers and dead/weak wood, and encourage fruit production.\n\n"
          "5.  **Pest & Disease Monitoring:**\n\n"
          "- Regularly inspect the tree for early signs of pests (e.g., aphids, mealybugs) or diseases and implement integrated pest management (IPM) strategies proactively.",
    ),
    DiseaseInfoModel(
      diseaseId: "Potato__early_blight",
      name: "Potato Early Blight",
      explanation: "Potato Early Blight is a common fungal disease caused by *Alternaria solani*. It primarily affects older leaves first and then progresses upwards.\n\n"
          "- **Leaf Symptoms:** Characterized by dark brown to black circular spots that often have distinct concentric rings (resembling a 'bull's-eye' target). A yellow halo may surround the spots. As lesions enlarge and coalesce, entire leaves may yellow and die prematurely.\n"
          "- **Stem Symptoms:** Similar lesions can appear on stems.\n"
          "- **Tuber Symptoms:** Less common, but tubers can develop dark, slightly sunken, firm lesions.",
      possibleCauses: "The fungus overwinters in:\n\n"
          "- **Infected Plant Debris:** Primarily in infected potato (or other Solanaceae) residue from previous crops.\n"
          "- **Soil:** Can survive in the soil for a limited time.\n\n"
          "The disease thrives in:\n\n"
          "- **Warm, Humid Conditions:** Favored by warm temperatures (20-29°C) and prolonged periods of leaf wetness from rain or dew (at least 6-8 hours).\n"
          "- **Plant Stress:** Plants under stress (e.g., drought, nutrient deficiency, heavy fruit load) are more susceptible.\n"
          "- **Spore Dispersal:** Spores are spread by wind, rain splash, and contaminated farm tools.",
      treatment: "1.  **Sanitation:**\n\n"
          "- Remove and destroy all potato volunteer plants and crop debris after harvest. This significantly reduces inoculum for the next season. Avoid leaving cull piles.\n\n"
          "2.  **Cultural Practices:**\n\n"
          "- **Crop Rotation:** Rotate potatoes with non-solanaceous crops (e.g., corn, cereals) for at least 2-3 years.\n"
          "- **Watering:** Use drip or furrow irrigation to minimize leaf wetness. If using overhead irrigation, water in the morning to allow foliage to dry quickly.\n"
          "- **Nutrition:** Ensure balanced fertilization, especially adequate nitrogen and potassium, to maintain plant vigor.\n"
          "- **Proper Spacing:** Provide adequate spacing to improve air circulation.\n\n"
          "3.  **Resistant Varieties:**\n\n"
          "- Plant early blight resistant or tolerant potato varieties if available.\n\n"
          "4.  **Fungicides:**\n\n"
          "- Apply protective fungicides such as Chlorothalonil (e.g., Bravo), Mancozeb (e.g., Dithane M-45), or copper-based fungicides.\n"
          "- Systemic fungicides (e.g., Azoxystrobin, Pyraclostrobin, Difenoconazole) are also effective.\n"
          "- Begin applications preventively before symptoms appear (e.g., at tuber initiation) or at the first sign of disease, especially during favorable conditions. Follow product labels for rates and intervals. Rotate fungicides to prevent resistance.\n\n"
          "5.  **Hilling:**\n\n"
          "- Ensure good hilling to protect tubers from infection.",
    ),
    DiseaseInfoModel(
      diseaseId: "Potato__healthy",
      name: "Healthy Potato Plant",
      explanation: "A healthy potato plant exhibits strong, upright stems and lush, vibrant green foliage without any spots, discoloration, or signs of wilting. The leaves are broad and intact, indicating vigorous growth and efficient photosynthesis. The plant shows no visible symptoms of pest infestation or disease, promising a good yield of healthy tubers below ground.",
      possibleCauses: "—",
      treatment: "1.  **Use Certified Seed Potatoes:**\n\n"
          "- Always plant certified disease-free seed potatoes to prevent introducing pathogens.\n\n"
          "2.  **Optimal Planting:**\n\n"
          "- Plant at the correct depth and spacing in well-drained, fertile soil.\n\n"
          "3.  **Balanced Fertilization:**\n\n"
          "- Apply appropriate NPK fertilizers and micronutrients based on soil tests and crop needs.\n\n"
          "4.  **Consistent Watering:**\n\n"
          "- Provide consistent moisture, especially during tuber formation and bulking. Avoid extreme fluctuations.\n\n"
          "5.  **Proper Hilling:**\n\n"
          "- Hill soil around plants as they grow to protect developing tubers from light (prevent greening) and disease.\n\n"
          "6.  **Weed Control:**\n\n"
          "- Implement effective weed management to reduce competition for resources and improve air circulation.\n\n"
          "7.  **Pest & Disease Scouting:**\n\n"
          "- Regularly monitor fields for early detection of pests (e.g., Colorado potato beetle, aphids) or diseases and apply integrated pest management (IPM) strategies proactively.",
    ),
    DiseaseInfoModel(
      diseaseId: "Potato__late_blight",
      name: "Potato Late Blight",
      explanation: "Potato Late Blight is a highly destructive and rapidly spreading fungal-like disease caused by the oomycete *Phytophthora infestans*. It can cause widespread crop failure if left unchecked.\n\n"
          "- **Leaf Symptoms:** Begins as small, irregular, water-soaked spots that rapidly enlarge into large, dark brown to black lesions, often with a fuzzy, white fungal growth (sporangia) on the underside of leaves, especially in humid conditions. Infected leaves rapidly shrivel and turn black.\n"
          "- **Stem Symptoms:** Dark brown to black lesions develop on stems, leading to their collapse.\n"
          "- **Tuber Symptoms:** Tubers develop irregular, reddish-brown, dry, corky rot that can extend deep into the potato. Secondary bacterial soft rots often follow, making tubers mushy and foul-smelling. Symptoms may not be visible on tubers at harvest but develop in storage.",
      possibleCauses: "The pathogen overwinters in:\n\n"
          "- **Infected Tubers:** Primarily in infected seed potatoes left in the field from previous seasons (volunteer potatoes) or discarded cull piles.\n\n"
          "The disease thrives in:\n\n"
          "- **Cool, Wet Conditions:** Requires cool temperatures (10-24°C) and prolonged periods of high humidity and leaf wetness (e.g., 8-10 hours of continuous leaf wetness, 90-100% relative humidity).\n"
          "- **Wind & Rain:** Spores (sporangia and zoospores) are rapidly spread by wind and splashing rain over long distances.\n"
          "- **Absence of Resistant Varieties:** Planting susceptible potato varieties increases risk.",
      treatment: "1.  **Use Certified Disease-Free Seed Potatoes:**\n\n"
          "- Absolutely critical. Never plant potatoes from unknown sources or from a previous blighted crop. This is the primary way the disease is introduced.\n\n"
          "2.  **Sanitation:**\n\n"
          "- Eliminate all volunteer potato plants and cull piles. Bury or destroy any infected tubers immediately.\n\n"
          "3.  **Fungicides (Essential for Control):**\n\n"
          "- Apply highly effective systemic fungicides (e.g., Metalaxyl, Mandipropamid, Fluopicolide) or protectant fungicides (e.g., Chlorothalonil, Mancozeb) preventively.\n"
          "- Begin applications early in the season, before symptoms appear, especially in regions with a history of late blight or when weather conditions are favorable. Frequent applications (e.g., every 5-7 days) may be necessary in severe outbreaks.\n"
          "- Rotate fungicides with different modes of action to prevent resistance development (especially for Metalaxyl).\n\n"
          "4.  **Cultural Practices:**\n\n"
          "- **Hilling:** Ensure thorough hilling to cover developing tubers and prevent spores from reaching them.\n"
          "- **Watering:** Use drip or furrow irrigation to minimize leaf wetness. If using overhead, water in the morning to allow foliage to dry quickly.\n"
          "- **Plant Spacing:** Ensure adequate spacing for air circulation.\n"
          "- **Crop Rotation:** While less effective alone due to wind-borne spores, it can help reduce local inoculum.\n\n"
          "5.  **Resistant Varieties:**\n\n"
          "- Plant late blight resistant or tolerant potato varieties if available and suitable for your region.",
    ),
    DiseaseInfoModel(
      diseaseId: "Rice__brown_spot",
      name: "Rice Brown Spot",
      explanation: "Rice Brown Spot is a widespread fungal disease caused by *Bipolaris oryzae* (formerly *Helminthosporium oryzae*). It affects all aerial parts of the rice plant, but is most prominent on leaves and grains.\n\n"
          "- **Leaf Symptoms:** Small, oval to circular, dark brown spots with a yellowish halo. These spots enlarge, often coalescing to form large blighted areas, leading to reduced photosynthetic area and premature leaf drying.\n"
          "- **Grain Symptoms:** Causes dark brown or black spots on the husks and kernels, often leading to partial or complete grain discoloration, reduced grain filling, and lower milling quality.\n\n"
          "This disease is particularly problematic in areas with poor soil fertility or nutrient deficiencies.",
      possibleCauses: "The fungus overwinters in:\n\n"
          "- **Infected Seeds:** Primary source of inoculum, leading to seedling infection.\n"
          "- **Crop Residue:** Survives on infected rice straw and stubble.\n"
          "- **Weeds:** Can infect certain weed species.\n\n"
          "The disease is greatly favored by:\n\n"
          "- **Nutrient Deficiencies:** Especially a lack of silicon, potassium, calcium, or magnesium, and iron toxicity. Poor soil fertility makes plants highly susceptible.\n"
          "- **High Humidity & Wetness:** Long periods of leaf wetness promote spore germination and infection.\n"
          "- **Warm Temperatures:** Optimal range is 20-30°C.\n"
          "- **Spore Dispersal:** Spores are spread by wind, rain splash, and irrigation water.",
      treatment: "1.  **Use Healthy, Treated Seeds:**\n\n"
          "- Plant only certified disease-free seeds. Treat seeds with appropriate fungicides (e.g., Carbendazim, Mancozeb) before sowing.\n\n"
          "2.  **Nutrient Management:**\n\n"
          "- Implement balanced fertilization, addressing any nutrient deficiencies identified through soil testing, especially silicon, potassium, and calcium. Improve soil health.\n\n"
          "3.  **Sanitation:**\n\n"
          "- Remove and destroy (burn or deep plow) infected crop residues after harvest.\n\n"
          "4.  **Water Management:**\n\n"
          "- Maintain optimal water levels in the field. Avoid prolonged drought or excessive flooding.\n\n"
          "5.  **Fungicides:**\n\n"
          "- Apply foliar fungicides (e.g., Carbendazim, Mancozeb, Azoxystrobin, Propiconazole) if the disease severity warrants it, especially during tillering, heading, and grain filling stages.\n"
          "- Timing is crucial, usually starting at first symptoms or when conditions are highly favorable. Always follow label instructions and observe pre-harvest intervals.\n\n"
          "6.  **Resistant Varieties:**\n\n"
          "- Plant brown spot-resistant or tolerant rice varieties where available.",
    ),
    DiseaseInfoModel(
      diseaseId: "Rice__healthy",
      name: "Healthy Rice Plant",
      explanation: "A healthy rice plant displays vibrant green leaves, strong tillers (stems), and uniform panicles (flower heads) with well-filled grains. The leaves are free from spots, discoloration, or lesions, and the overall plant growth is vigorous and upright. There are no visible signs of pest damage, disease symptoms, or nutrient deficiencies, indicating optimal growing conditions.",
      possibleCauses: "—",
      treatment: "1.  **Optimal Planting:**\n\n"
          "- Use certified, high-quality seeds. Plant at appropriate spacing and depth.\n\n"
          "2.  **Balanced Fertilization:**\n\n"
          "- Apply nitrogen, phosphorus, and potassium as per soil test recommendations and crop stage. Include micronutrients if deficient.\n\n"
          "3.  **Proper Water Management:**\n\n"
          "- Maintain optimal water levels for flooded rice (paddy) or ensure consistent moisture for upland rice, avoiding water stress.\n\n"
          "4.  **Weed Control:**\n\n"
          "- Implement timely and effective weed management (manual, chemical, or biological) to reduce competition for resources.\n\n"
          "5.  **Pest & Disease Monitoring:**\n\n"
          "- Regularly scout fields for early detection of pests (e.g., stem borers, leaf folders, plant hoppers) or diseases and apply integrated pest management (IPM) strategies proactively.\n\n"
          "6.  **Resistant Varieties:**\n\n"
          "- Choose rice varieties adapted to your local climate and with good natural resistance to common local pests and diseases.",
    ),
    DiseaseInfoModel(
      diseaseId: "Rice__hispa",
      name: "Rice Hispa (Yellow Hispa)",
      explanation: "Rice Hispa refers to the damage caused by the rice hispa beetle (*Dicladispa armigera* or *Hispa armigera*). Both larvae and adult beetles cause distinct damage to rice plants.\n\n"
          "- **Adult Damage:** Adults feed by scraping the green tissues of young leaves, creating characteristic parallel white streaks on the leaf blade, often from the tip downwards. Heavy feeding leads to whitening and drying of leaves, reducing photosynthetic area.\n"
          "- **Larval Damage:** Larvae mine inside the leaf tissue, creating blotchy, irregular tunnels or blisters, which later turn brown and dry. Severely affected leaves may roll up and die.\n\n"
          "Infested fields often appear yellowish or brownish from a distance.",
      possibleCauses: "The presence of rice hispa beetles is the direct cause of this damage.\n\n"
          "- **Climatic Conditions:** Warm and humid conditions, often associated with a prolonged rainy season, favor the multiplication and spread of the insect.\n"
          "- **Host Plants:** Availability of suitable host plants (rice, and some grasses) for feeding and reproduction.\n"
          "- **Planting Time:** Late-planted rice crops are often more susceptible to heavy infestations.\n"
          "- **Lack of Natural Enemies:** Absence or reduction of natural predators and parasitoids due to indiscriminate pesticide use.",
      treatment: "1.  **Monitoring:**\n\n"
          "- Regularly inspect rice fields, especially during the seedling and tillering stages, for signs of hispa damage or adult beetles.\n\n"
          "2.  **Cultural Control:**\n\n"
          "- **Clipping Leaf Tips:** For young seedlings in the nursery, clip the tips of leaves where eggs are laid and destroy them.\n"
          "- **Netting/Sweeping:** Use hand nets to collect adult beetles, especially in small fields.\n"
          "- **Water Management:** Maintain appropriate water levels in the field; draining water for a short period can sometimes reduce larval populations.\n"
          "- **Crop Rotation/Synchronous Planting:** Plant rice crops synchronously in an area to avoid continuous availability of host plants for the pest.\n\n"
          "3.  **Biological Control:**\n\n"
          "- Conserve and promote natural enemies such as spiders, parasitic wasps (e.g., *Tetrastichus* spp. on eggs), and predatory beetles. Avoid broad-spectrum insecticides.\n\n"
          "4.  **Chemical Control (Use as a last resort):**\n\n"
          "- Apply insecticides if infestation levels are high and causing significant damage, especially during the seedling and early tillering stages.\n"
          "- Recommended insecticides include systemic (e.g., Fipronil, Carbofuran - restricted in some areas) or contact (e.g., Chlorpyrifos, Lambda-cyhalothrin).\n"
          "- Always follow label instructions carefully regarding dosage, timing, and safety precautions. Avoid spraying during flowering to protect pollinators.",
    ),
    DiseaseInfoModel(
      diseaseId: "Rice__leaf_blast",
      name: "Rice Leaf Blast",
      explanation: "Rice Leaf Blast is a highly destructive fungal disease caused by *Magnaporthe oryzae* (formerly *Pyricularia oryzae*). It can infect rice at all growth stages and affect various parts of the plant, including leaves, collars, nodes, and panicles.\n\n"
          "- **Leaf Symptoms:** Characterized by spindle-shaped (diamond-shaped) lesions with pointed ends, typically grayish-green with a dark brown or reddish-brown margin. As lesions mature, the center turns gray or white. Severe infection causes leaves to die back (blight) rapidly, often giving a 'scorched' appearance to the field.",
      possibleCauses: "The fungus overwinters in:\n\n"
          "- **Infected Seeds:** An important source of primary inoculum.\n"
          "- **Crop Residue:** Survives on infected rice stubble and straw.\n"
          "- **Weeds:** Can infect various grass weed species.\n\n"
          "The disease thrives in:\n\n"
          "- **Cooler Temperatures:** Optimal range is 20-28°C.\n"
          "- **High Humidity & Prolonged Leaf Wetness:** Requires long periods of dew, fog, or rain for spore germination and infection (at least 6-8 hours).\n"
          "- **Nitrogen Fertilization:** Excessive nitrogen application makes plants more susceptible.\n"
          "- **Wind:** Spores are easily carried by wind over long distances.\n"
          "- **Susceptible Varieties:** Planting non-resistant varieties is a major risk factor.",
      treatment: "1.  **Resistant Varieties:**\n\n"
          "- Plant blast-resistant or tolerant rice varieties. This is the most economical and effective control measure. Consult local agricultural research for recommended varieties.\n\n"
          "2.  **Use Healthy, Treated Seeds:**\n\n"
          "- Plant certified disease-free seeds. Seed treatment with fungicides (e.g., Tricyclazole, Carbendazim) can prevent seedling blast.\n\n"
          "3.  **Nutrient Management:**\n\n"
          "- Avoid excessive nitrogen fertilization, which promotes lush, susceptible growth. Apply nitrogen in split doses.\n\n"
          "4.  **Water Management:**\n\n"
          "- Maintain a thin film of water in the paddy field. Avoid prolonged drainage that stresses plants. For upland rice, avoid water stress.\n\n"
          "5.  **Fungicides:**\n\n"
          "- Apply foliar fungicides (e.g., Tricyclazole, Isoprothiolane, Azoxystrobin, Pyraclostrobin) as a preventive measure or at the first appearance of symptoms, especially during susceptible stages (maximum tillering to booting).\n"
          "- Timing is crucial. Consult local blast forecasting models if available. Always follow label instructions and rotate fungicides to prevent resistance.\n\n"
          "6.  **Sanitation:**\n\n"
          "- Destroy infected rice stubble and straw after harvest. Manage grass weeds in and around the field.",
    ),
    DiseaseInfoModel(
      diseaseId: "Rice__neck_blast",
      name: "Rice Neck Blast",
      explanation: "Rice Neck Blast is a severe phase of rice blast disease, also caused by *Magnaporthe oryzae*. It specifically affects the panicle neck (the topmost node supporting the panicle), just below the grains.\n\n"
          "- **Symptoms:** Causes a dark brown to black lesion on the panicle neck. This lesion girdles the neck, cutting off water and nutrient supply to the developing grains.\n"
          "- **Result:** The grains either fail to fill completely (leading to 'chaffy' or empty grains) or, if infected later, develop discolored, chalky, and brittle grains. The entire panicle often breaks at the neck lesion, resulting in severe yield loss.",
      possibleCauses: "Neck blast is caused by the same fungus as leaf blast, but its occurrence is particularly dependent on:\n\n"
          "- **Timing of Infection:** Infection occurring during the booting to heading and milk stages is critical for neck blast development.\n"
          "- **Weather Conditions:** Cool temperatures, high humidity, and prolonged dew periods (especially at night) during panicle emergence and maturation are highly conducive.\n"
          "- **Susceptible Varieties:** Varieties highly susceptible to leaf blast are also susceptible to neck blast.\n"
          "- **Excessive Nitrogen:** High nitrogen levels can promote lush growth more vulnerable to blast.",
      treatment: "1.  **Resistant Varieties:**\n\n"
          "- Plant blast-resistant or moderately resistant rice varieties. This is the primary method to mitigate neck blast risk.\n\n"
          "2.  **Timely Fungicide Applications:**\n\n"
          "- Fungicide application specifically targeting the panicle emergence and heading stages is crucial for neck blast control. Products like Tricyclazole, Isoprothiolane, Azoxystrobin, or Pyraclostrobin are commonly used.\n"
          "- A typical strategy involves 1-2 sprays: one at booting/early heading (when 5-10% of panicles have emerged) and another at full heading if conditions remain favorable.\n\n"
          "3.  **Nutrient Management:**\n\n"
          "- Avoid excessive nitrogen application, especially at later growth stages. Apply nitrogen in split doses according to recommendations.\n\n"
          "4.  **Water Management:**\n\n"
          "- Maintain optimal water levels in the field. Avoid draining fields during critical blast periods.\n\n"
          "5.  **Sanitation:**\n\n"
          "- Manage crop residue from previous seasons to reduce primary inoculum. Control grassy weeds that can act as alternate hosts.",
    ),
    DiseaseInfoModel(
      diseaseId: "Soybean__bacterial_blight",
      name: "Soybean Bacterial Blight",
      explanation: "Soybean Bacterial Blight is caused by the bacterium *Pseudomonas savastanoi pv. glycinea*. It is a common foliar disease, especially in cool, wet conditions.\n\n"
          "- **Leaf Symptoms:** Small, angular, water-soaked spots appear on leaves, typically along the veins. These spots enlarge, turn brown or black, and are often surrounded by a yellowish-green halo. As lesions mature, the centers dry out and may fall out, giving a ragged or tattered appearance to the leaves. Severe infection can lead to significant defoliation.\n"
          "- **Stem and Pod Symptoms:** Lesions can also occur on stems and pods, appearing as sunken, dark spots. Severely infected pods may produce shriveled seeds.",
      possibleCauses: "The bacterium overwinters in:\n\n"
          "- **Infected Plant Debris:** Primarily in infected soybean residue on the soil surface.\n"
          "- **Seeds:** Can be seed-borne, infecting seedlings upon germination.\n\n"
          "The disease thrives in:\n\n"
          "- **Cool, Wet Weather:** Favored by cool temperatures (15-25°C) and splashing rain or irrigation water.\n"
          "- **Wind-driven Rain:** Highly effective in spreading bacteria within and between fields.\n"
          "- **Mechanical Injury:** Wounds from hail, equipment, or insects can facilitate entry.",
      treatment: "1.  **Use Certified Disease-Free Seeds:**\n\n"
          "- Plant only certified, high-quality, and disease-free soybean seeds to prevent initial infection.\n\n"
          "2.  **Resistant Varieties:**\n\n"
          "- Plant soybean varieties with genetic resistance or improved tolerance to bacterial blight. Consult local extension for recommendations.\n\n"
          "3.  **Sanitation:**\n\n"
          "- Implement effective residue management. Tillage that buries infected residue can help reduce inoculum. Rotate crops to non-host plants for at least 1-2 years.\n\n"
          "4.  **Avoid Spreading in Wet Conditions:**\n\n"
          "- Avoid working in fields when plants are wet to prevent mechanical spread of bacteria. Disinfect equipment if moving between fields.\n\n"
          "5.  **Copper-based Bactericides (Limited Effectiveness):**\n\n"
          "- Foliar applications of copper-based bactericides (e.g., Copper Hydroxide) may offer some protection, especially when applied preventively. However, they are generally not highly effective once the disease is widespread and can cause phytotoxicity. Always follow label instructions.",
    ),
    DiseaseInfoModel(
      diseaseId: "Soybean__caterpillar",
      name: "Soybean Caterpillar Infestation",
      explanation: "This category refers to damage caused by various caterpillar species (larvae of moths or butterflies) that feed on soybean plants. Common soybean defoliators include soybean looper, velvetbean caterpillar, green cloverworm, and corn earworm.\n\n"
          "- **Leaf Damage:** Caterpillars chew holes in leaves, or consume entire leaves, leading to defoliation. The pattern of feeding (e.g., ragged holes, skeletonization) depends on the species and larval instar.\n"
          "- **Stem/Pod Damage:** Some species may feed on stems or tunnel into pods, damaging developing seeds.\n"
          "- **Visible Pests:** Larvae (caterpillars) of various sizes and colors may be observed on leaves, along with their frass (excrement).",
      possibleCauses: "Caterpillar infestations occur when:\n\n"
          "- **Moth Flights:** Adult moths lay eggs on soybean plants, leading to larval hatch.\n"
          "- **Favorable Conditions:** Warm temperatures and lush plant growth can favor rapid caterpillar development and population buildup.\n"
          "- **Lack of Natural Enemies:** Absence or reduction of natural predators (e.g., birds, predatory insects) and parasitoids (e.g., parasitic wasps) can lead to outbreaks, often due to indiscriminate insecticide use.",
      treatment: "1.  **Scouting & Thresholds:**\n\n"
          "- Regularly scout soybean fields (at least weekly) for caterpillars and assess the level of defoliation. Use established economic thresholds (e.g., percentage defoliation) to determine if treatment is necessary. Often, soybeans can tolerate significant defoliation.\n\n"
          "2.  **Biological Control:**\n\n"
          "- Conserve and encourage natural enemies like parasitic wasps, predatory beetles, and fungal pathogens (e.g., *Nomuraea rileyi*) that naturally control caterpillar populations.\n\n"
          "3.  **Cultural Control:**\n\n"
          "- **Crop Rotation:** Can help break pest cycles for some species.\n"
          "- **Residue Management:** Burying residue can reduce overwintering populations for some pests.\n\n"
          "4.  **Biological Insecticides:**\n\n"
          "- Consider using insecticides based on *Bacillus thuringiensis* (Bt), which are specific to caterpillars and generally safe for beneficial insects. They must be ingested by the caterpillar.\n\n"
          "5.  **Chemical Insecticides (Use as a last resort and based on thresholds):**\n\n"
          "- If populations exceed economic thresholds, apply appropriate insecticides (e.g., Pyrethroids, Indoxacarb, Chlorantraniliprole).\n"
          "- Choose selective insecticides where possible to preserve beneficials. Rotate insecticide modes of action to prevent resistance. Always follow label instructions.",
    ),
    DiseaseInfoModel(
      diseaseId: "Soybean__diabrotica_speciosa",
      name: "Soybean Diabrotica speciosa (Corn Rootworm/Cucumber Beetle)",
      explanation: "Diabrotica speciosa is a type of beetle, often referred to as a corn rootworm or cucumber beetle (though it's a specific species that affects soybeans). Both adults and larvae cause damage.\n\n"
          "- **Adult Damage:** Adult beetles feed on soybean leaves, creating small, circular holes (shot-hole appearance) or irregular defoliation. They can also feed on flowers and young pods, impacting yield.\n"
          "- **Larval Damage (Rootworm):** Larvae (rootworms) feed on soybean roots, reducing nutrient and water uptake, which can lead to stunted growth, wilting, and increased susceptibility to other stresses.\n"
          "- **Vector:** Importantly, *Diabrotica* species are known vectors for certain plant viruses, although less commonly cited for soybean viruses than for corn.",
      possibleCauses: "The presence of *Diabrotica speciosa* beetles is the direct cause of this damage.\n\n"
          "- **Host Plants:** Availability of host plants (soybean, corn, and various other broadleaf plants and grasses) for feeding and reproduction.\n"
          "- **Crop Rotation:** Continuous planting of susceptible crops (e.g., corn-soybean rotation) can favor certain *Diabrotica* species.\n"
          "- **Favorable Conditions:** Warm temperatures and adequate moisture for beetle development.",
      treatment: "1.  **Scouting & Thresholds:**\n\n"
          "- Regularly scout soybean fields for adult beetle feeding and assess plant damage, especially during early growth stages.\n\n"
          "2.  **Crop Rotation:**\n\n"
          "- Rotate soybeans with non-host crops (e.g., small grains like wheat) to disrupt the life cycle of the beetle and reduce larval populations in the soil.\n\n"
          "3.  **Resistant Varieties:**\n\n"
          "- While specific *Diabrotica speciosa* resistant soybean varieties may not be widely available, some varieties might exhibit tolerance.\n\n"
          "4.  **Cultural Practices:**\n\n"
          "- **Weed Control:** Control weeds that may serve as alternative hosts for the beetles.\n\n"
          "5.  **Insecticides (If necessary and based on economic thresholds):**\n\n"
          "- **Seed Treatments:** Insecticide seed treatments can provide early-season protection against larval root feeding.\n"
          "- **Foliar Sprays:** Apply foliar insecticides (e.g., pyrethroids) if adult beetle feeding causes significant defoliation or threatens developing pods, especially during critical growth stages.\n"
          "- Always follow label instructions carefully regarding dosage, timing, and safety.",
    ),
    DiseaseInfoModel(
      diseaseId: "Soybean__downy_mildew",
      name: "Soybean Downy Mildew",
      explanation: "Soybean Downy Mildew is caused by the oomycete *Peronospora manshurica*. It is a common disease, particularly in cool, wet conditions.\n\n"
          "- **Leaf Symptoms (Upper Surface):** Appears as pale green to yellow spots that are irregularly shaped and often limited by veins. As lesions mature, they become yellowish-brown.\n"
          "- **Leaf Symptoms (Lower Surface):** A characteristic grayish-purple, fuzzy, spore-producing growth (sporangiophores) is visible on the underside of infected leaves, particularly in humid conditions.\n"
          "- **Systemic Infection:** In severe cases, particularly from seed-borne infection, the entire plant can become stunted and distorted. Pods may develop whitish blotches, and seeds can become coated with a white fungal growth.",
      possibleCauses: "The pathogen overwinters in:\n\n"
          "- **Infected Seeds:** A significant source of primary inoculum.\n"
          "- **Crop Residue:** Survives on infected soybean residue.\n\n"
          "The disease thrives in:\n\n"
          "- **Cool, Wet/Humid Conditions:** Favored by cool temperatures (15-20°C) and high humidity, long dew periods, or frequent rain.\n"
          "- **Wind:** Spores are easily carried by wind over long distances.\n"
          "- **Susceptible Varieties:** Planting non-resistant varieties increases susceptibility.",
      treatment: "1.  **Use Certified Disease-Free Seeds:**\n\n"
          "- Plant only certified, healthy soybean seeds to prevent seed-borne infection.\n\n"
          "2.  **Resistant Varieties:**\n\n"
          "- Plant soybean varieties with genetic resistance to downy mildew. Many modern varieties have good resistance.\n\n"
          "3.  **Sanitation:**\n\n"
          "- Implement effective residue management. Burying infected residue can help reduce inoculum. Rotate crops to non-host plants.\n\n"
          "4.  **Fungicides:**\n\n"
          "- **Seed Treatments:** Fungicide seed treatments (e.g., Metalaxyl, Mefenoxam) are effective in controlling seed-borne inoculum and protecting seedlings.\n"
          "- **Foliar Sprays:** Foliar fungicides (e.g., Azoxystrobin, Pyraclostrobin, Mancozeb) may be used if the disease is severe and appears early, or if growing susceptible varieties under favorable conditions. Applications are typically not common or economically justified for downy mildew alone unless very severe.\n"
          "- Always follow label instructions and observe pre-harvest intervals.",
    ),
    DiseaseInfoModel(
      diseaseId: "Soybean__healthy",
      name: "Healthy Soybean Plant",
      explanation: "A healthy soybean plant exhibits vigorous, upright growth with lush, vibrant green leaves that are unblemished by spots, yellowing, or deformities. Pods are developing uniformly, with well-formed seeds inside. The plant shows no visible signs of pest infestation, disease symptoms, or nutrient deficiencies, indicating optimal growing conditions and productive potential.",
      possibleCauses: "—",
      treatment: "1.  **Use High-Quality Seeds:**\n\n"
          "- Plant certified, healthy soybean seeds adapted to your region.\n\n"
          "2.  **Optimal Planting:**\n\n"
          "- Plant at the correct time, depth, and spacing. Ensure good soil preparation.\n\n"
          "3.  **Balanced Fertilization:**\n\n"
          "- Apply fertilizers based on soil tests, ensuring adequate nitrogen (if not relying solely on nodulation), phosphorus, and potassium. Inoculate seeds with *Bradyrhizobium japonicum* for nitrogen fixation.\n\n"
          "4.  **Water Management:**\n\n"
          "- Provide consistent moisture, especially during critical growth stages like flowering and pod fill. Avoid waterlogging.\n\n"
          "5.  **Weed Control:**\n\n"
          "- Implement effective weed management to reduce competition for resources.\n\n"
          "6.  **Pest & Disease Monitoring:**\n\n"
          "- Regularly scout fields for early detection of pests (e.g., defoliators, pod feeders) or diseases and apply integrated pest management (IPM) strategies proactively.\n\n"
          "7.  **Crop Rotation:**\n\n"
          "- Practice crop rotation to break pest and disease cycles and improve soil health.",
    ),
    DiseaseInfoModel(
      diseaseId: "Soybean__mosaic_virus",
      name: "Soybean Mosaic Virus (SMV)",
      explanation: "Soybean Mosaic Virus (SMV) is a widespread viral disease caused by a potyvirus. It can cause significant yield losses and reduce seed quality.\n\n"
          "- **Leaf Symptoms (Characteristic):** Causes distinct mottling, mosaic patterns, chlorosis (yellowing), puckering, wrinkling, blistering, and severe distortion (downward curling or narrowing) of leaves. Symptoms are often more pronounced on younger leaves and can vary with variety and environmental conditions.\n"
          "- **Stunting:** Infected plants are often stunted.\n"
          "- **Seed Symptoms:** Seeds from infected plants may be discolored (often mottled brown or black, known as 'bleeding hilum'), shriveled, and have reduced germination and oil content.",
      possibleCauses: "SMV is primarily transmitted by:\n\n"
          "- **Aphids:** Non-persistently transmitted by various aphid species (e.g., green peach aphid, soybean aphid) during feeding. Aphids can acquire and transmit the virus rapidly.\n"
          "- **Infected Seeds:** A very important primary source of inoculum. Using infected seeds directly introduces the virus to new fields.\n"
          "- **Mechanical Transmission:** Can be spread mechanically through contaminated farm tools, equipment, or even by touch, though this is less common than aphid or seed transmission.",
      treatment: "1.  **Use Certified Virus-Free Seeds:**\n\n"
          "- This is the most effective and critical control measure. Always plant certified, high-quality, virus-free soybean seeds.\n\n"
          "2.  **Resistant Varieties:**\n\n"
          "- Plant soybean varieties with genetic resistance to Soybean Mosaic Virus. Many modern varieties have good resistance to common SMV strains.\n\n"
          "3.  **Aphid Control:**\n\n"
          "- Manage aphid populations using insecticides (if necessary and based on thresholds), biological control (e.g., ladybugs, parasitic wasps), or cultural practices.\n"
          "- However, aphid control is often challenging for non-persistently transmitted viruses like SMV because aphids can transmit the virus very quickly even before insecticide takes effect.\n\n"
          "4.  **Rogueing (Early Removal):**\n\n"
          "- In small fields, remove and destroy (bury or burn) symptomatic plants early in the season to reduce inoculum sources. This is less practical in large commercial fields.\n\n"
          "5.  **Sanitation:**\n\n"
          "- Clean farm equipment to prevent mechanical transmission.\n\n"
          "6.  **Weed Control:**\n\n"
          "- Control weeds that may serve as alternative hosts for aphids or the virus.",
    ),
    DiseaseInfoModel(
      diseaseId: "Soybean__powdery_mildew",
      name: "Soybean Powdery Mildew",
      explanation: "Soybean Powdery Mildew is a fungal disease caused by *Microsphaera diffusa* (or *Erysiphe diffusa*). It appears as white, powdery patches on the upper and lower surfaces of soybean leaves, and sometimes on stems and pods.\n\n"
          "- **Symptoms:** White, fuzzy, circular colonies of fungal growth initially appear, which can coalesce to cover large areas of the leaf surface. Severely infected leaves may turn yellow, become distorted, and drop prematurely. It can lead to reduced photosynthesis and premature plant senescence, impacting yield.",
      possibleCauses: "The fungus overwinters in:\n\n"
          "- **Crop Residue:** Primarily in infected soybean residue in the soil.\n\n"
          "The disease thrives in:\n\n"
          "- **Warm, Dry Conditions:** Unlike many fungal diseases, powdery mildew prefers warm (20-30°C) and relatively dry conditions with high humidity, making it common in the latter part of the growing season, especially in shaded or dense canopies.\n"
          "- **Wind Dispersal:** Spores are easily carried by wind to new plants.\n"
          "- **Dense Canopies:** Poor air circulation within dense soybean canopies creates microclimates favorable for its development.",
      treatment: "1.  **Resistant Varieties:**\n\n"
          "- Plant soybean varieties with genetic resistance to powdery mildew. This is the most effective control method.\n\n"
          "2.  **Cultural Practices:**\n\n"
          "- **Plant Spacing:** Ensure adequate plant spacing to improve air circulation within the canopy.\n"
          "- **Residue Management:** Tillage that buries infected residue can help reduce inoculum. Crop rotation can also help.\n\n"
          "3.  **Fungicides:**\n\n"
          "- Foliar fungicides (e.g., strobilurins like Azoxystrobin, Pyraclostrobin, or triazoles like Tebuconazole) can be effective if applied early, before the disease becomes widespread.\n"
          "- Applications are generally considered if the disease is severe and appears before mid-pod fill. Always follow label instructions and observe pre-harvest intervals.",
    ),
    DiseaseInfoModel(
      diseaseId: "Soybean__rust",
      name: "Soybean Rust (Asian Soybean Rust - ASR)",
      explanation: "Soybean Rust, specifically Asian Soybean Rust (ASR), is a highly destructive fungal disease caused by *Phakopsora pachyrhizi*. It can cause rapid and severe defoliation and significant yield losses.\n\n"
          "- **Leaf Symptoms:** Small, tan to reddish-brown, angular spots appear on the undersides of leaves, usually starting on lower leaves. Within these spots, tiny, raised pustules (uredinia) develop, which are typically tan to light brown and may rupture to release powdery, rust-colored spores.\n"
          "- **Progression:** Spots enlarge and coalesce, turning entire leaves yellow and then brown, leading to rapid and widespread defoliation. Symptoms can also appear on petioles, stems, and pods.",
      possibleCauses: "The fungus cannot overwinter in temperate soybean-growing regions but survives in tropical and subtropical areas on living hosts. It is primarily spread by:\n\n"
          "- **Wind-blown Spores:** Spores are carried by wind over long distances from warmer regions to new soybean crops.\n"
          "- **Volunteer Soybeans and Alternate Hosts:** Survives on volunteer soybeans and kudzu (an alternative host) in warmer climates.\n\n"
          "The disease thrives in:\n\n"
          "- **Warm, Humid Conditions:** Favored by warm temperatures (20-30°C) and prolonged periods of leaf wetness from dew or rain (at least 6-12 hours).\n"
          "- **Dense Canopies:** Promote prolonged leaf wetness.",
      treatment: "1.  **Resistant Varieties:**\n\n"
          "- Plant soybean varieties with genetic resistance to Asian Soybean Rust if available and adapted to your region.\n\n"
          "2.  **Fungicides (Primary Control Method):**\n\n"
          "- Timely application of foliar fungicides is the primary management strategy in areas where ASR is prevalent. Active ingredients include strobilurins (e.g., Azoxystrobin, Pyraclostrobin), triazoles (e.g., Tebuconazole, Propiconazole), and SDHIs.\n"
          "- Applications are typically initiated preventively or at the very first detection of the disease, especially from R1 (beginning bloom) through R5 (beginning seed fill) growth stages, when conditions are favorable.\n"
          "- Multiple applications may be needed. Rotate fungicide modes of action to prevent resistance.\n\n"
          "3.  **Early Planting:**\n\n"
          "- Planting early-maturing varieties can allow the crop to escape severe infection before large rust inoculum builds up.\n\n"
          "4.  **Scouting & Monitoring:**\n\n"
          "- Regular and intensive scouting for early symptoms of ASR is crucial, especially when spores are known to be present in the region or when weather conditions are conducive.",
    ),
    DiseaseInfoModel(
      diseaseId: "Soybean__southern_blight",
      name: "Soybean Southern Blight (White Mold)",
      explanation: "Soybean Southern Blight (also known as White Mold or Sclerotinia Stem Rot) is a serious fungal disease caused by *Sclerotinia sclerotiorum*. It typically affects the lower stem and roots, particularly under dense canopies.\n\n"
          "- **Stem Symptoms:** Characterized by water-soaked lesions on the lower stem near the soil line. These lesions rapidly expand, girdle the stem, and turn it tan to white. A distinctive white, cottony fungal growth (mycelium) may be visible on the stem, leaves, and pods, especially in humid conditions.\n"
          "- **Sclerotia:** Hard, black, irregularly shaped structures (sclerotia), resembling rat droppings, are formed within the white fungal growth and inside the stem and pods.\n"
          "- **Wilting & Death:** Infected plants rapidly wilt and die, remaining upright with bleached stems. Leaves turn gray-green and then brown.",
      possibleCauses: "The fungus survives as:\n\n"
          "- **Sclerotia:** Hard, dormant sclerotia in the soil, which can remain viable for several years.\n\n"
          "The disease thrives in:\n\n"
          "- **Cool, Moist Conditions:** Favored by cool temperatures (15-24°C) and continuous soil moisture and high relative humidity within the plant canopy for prolonged periods (e.g., during flowering).\n"
          "- **Dense Canopies:** Promote prolonged canopy wetness, creating ideal conditions for spore germination.\n"
          "- **Narrow Row Spacing:** Increases canopy density.\n"
          "- **No-Till Systems:** Sclerotia survive better on the soil surface.",
      treatment: "1.  **Crop Rotation:**\n\n"
          "- Implement long-term crop rotation (3-5 years) with non-host crops (e.g., corn, wheat, grasses) to reduce the number of viable sclerotia in the soil.\n\n"
          "2.  **Resistant Varieties:**\n\n"
          "- Plant soybean varieties with improved tolerance or partial resistance to Southern Blight.\n\n"
          "3.  **Cultural Practices:**\n\n"
          "- **Tillage:** Deep plowing can bury sclerotia, reducing their ability to germinate.\n"
          "- **Row Spacing:** Use wider row spacing and lower seeding rates to reduce canopy humidity and improve air circulation.\n"
          "- **Nitrogen Management:** Avoid excessive nitrogen that leads to dense canopies.\n"
          "- **Irrigation:** Avoid over-irrigation during flowering and early pod fill.\n\n"
          "4.  **Fungicides:**\n\n"
          "- Apply foliar fungicides (e.g., Thiophanate-methyl, Fluazinam, Prothioconazole) preventively during the flowering (R1-R3) stages when conditions are favorable for disease development.\n"
          "- Timing is critical for effective control. Always follow label instructions.",
    ),
    DiseaseInfoModel(
      diseaseId: "Strawberry___leaf_scorch",
      name: "Strawberry Leaf Scorch",
      explanation: "Strawberry Leaf Scorch is a fungal disease caused by *Diplocarpon earlianum*. It primarily affects the leaves but can also appear on petioles, stolons, and fruit.\n\n"
          "- **Leaf Symptoms:** Begins as small, irregular purple to dark brown spots on the upper leaf surface. These spots enlarge, often coalescing to form large, reddish-brown to purplish-black blotches, making the leaf look 'scorched' or burnt. The edges of the lesions typically remain purplish, while the centers may become brown. Severely infected leaves may shrivel and die prematurely.\n"
          "- **Fruit Symptoms:** Less common, but lesions can occur on fruit caps and sometimes on the fruit itself.",
      possibleCauses: "The fungus overwinters in:\n\n"
          "- **Infected Plant Debris:** Primarily in infected dead leaves and plant residue from previous seasons.\n\n"
          "The disease thrives in:\n\n"
          "- **Warm, Wet Conditions:** Favored by warm temperatures (20-25°C) and prolonged periods of leaf wetness from rain or overhead irrigation.\n"
          "- **Dense Foliage:** Poor air circulation in dense plantings promotes humidity.\n"
          "- **Spore Dispersal:** Spores are spread by splashing rain, wind, and contaminated equipment.",
      treatment: "1.  **Sanitation:**\n\n"
          "- Remove and destroy (do not compost) infected leaves and plant debris, especially at the end of the growing season or during renovation. Clean up dead leaves around plants.\n\n"
          "2.  **Cultural Practices:**\n\n"
          "- **Proper Spacing:** Ensure adequate spacing between plants to improve air circulation and promote faster drying of foliage.\n"
          "- **Watering:** Use drip irrigation or water at the base of plants to avoid wetting foliage, especially late in the day. If overhead irrigation is used, water early in the morning.\n"
          "- **Nutrition:** Maintain good plant vigor with balanced fertilization.\n\n"
          "3.  **Fungicides:**\n\n"
          "- Apply fungicides (e.g., Chlorothalonil, Myclobutanil, Captan) preventively, especially during periods of wet weather favorable for disease development.\n"
          "- Begin applications in early spring as new growth emerges and continue through harvest if conditions remain conducive. Always follow label instructions and observe pre-harvest intervals.\n\n"
          "4.  **Resistant Varieties:**\n\n"
          "- Plant strawberry varieties known to have resistance or tolerance to leaf scorch. Consult local nurseries or extension services for regional recommendations.",
    ),
    DiseaseInfoModel(
      diseaseId: "Strawberry__healthy",
      name: "Healthy Strawberry Plant",
      explanation: "A healthy strawberry plant features vibrant, deep green leaves that are unblemished by spots, discoloration, or deformities. Runners are vigorous, and flowers are abundant, indicating strong potential for fruit production. Developing strawberries are firm, uniformly shaped, and free from any signs of rot or disease. The plant exhibits overall robust growth and vitality.",
      possibleCauses: "—",
      treatment: "1.  **Optimal Site Selection:**\n\n"
          "- Plant in full sun (6-8 hours daily) with well-drained, fertile, slightly acidic soil.\n\n"
          "2.  **Proper Planting:**\n\n"
          "- Ensure crowns are at soil level, not too deep or too shallow.\n\n"
          "3.  **Consistent Watering:**\n\n"
          "- Keep soil consistently moist, especially during fruit development. Use drip irrigation or water at the base to keep leaves dry.\n\n"
          "4.  **Balanced Fertilization:**\n\n"
          "- Apply appropriate, balanced fertilizers based on soil tests to support healthy growth and fruiting.\n\n"
          "5.  **Mulching:**\n\n"
          "- Use straw mulch to keep berries clean, suppress weeds, and retain soil moisture.\n\n"
          "6.  **Pest & Disease Monitoring:**\n\n"
          "- Regularly inspect plants for early signs of pests (e.g., slugs, aphids) or diseases and implement integrated pest management (IPM) strategies proactively.\n\n"
          "7.  **Renovation (for June-bearing):**\n\n"
          "- Renovate plants after harvest by mowing leaves, narrowing rows, and fertilizing to promote new growth.",
    ),
    DiseaseInfoModel(
      diseaseId: "Sugarcane__bacterial_blight",
      name: "Sugarcane Bacterial Blight",
      explanation: "Sugarcane Bacterial Blight is caused by the bacterium *Xanthomonas albilineans*, which also causes leaf scald. The 'bacterial blight' term often specifically refers to symptoms on the leaf.\n\n"
          "- **Leaf Symptoms:** Initial symptoms appear as thin, white, sharply defined lines (pencil lines) running parallel to the veins on young leaves. These streaks may later turn reddish-brown. As the disease progresses, the streaks widen and merge, causing large sections of the leaf to dry out, giving a blighted or 'scalded' appearance, often from the leaf tip inwards.\n"
          "- **Systemic Symptoms:** The bacterium is systemic. Severely infected plants may show stunted growth, wilting, and internal reddish discoloration of vascular bundles when the stem is cut open. Infected shoots ('pencil shoots') are thin, yellow, and may die.",
      possibleCauses: "The bacterium is primarily spread through:\n\n"
          "- **Infected Planting Material:** Using infected setts (seed cane) is the most significant source of disease spread.\n"
          "- **Mechanical Transmission:** Contaminated cutting tools (knives, harvesters) can spread the bacteria between healthy and diseased plants, especially during planting and harvesting.\n"
          "- **Rain & Wind:** Splashing rain and wind can spread bacteria over short distances.\n\n"
          "The disease thrives in warm, humid conditions.",
      treatment: "1.  **Use Certified Disease-Free Seed Cane:**\n\n"
          "- This is the most crucial control measure. Plant only certified disease-free setts from reputable sources or hot-water treated cane.\n\n"
          "2.  **Resistant Varieties:**\n\n"
          "- Plant sugarcane varieties with genetic resistance to bacterial blight/leaf scald. This is key for long-term management. Consult local research stations for recommended varieties.\n\n"
          "3.  **Sanitation:**\n\n"
          "- Disinfect cutting tools (knives, harvesting equipment) frequently using a disinfectant (e.g., bleach solution) when moving between fields or after cutting infected cane.\n"
          "- Remove and destroy (burn) severely infected plants or areas to reduce inoculum.\n\n"
          "4.  **Roguing:**\n\n"
          "- Remove and destroy symptomatic plants (pencil shoots) in early stages if possible in small areas.\n\n"
          "5.  **Avoid Susceptible Varieties in Problem Areas:**\n\n"
          "- Do not plant highly susceptible varieties in fields with a history of the disease.\n\n"
          "6.  **Hot Water Treatment:**\n\n"
          "- Hot water treatment of seed cane (e.g., 50°C for 2 hours) can help eliminate the bacterium from infected setts, but care must be taken not to damage the cane.",
    ),
    DiseaseInfoModel(
      diseaseId: "Sugarcane__healthy",
      name: "Healthy Sugarcane Plant",
      explanation: "A healthy sugarcane plant displays robust, upright stalks with vibrant green leaves that are free from discoloration, spots, or lesions. The stalks are thick and succulent, indicating good sugar accumulation. Overall, the plant exhibits vigorous growth, dense foliage, and no visible signs of pest infestation or disease symptoms, promising a high yield of quality cane.",
      possibleCauses: "—",
      treatment: "1.  **Use Healthy Planting Material:**\n\n"
          "- Plant only healthy, disease-free setts (seed cane).\n\n"
          "2.  **Optimal Soil Preparation:**\n\n"
          "- Ensure good soil tilth, drainage, and fertility prior to planting.\n\n"
          "3.  **Balanced Fertilization:**\n\n"
          "- Apply nitrogen, phosphorus, and potassium as per soil test recommendations and crop stage. Ensure adequate micronutrients.\n\n"
          "4.  **Adequate Water:**\n\n"
          "- Provide consistent moisture through rainfall or irrigation, especially during critical growth periods.\n\n"
          "5.  **Weed Control:**\n\n"
          "- Implement timely and effective weed management to reduce competition for resources.\n\n"
          "6.  **Pest & Disease Monitoring:**\n\n"
          "- Regularly scout fields for early detection of pests (e.g., borers, mealybugs) or diseases and apply integrated pest management (IPM) strategies proactively.\n\n"
          "7.  **Resistant Varieties:**\n\n"
          "- Choose sugarcane varieties adapted to your local climate and with good natural resistance to common local pests and diseases.",
    ),
    DiseaseInfoModel(
      diseaseId: "Sugarcane__red_rot",
      name: "Sugarcane Red Rot",
      explanation: "Sugarcane Red Rot is the most devastating fungal disease of sugarcane, caused by *Colletotrichum falcatum*. It primarily affects the stalk but can also cause leaf symptoms.\n\n"
          "- **Internal Stalk Symptoms (Diagnostic):** When an infected stalk is split longitudinally, the pith (internal tissue) shows characteristic reddish discoloration interspersed with distinct transverse white patches or blotches. There may also be dark spots in the reddened areas. The infected tissue eventually shrivels and dries out.\n"
          "- **External Stalk Symptoms:** Outer symptoms may include dulling of the rind, longitudinal shrinkage and cracking of the internodes, and sometimes a sour alcoholic smell from infected stalks.\n"
          "- **Leaf Symptoms (Early indicator):** A diagnostic symptom often seen on the mid-rib of younger leaves is the presence of deep red lesions with dark centers, sometimes surrounded by a yellow halo.",
      possibleCauses: "The fungus primarily spreads through:\n\n"
          "- **Infected Planting Material:** Using infected setts (seed cane) is the most important means of long-distance and primary spread.\n"
          "- **Crop Residue:** Survival of fungal spores (conidia) and mycelium in infected stubble and plant debris in the soil from previous crops.\n"
          "- **Rain & Wind:** Spores can be spread by splashing rain and wind over short distances.\n"
          "- **Mechanical Transmission:** Contaminated farm tools, implements, and harvesting equipment can spread the pathogen.\n"
          "- **Warm, Humid Conditions:** Favored by warm temperatures and high humidity.",
      treatment: "1.  **Use Certified Disease-Free Seed Cane:**\n\n"
          "- **Crucial.** Obtain setts only from certified, disease-free nurseries. Hot water treatment of seed cane (e.g., 50°C for 2 hours) can help eradicate the fungus.\n\n"
          "2.  **Resistant Varieties:**\n\n"
          "- Plant red rot resistant or tolerant sugarcane varieties. This is the most effective and sustainable long-term solution. Consult local agricultural research institutes for recommended varieties.\n\n"
          "3.  **Sanitation:**\n\n"
          "- **Field Hygiene:** Remove and destroy (burn or bury deeply) all infected plants, stubble, and crop residues after harvest.\n"
          "- **Disinfect Tools:** Sterilize cutting tools (knives, harvesters) with a disinfectant (e.g., 1% bleach solution) before moving between fields and after cutting diseased cane.\n\n"
          "4.  **Crop Rotation:**\n\n"
          "- Rotate sugarcane fields with non-host crops (e.g., rice, legumes) for at least 1-2 years to reduce soil inoculum.\n\n"
          "5.  **Rogueing:**\n\n"
          "- Remove and destroy individual infected plants (rogueing) early in the crop cycle to prevent further spread.\n\n"
          "6.  **Cultural Practices:**\n\n"
          "- **Avoid Waterlogging:** Ensure good drainage as waterlogged conditions can stress plants and favor disease.\n"
          "- **Balanced Nutrition:** Maintain optimal plant vigor through balanced fertilization.",
    ),
    DiseaseInfoModel(
      diseaseId: "Sugarcane__red_stripe",
      name: "Sugarcane Red Stripe (Top Rot)",
      explanation: "Sugarcane Red Stripe is a bacterial disease caused by *Acidovorax avenae subsp. avenae*. It has two main forms: a 'red stripe' phase on leaves and a more severe 'top rot' phase.\n\n"
          "- **Red Stripe (Leaf) Phase:** Appears as narrow, dark red, continuous or broken streaks on the leaf blade, typically starting near the midrib and extending outwards. These streaks often run parallel to the veins. In humid conditions, a yellowish bacterial ooze may be visible on the lesions.\n"
          "- **Top Rot Phase (More Severe):** If the bacteria infect the top growing point (meristem) of the stalk, it leads to top rot. The young, unopened leaves in the whorl turn reddish, then yellow and brown, becoming water-soaked and eventually rotting. The entire growing point may die, emitting a foul smell. This can lead to the death of the stalk or the production of side shoots.",
      possibleCauses: "The bacterium primarily spreads through:\n\n"
          "- **Rain Splash & Wind:** Wind-driven rain is the most common means of spread from infected plant debris or other hosts to healthy sugarcane.\n"
          "- **Wounds:** Entry through wounds (e.g., from insect feeding, mechanical damage, or de-trashing operations).\n"
          "- **Infected Plant Debris:** Survives on infected plant residue in the soil.\n"
          "- **Favorable Conditions:** Cool temperatures (around 20°C) and wet weather favor disease development, especially for the top rot phase.",
      treatment: "1.  **Resistant Varieties:**\n\n"
          "- Plant sugarcane varieties with genetic resistance to red stripe/top rot. This is the most effective control method.\n\n"
          "2.  **Sanitation:**\n\n"
          "- Remove and destroy (burn or deep plow) infected plant debris after harvest to reduce inoculum.\n\n"
          "3.  **Avoid Wounding:**\n\n"
          "- Minimize mechanical damage to plants. Control insect pests that cause feeding wounds, as these can serve as entry points for the bacteria.\n\n"
          "4.  **Cultural Practices:**\n\n"
          "- **Good Drainage:** Ensure good drainage to reduce standing water and humidity around plants.\n"
          "- **Roguing:** In small-scale operations, remove and destroy individual plants showing top rot symptoms.\n\n"
          "5.  **No Effective Chemical Control:**\n\n"
          "- There are no highly effective chemical treatments (bactericides) for red stripe once established. Focus is on prevention and cultural practices.\n\n"
          "6.  **Balanced Nutrition:**\n\n"
          "- Maintain optimal plant nutrition to promote vigor, as healthy plants may be more resilient.",
    ),
    DiseaseInfoModel(
      diseaseId: "Sugarcane__rust",
      name: "Sugarcane Rust",
      explanation: "Sugarcane Rust can be caused by two main rust fungi: Common Rust (*Puccinia melanocephala*) and Orange Rust (*Puccinia kuehnii*). Both cause similar symptoms on leaves.\n\n"
          "- **Symptoms:** Characterized by small, elongated, reddish-brown to orange-brown pustules (rust sori) on both the upper and lower surfaces of sugarcane leaves. These pustules rupture the epidermis, releasing powdery, rust-colored spores. The pustules are typically surrounded by a yellow halo. Severe infection leads to large areas of the leaf turning yellow and then brown, reducing photosynthetic capacity and overall plant vigor.",
      possibleCauses: "The fungi overwinter on:\n\n"
          "- **Infected Cane:** Primarily on ratoon (regrowing) cane or volunteer plants.\n"
          "- **Spores:** Spores are wind-dispersed over long distances.\n\n"
          "The disease thrives in:\n\n"
          "- **Cool, Humid Conditions (Common Rust):** Favored by temperatures of 16-25°C and high humidity/dew for *Puccinia melanocephala*.\n"
          "- **Warmer Temperatures (Orange Rust):** *Puccinia kuehnii* prefers slightly warmer temperatures (25-30°C) and high humidity.\n"
          "- **Susceptible Varieties:** Planting highly susceptible sugarcane varieties is a major risk factor.",
      treatment: "1.  **Resistant Varieties:**\n\n"
          "- **Most Important Control:** Plant sugarcane varieties with high levels of genetic resistance to the prevalent rust species in your area. This is the most effective and sustainable long-term solution.\n\n"
          "2.  **Fungicides:**\n\n"
          "- Apply foliar fungicides (e.g., Triazoles like Propiconazole, Tebuconazole, or Strobilurins like Pyraclostrobin, Azoxystrobin) preventively or at the very first appearance of symptoms.\n"
          "- Timing is critical, especially for highly susceptible varieties and when weather conditions are conducive. Multiple applications may be necessary, particularly on younger, more susceptible leaves. Always follow label instructions and observe pre-harvest intervals.\n\n"
          "3.  **Sanitation:**\n\n"
          "- Destroy infected plant residues after harvest, especially from fields with severe rust, to reduce local inoculum.\n\n"
          "4.  **Cultural Practices:**\n\n"
          "- **Balanced Nutrition:** Ensure balanced fertilization to maintain plant vigor, as stressed plants can be more susceptible.\n"
          "- **Proper Spacing:** Maintain adequate plant spacing to improve air circulation and reduce leaf wetness periods.",
    ),
    DiseaseInfoModel(
      diseaseId: "Tea__algal_leaf",
      name: "Tea Algal Leaf Spot (Red Rust)",
      explanation: "Tea Algal Leaf Spot, commonly known as Red Rust, is caused by the parasitic green alga *Cephaleuros virescens*. It affects leaves, young stems, and sometimes branches.\n\n"
          "- **Leaf Symptoms:** Appears as circular, greenish-gray to orange-red velvety patches (thalli) on the upper surface of mature leaves. These patches are slightly raised and may coalesce to form larger blotches. The color changes from gray-green to orange-red as the algal spores develop. Infected leaves may turn yellow and drop prematurely, especially during severe outbreaks.\n"
          "- **Stem Symptoms:** On young stems, it forms irregular, reddish-brown patches that can sometimes girdle the stem, leading to dieback.",
      possibleCauses: "The alga thrives in:\n\n"
          "- **High Humidity & Wetness:** Prolonged periods of high humidity, frequent rainfall, and poor air circulation.\n"
          "- **Shade:** Dense canopies or excessive shade create favorable microclimates.\n"
          "- **Weakened Plants:** Plants under stress (e.g., poor nutrition, water stress, pest infestation) are more susceptible.\n"
          "- **Spore Dispersal:** Spores are spread by wind and splashing rain.",
      treatment: "1.  **Improve Air Circulation & Light:**\n\n"
          "- Prune tea bushes to open up the canopy, allow better air circulation, and increase light penetration. This helps dry foliage faster.\n"
          "- Regulate shade trees to prevent excessive shade over tea bushes.\n\n"
          "2.  **Sanitation:**\n\n"
          "- Remove and destroy (prune out) heavily infected leaves and twigs. Prune during dry periods to prevent further spread.\n\n"
          "3.  **Nutrition:**\n\n"
          "- Ensure adequate and balanced fertilization, especially potassium, to maintain plant vigor and resistance.\n\n"
          "4.  **Fungicides (Algaecides):**\n\n"
          "- Apply copper-based fungicides (e.g., Bordeaux mixture, copper oxychloride) as a protective spray. These act as algaecides.\n"
          "- Applications are typically made during periods favorable for disease development or at first symptoms. Always follow label instructions and consider residue limits for tea.\n\n"
          "5.  **Drainage:**\n\n"
          "- Ensure good drainage in the tea garden to prevent waterlogging, which can stress plants.",
    ),
    DiseaseInfoModel(
      diseaseId: "Tea__anthracnose",
      name: "Tea Anthracnose",
      explanation: "Tea Anthracnose is a fungal disease caused by *Colletotrichum gloeosporioides* (also known as *Glomerella cingulata*). It can affect leaves, young stems, and sometimes fruit.\n\n"
          "- **Leaf Symptoms:** Typically appears as irregular to circular brown spots with dark margins, often starting from the leaf margins or tips and spreading inwards. The lesions may be sunken and can coalesce to form large blighted areas, leading to premature leaf drop. Black pinhead-sized structures (acervuli, fungal fruiting bodies) may be visible within the lesions, especially under humid conditions.\n"
          "- **Twig/Stem Symptoms:** Can cause tip dieback on young shoots, characterized by blackening and shriveling of the growing point.\n"
          "- **Dry Weather Damage:** Symptoms can also become prominent during dry periods following wet spells, as damaged tissue dries out.",
      possibleCauses: "The fungus overwinters in:\n\n"
          "- **Infected Plant Debris:** Primarily on fallen leaves and diseased twigs.\n\n"
          "The disease thrives in:\n\n"
          "- **High Humidity & Wetness:** Prolonged periods of leaf wetness from rain or dew, combined with warm temperatures.\n"
          "- **Poor Air Circulation:** Dense tea bushes and inadequate pruning can create humid microclimates.\n"
          "- **Plant Stress:** Weakened plants due to nutrient deficiencies, drought, or pest damage are more susceptible.\n"
          "- **Spore Dispersal:** Spores are spread by splashing rain, wind, and contaminated tools.",
      treatment: "1.  **Sanitation:**\n\n"
          "- Remove and destroy (prune out) infected leaves and twigs, especially during pruning. Collect and dispose of fallen diseased leaves.\n\n"
          "2.  **Cultural Practices:**\n\n"
          "- **Pruning:** Prune tea bushes to maintain an open canopy, improve air circulation, and allow better light penetration, which helps reduce humidity.\n"
          "- **Nutrition:** Ensure balanced fertilization to maintain plant vigor and natural resistance.\n"
          "- **Water Management:** Avoid overhead irrigation late in the day. Ensure good drainage in the tea garden.\n\n"
          "3.  **Fungicides:**\n\n"
          "- Apply protective fungicides such as copper-based fungicides (e.g., Bordeaux mixture, copper oxychloride) or synthetic fungicides (e.g., Mancozeb, Carbendazim).\n"
          "- Applications are typically made during periods favorable for disease development (e.g., monsoon season) or at the first appearance of symptoms. Always follow label instructions and consider residue limits for tea.\n\n"
          "4.  **Resistant Varieties:**\n\n"
          "- Choose tea clones or varieties that exhibit tolerance or resistance to anthracnose.",
    ),
    DiseaseInfoModel(
      diseaseId: "Tea__bird_eye_spot",
      name: "Tea Bird's Eye Spot",
      explanation: "Tea Bird's Eye Spot is a fungal disease caused by *Cercospora theae* (also known as *Cercosporidium theae*). It is a very common and distinctive leaf spot disease of tea.\n\n"
          "- **Symptoms:** Characterized by small, circular spots on tea leaves that resemble a 'bird's eye'. The spots typically have a pale white or grayish-white center, a dark brown or purplish-brown border, and often a yellowish halo around the margin. As the spots mature, the centers may become papery and sometimes fall out, creating a 'shot-hole' effect. Severe infection can lead to premature defoliation, especially on older leaves, and reduce photosynthetic efficiency.",
      possibleCauses: "The fungus overwinters in:\n\n"
          "- **Infected Leaves:** Primarily on infected, fallen tea leaves.\n\n"
          "The disease thrives in:\n\n"
          "- **High Humidity & Wet Conditions:** Favored by prolonged periods of leaf wetness (dew or rain) and moderate to warm temperatures.\n"
          "- **Dense Canopies:** Poor air circulation and dense foliage trap humidity.\n"
          "- **Nutrient Deficiency:** Plants under stress, particularly those with potassium deficiency, can be more susceptible.\n"
          "- **Spore Dispersal:** Spores are primarily spread by wind and splashing rain.",
      treatment: "1.  **Sanitation:**\n\n"
          "- Remove and destroy (collect and burn or bury deeply) fallen infected leaves from around the tea bushes to reduce inoculum.\n\n"
          "2.  **Cultural Practices:**\n\n"
          "- **Pruning:** Prune tea bushes to ensure an open canopy, improve air circulation, and allow better light penetration, which helps reduce humidity and promotes faster drying of foliage.\n"
          "- **Weed Control:** Keep weeds down to improve air flow around the base of bushes.\n"
          "- **Nutrition:** Ensure balanced fertilization, with adequate potassium, to maintain plant vigor and resilience.\n\n"
          "3.  **Fungicides:**\n\n"
          "- Apply protective fungicides such as copper-based fungicides (e.g., Bordeaux mixture, copper oxychloride) or broad-spectrum fungicides (e.g., Chlorothalonil).\n"
          "- Applications are typically made during periods favorable for disease development (e.g., monsoon season) or at the first appearance of symptoms. Always follow label instructions, particularly regarding residue limits for tea.\n\n"
          "4.  **Resistant Varieties:**\n\n"
          "- Where available, plant tea clones or varieties known to exhibit tolerance or resistance to Bird's Eye Spot.",
    ),
    DiseaseInfoModel(
      diseaseId: "Tea__brown_blight",
      name: "Tea Brown Blight",
      explanation: "Tea Brown Blight is a fungal disease caused by *Exobasidium vexans*. It is a common and damaging disease, particularly on young leaves and shoots.\n\n"
          "- **Symptoms:** Primarily affects young, succulent leaves. Initial symptoms are small, irregular, water-soaked spots that quickly enlarge, turning reddish-brown to dark brown. These blighted areas may cover large parts of the leaf, leading to shriveling and distortion. A characteristic sign on the underside of infected leaves, especially in humid conditions, is a silvery-white fungal growth (sporangia) which is diagnostic. Severely affected leaves often curl downwards and die, causing significant loss of young tea shoots (flush).",
      possibleCauses: "The fungus overwinters in:\n\n"
          "- **Infected Shoots:** Survives on infected plant parts, particularly dormant buds and young shoots.\n\n"
          "The disease thrives in:\n\n"
          "- **Cool, Wet, Humid Conditions:** Favored by temperatures around 15-25°C, high relative humidity (above 90%), and frequent rain or mist, which provide prolonged leaf wetness.\n"
          "- **Shade & Dense Canopy:** These conditions increase humidity and slow leaf drying.\n"
          "- **Young, Tender Flushes:** The fungus specifically attacks young, succulent tea flushes, which are also the most valuable part of the crop.",
      treatment: "1.  **Fungicides (Primary Control Method):**\n\n"
          "- Apply protective fungicides such as copper-based fungicides (e.g., Bordeaux mixture, copper oxychloride) or synthetic fungicides (e.g., Hexaconazole, Propiconazole) as soon as favorable conditions prevail or at the first sign of the disease.\n"
          "- Regular applications are crucial, especially during periods of wet weather and active flushing. Always follow label instructions, particularly regarding residue limits for tea.\n\n"
          "2.  **Cultural Practices:**\n\n"
          "- **Pruning:** Prune tea bushes to ensure an open canopy and improve air circulation, helping leaves dry faster.\n"
          "- **Nutrition:** Ensure adequate and balanced fertilization to promote healthy, vigorous growth, as stressed plants are more susceptible.\n"
          "- **Shade Management:** Regulate shade trees to prevent excessive shade over tea bushes.\n\n"
          "3.  **Resistant Varieties:**\n\n"
          "- Plant tea clones or varieties known to exhibit tolerance or resistance to Brown Blight. This is a long-term solution.",
    ),
    DiseaseInfoModel(
      diseaseId: "Tea__healthy",
      name: "Healthy Tea Plant",
      explanation: "A healthy tea plant displays lush, vibrant green leaves on strong, actively flushing shoots. The foliage is dense and free from any spots, discoloration, or signs of pest damage. New flushes (young leaves and buds) are abundant and tender, indicating optimal growing conditions and good plucking potential. The overall plant structure is robust and vital.",
      possibleCauses: "—",
      treatment: "1.  **Optimal Growing Conditions:**\n\n"
          "- Plant in well-drained, acidic soil (pH 4.5-5.5) with adequate rainfall or irrigation.\n\n"
          "2.  **Balanced Fertilization:**\n\n"
          "- Apply specialized tea fertilizers (high in nitrogen, balanced with P & K) based on soil tests and target yield, often in split doses.\n\n"
          "3.  **Consistent Moisture:**\n\n"
          "- Ensure consistent moisture, especially during dry periods, but avoid waterlogging.\n\n"
          "4.  **Proper Pruning & Plucking:**\n\n"
          "- Regular plucking (harvesting of tender shoots) encourages new growth. Periodic pruning maintains bush structure and health.\n\n"
          "5.  **Shade Management:**\n\n"
          "- Provide appropriate shade (depending on tea type and climate) to protect bushes from excessive sun and maintain humidity.\n\n"
          "6.  **Pest & Disease Monitoring:**\n\n"
          "- Regularly scout tea fields for early detection of pests (e.g., mites, thrips, tea mosquito bug) or diseases and apply integrated pest management (IPM) strategies proactively.",
    ),
    DiseaseInfoModel(
      diseaseId: "Tea__red_leaf_spot",
      name: "Tea Red Leaf Spot",
      explanation: "Tea Red Leaf Spot can refer to symptoms caused by various factors, but often describes a physiological condition or a non-specific fungal symptom rather than a distinct disease name like 'Red Rust' (Algal Leaf Spot).\n\n"
          "- **Symptoms:** Appears as reddish or purplish-red spots on tea leaves. These spots may be irregular or somewhat circular, and can range from small flecks to larger blotches. They may or may not have a distinct margin or halo. Unlike rust, there are no raised pustules releasing powdery spores. The reddening can be due to accumulation of anthocyanin pigments in response to stress or damage.",
      possibleCauses: "Red leaf spot symptoms in tea can be caused by:\n\n"
          "- **Nutrient Deficiencies:** Most commonly, **potassium deficiency** can cause reddening or purpling of leaf margins and older leaves. Magnesium deficiency can also contribute.\n"
          "- **Environmental Stress:**\n"
          "  - **Drought stress** or **waterlogging** can lead to discoloration.\n"
          "  - **Sunburn/Heat Stress:** Intense sunlight, especially after a period of cloudy weather or on exposed leaves.\n"
          "  - **Cold Stress:** Exposure to cold temperatures can induce red coloration.\n"
          "- **Minor Fungal Infections:** Some non-specific fungal infections or early stages of other diseases might present with reddish spots.\n"
          "- **Pest Damage:** Sometimes, sap-sucking insects can cause discoloration that might be misinterpreted as a 'spot'.",
      treatment: "1.  **Nutrient Management (Primary Focus):**\n\n"
          "- Conduct soil and/or leaf tissue analysis to determine if there are any nutrient deficiencies, especially potassium and magnesium. Apply appropriate fertilizers to correct identified deficiencies.\n\n"
          "2.  **Water Management:**\n\n"
          "- Ensure consistent, adequate moisture, avoiding both drought stress and waterlogging. Improve drainage if necessary.\n\n"
          "3.  **Shade Management:**\n\n"
          "- Provide appropriate shade to protect tea bushes from excessive direct sunlight, especially during hot, dry periods.\n\n"
          "4.  **Pruning:**\n\n"
          "- Prune to maintain a healthy canopy and remove any severely affected or senescing leaves.\n\n"
          "5.  **Pest Control:**\n\n"
          "- Inspect for any pest infestations and manage them if present.\n\n"
          "6.  **Observation:**\n\n"
          "- If symptoms persist after addressing nutritional and environmental factors, or if they progress to more distinct lesions, consider sending a sample for specific disease diagnosis. However, 'red leaf spot' is often an indicator of stress rather than a virulent pathogen.",
    ),
    DiseaseInfoModel(
      diseaseId: "Tomato__bacterial_spot",
      name: "Tomato Bacterial Spot",
      explanation: "Tomato Bacterial Spot is caused by several species of *Xanthomonas* bacteria (*X. euvesicatoria*, *X. vesicatoria*, *X. gardneri*, *X. perforans*). It affects leaves, stems, and fruit.\n\n"
          "- **Leaf Symptoms:** Small, dark, water-soaked spots appear on leaves. These spots often develop a greasy or oily appearance and may have a yellow halo. As they enlarge, they become dark brown to black and can coalesce, leading to large necrotic areas and premature defoliation.\n"
          "- **Fruit Symptoms:** On fruit, it causes small, dark, raised, scab-like lesions that are typically circular and may have a slightly sunken center. These spots can make the fruit unmarketable.\n"
          "- **Stem Symptoms:** Elongated, dark, sunken lesions can also appear on stems.",
      possibleCauses: "The bacteria are primarily spread through:\n\n"
          "- **Contaminated Seeds/Transplants:** The most common source of initial infection. Bacteria can survive on or in seeds.\n"
          "- **Rain Splash & Wind:** Bacteria are easily spread by wind-driven rain, overhead irrigation, and splashing water.\n"
          "- **Warm, Humid Conditions:** High humidity and temperatures between 24-30°C favor disease development.\n"
          "- **Contaminated Tools/Hands:** Tools and human hands can spread bacteria between plants, especially when plants are wet.\n"
          "- **Plant Debris:** Bacteria can survive in infected plant debris in the soil.",
      treatment: "1.  **Use Certified Disease-Free Seeds/Transplants:**\n\n"
          "- This is the most critical preventive measure. Source seeds and seedlings from reputable suppliers that guarantee disease-free stock.\n\n"
          "2.  **Sanitation:**\n\n"
          "- Remove and destroy (do not compost) infected plants and all plant debris after harvest to reduce overwintering inoculum. Disinfect tools regularly, especially after handling infected plants.\n\n"
          "3.  **Cultural Practices:**\n\n"
          "- **Crop Rotation:** Rotate tomatoes with non-solanaceous crops (e.g., corn, beans, cucurbits) for at least 2-3 years.\n"
          "- **Watering:** Avoid overhead irrigation; use drip irrigation or water at the base of plants to minimize leaf wetness.\n"
          "- **Air Circulation:** Space plants adequately and prune for good air circulation to promote faster drying of foliage.\n"
          "- **Staking/Trellising:** Keep plants off the ground to improve air flow and reduce splash.\n\n"
          "4.  **Copper-based Bactericides:**\n\n"
          "- Apply copper-based bactericides (e.g., Copper Hydroxide, Copper Oxychloride) preventively or at the first sign of disease.\n"
          "- Applications need to be frequent during favorable conditions. Resistance to copper can develop, so tank-mixing with Mancozeb (if allowed by label) can improve efficacy.\n\n"
          "5.  **Resistant Varieties:**\n\n"
          "- Plant tomato varieties with genetic resistance to bacterial spot (look for varieties with 'X' genes).",
    ),
    DiseaseInfoModel(
      diseaseId: "Tomato__early_blight",
      name: "Tomato Early Blight",
      explanation: "Tomato Early Blight is a common fungal disease caused by *Alternaria solani*. It primarily affects older leaves first and then progresses upwards.\n\n"
          "- **Leaf Symptoms:** Characterized by dark brown to black circular spots that often have distinct concentric rings, giving a 'bull's-eye' target appearance. A yellow halo may surround the spots. As lesions enlarge and coalesce, entire leaves may yellow and die prematurely.\n"
          "- **Stem Symptoms:** Similar lesions can appear on stems, particularly at the soil line (collar rot).\n"
          "- **Fruit Symptoms:** Causes dark, sunken, leathery spots on fruit, usually near the stem end. These spots also have concentric rings and may be covered with dark fungal spores. Infected fruit may drop prematurely or rot.",
      possibleCauses: "The fungus overwinters in:\n\n"
          "- **Infected Plant Debris:** Primarily in infected tomato (or other Solanaceae) residue from previous crops.\n"
          "- **Soil:** Can survive in the soil for a limited time.\n\n"
          "The disease thrives in:\n\n"
          "- **Warm, Humid Conditions:** Favored by warm temperatures (20-29°C) and prolonged periods of leaf wetness from rain or dew (at least 6-8 hours).\n"
          "- **Plant Stress:** Plants under stress (e.g., drought, nutrient deficiency, heavy fruit load) are more susceptible.\n"
          "- **Spore Dispersal:** Spores are spread by wind, rain splash, and contaminated farm tools.",
      treatment: "1.  **Sanitation:**\n\n"
          "- Remove and destroy all tomato volunteer plants and crop debris after harvest. This significantly reduces inoculum for the next season. Avoid leaving cull piles.\n\n"
          "2.  **Cultural Practices:**\n\n"
          "- **Crop Rotation:** Rotate tomatoes with non-solanaceous crops for at least 2-3 years.\n"
          "- **Watering:** Use drip or furrow irrigation to minimize leaf wetness. If using overhead irrigation, water in the morning to allow foliage to dry quickly.\n"
          "- **Nutrition:** Ensure balanced fertilization, especially adequate nitrogen and potassium, to maintain plant vigor.\n"
          "- **Proper Spacing & Staking:** Provide adequate spacing and stake/trellis plants to improve air circulation and keep foliage off the ground.\n\n"
          "3.  **Resistant Varieties:**\n\n"
          "- Plant early blight resistant or tolerant tomato varieties if available.\n\n"
          "4.  **Fungicides:**\n\n"
          "- Apply protective fungicides such as Chlorothalonil, Mancozeb, or copper-based fungicides.\n"
          "- Systemic fungicides (e.g., Azoxystrobin, Pyraclostrobin, Difenoconazole) are also effective.\n"
          "- Begin applications preventively before symptoms appear (e.g., at first fruit set) or at the first sign of disease, especially during favorable conditions. Follow product labels for rates and intervals. Rotate fungicides to prevent resistance.",
    ),
    DiseaseInfoModel(
      diseaseId: "Tomato__healthy",
      name: "Healthy Tomato Plant",
      explanation: "A healthy tomato plant exhibits vigorous growth, lush, vibrant green leaves without any spots, yellowing, or signs of wilting. Stems are sturdy, and developing tomatoes are firm, uniformly colored, and free from lesions or deformities. The plant shows no visible signs of pest infestation or disease symptoms, indicating optimal health and high productive potential.",
      possibleCauses: "—",
      treatment: "1.  **Optimal Growing Conditions:**\n\n"
          "- Plant in full sun with well-drained, fertile soil.\n\n"
          "2.  **Use Certified Disease-Free Seeds/Transplants:**\n\n"
          "- Start with healthy plant material.\n\n"
          "3.  **Balanced Fertilization:**\n\n"
          "- Apply appropriate, balanced fertilizers based on soil tests to meet the tomato plant's nutritional needs throughout its growth cycle.\n\n"
          "4.  **Consistent Watering:**\n\n"
          "- Provide regular, deep watering, especially during fruit development. Avoid overhead watering to keep foliage dry.\n\n"
          "5.  **Proper Staking/Trellising:**\n\n"
          "- Support plants to keep foliage and fruit off the ground, improving air circulation and reducing disease risk.\n\n"
          "6.  **Pruning:**\n\n"
          "- Prune suckers and lower leaves (especially those touching the ground) to improve air circulation and concentrate energy on fruit production.\n\n"
          "7.  **Pest & Disease Monitoring:**\n\n"
          "- Regularly inspect plants for early signs of pests (e.g., aphids, hornworms, spider mites) or diseases and implement integrated pest management (IPM) strategies proactively.",
    ),
    DiseaseInfoModel(
      diseaseId: "Tomato__late_blight",
      name: "Tomato Late Blight",
      explanation: "Tomato Late Blight is a highly destructive and rapidly spreading fungal-like disease caused by the oomycete *Phytophthora infestans*. It can cause widespread crop failure if left unchecked.\n\n"
          "- **Leaf Symptoms:** Begins as small, irregular, water-soaked spots that rapidly enlarge into large, dark brown to black lesions, often with a fuzzy, white fungal growth (sporangia) on the underside of leaves, especially in humid conditions. Infected leaves rapidly shrivel and turn black.\n"
          "- **Stem Symptoms:** Dark brown to black lesions develop on stems and petioles, leading to their collapse.\n"
          "- **Fruit Symptoms:** Causes large, irregular, firm, dark brown to black, leathery blotches on green or ripe fruit. The infected areas may become sunken and develop secondary soft rots.",
      possibleCauses: "The pathogen overwinters in:\n\n"
          "- **Infected Plant Debris:** Primarily in infected potato or tomato cull piles and volunteer plants from previous seasons.\n"
          "- **Infected Tubers:** From potatoes, a common source.\n\n"
          "The disease thrives in:\n\n"
          "- **Cool, Wet Conditions:** Requires cool temperatures (10-24°C) and prolonged periods of high humidity and leaf wetness (e.g., 8-10 hours of continuous leaf wetness, 90-100% relative humidity).\n"
          "- **Wind & Rain:** Spores (sporangia and zoospores) are rapidly spread by wind and splashing rain over long distances.\n"
          "- **Absence of Resistant Varieties:** Planting susceptible tomato varieties increases risk.",
      treatment: "1.  **Use Certified Disease-Free Transplants/Seeds:**\n\n"
          "- **Crucial.** Always start with healthy, pathogen-free plants. Never use volunteer tomato or potato plants from a previous blighted crop.\n\n"
          "2.  **Sanitation:**\n\n"
          "- Eliminate all volunteer potato and tomato plants and cull piles. Bury or destroy any infected plants or fruit immediately.\n\n"
          "3.  **Fungicides (Essential for Control):**\n\n"
          "- Apply highly effective systemic fungicides (e.g., Metalaxyl, Mandipropamid, Fluopicolide) or protectant fungicides (e.g., Chlorothalonil, Mancozeb) preventively.\n"
          "- Begin applications early in the season, before symptoms appear, especially in regions with a history of late blight or when weather conditions are favorable. Frequent applications (e.g., every 5-7 days) may be necessary in severe outbreaks. Rotate fungicides to prevent resistance.\n\n"
          "4.  **Cultural Practices:**\n\n"
          "- **Watering:** Use drip or furrow irrigation to minimize leaf wetness. If using overhead, water in the morning to allow foliage to dry quickly.\n"
          "- **Plant Spacing & Air Circulation:** Ensure adequate spacing and prune plants to improve air circulation.\n"
          "- **Staking/Trellising:** Keep plants off the ground.\n"
          "- **Crop Rotation:** While less effective alone due to wind-borne spores, it can help reduce local inoculum.",
    ),
    DiseaseInfoModel(
      diseaseId: "Tomato__leaf_mold",
      name: "Tomato Leaf Mold",
      explanation: "Tomato Leaf Mold is a fungal disease caused by *Passalora fulva* (formerly *Cladosporium fulvum*). It primarily affects the leaves, especially under conditions of high humidity.\n\n"
          "- **Upper Leaf Surface Symptoms:** Begins as pale green or yellowish spots on the upper surface of older leaves. These spots often develop a slightly fuzzy, yellowish texture.\n"
          "- **Lower Leaf Surface Symptoms (Diagnostic):** On the corresponding underside of these spots, a characteristic velvety, olive-green to brown fungal growth appears. This fuzzy growth is the key diagnostic feature.\n"
          "- **Progression:** As the disease progresses, the spots enlarge, turn yellowish-brown, and may coalesce, leading to premature leaf yellowing, browning, and defoliation. Flowers and fruit may also be affected, leading to blighting or rot.",
      possibleCauses: "The fungus overwinters in:\n\n"
          "- **Crop Residue:** Survives on infected plant debris in the soil or in greenhouses.\n\n"
          "The disease thrives in:\n\n"
          "- **High Humidity:** Requires very high relative humidity (above 85%) and prolonged leaf wetness (at least 4-6 hours) for spore germination and infection. Often problematic in greenhouses or dense outdoor plantings.\n"
          "- **Moderate Temperatures:** Optimal range is 21-24°C.\n"
          "- **Poor Air Circulation:** Confined spaces and dense foliage trap humidity.\n"
          "- **Spore Dispersal:** Spores are spread by air currents, splashing water, and human activity.",
      treatment: "1.  **Improve Air Circulation & Reduce Humidity:**\n\n"
          "- **Ventilation:** In greenhouses, increase ventilation and reduce humidity. Use fans if necessary.\n"
          "- **Spacing:** Space plants adequately and prune to promote good air circulation within the canopy.\n"
          "- **Watering:** Water at the base of plants or use drip irrigation to keep foliage dry. Avoid overhead watering, especially late in the day.\n\n"
          "2.  **Sanitation:**\n\n"
          "- Remove and destroy (do not compost) infected leaves and plant debris. Clean up thoroughly after harvest.\n\n"
          "3.  **Resistant Varieties:**\n\n"
          "- Plant tomato varieties with genetic resistance to leaf mold. Many resistant varieties are available.\n\n"
          "4.  **Fungicides:**\n\n"
          "- Apply fungicides (e.g., Chlorothalonil, Mancozeb, copper-based fungicides) preventively or at the first sign of symptoms, especially in conditions favorable for the disease.\n"
          "- Systemic fungicides (e.g., Trifloxystrobin) can also be effective. Always follow label instructions and observe pre-harvest intervals.",
    ),
    DiseaseInfoModel(
      diseaseId: "Tomato__mosaic_virus",
      name: "Tomato Mosaic Virus (ToMV)",
      explanation: "Tomato Mosaic Virus (ToMV) is a highly contagious and widespread viral disease. It is closely related to Tobacco Mosaic Virus (TMV) and causes similar symptoms.\n\n"
          "- **Leaf Symptoms:** Causes a characteristic mosaic pattern (light and dark green patches) on leaves. Leaves may also be distorted, puckered, or stunted, sometimes with a 'fern-leaf' or shoestring appearance. Chlorosis (yellowing) or necrosis (browning) can also occur, especially on older leaves.\n"
          "- **Fruit Symptoms:** Infected fruit may be smaller, ripen unevenly, or develop internal browning, reducing marketability.\n"
          "- **Stunting:** Severely infected plants are often stunted.",
      possibleCauses: "ToMV is extremely stable and highly contagious. It is primarily spread through:\n\n"
          "- **Mechanical Transmission:** The most common and important mode of spread. It is easily transmitted by:\n"
          "  - **Contaminated Tools/Hands:** Pruning, tying, or harvesting can spread the virus if tools or hands contact infected sap and then healthy plants.\n"
          "  - **Infected Plant Debris:** Virus particles can survive in dead plant material for very long periods (years).\n"
          "  - **Contaminated Soil:** Virus can survive in soil where infected plants have been grown.\n"
          "- **Seeds:** Can be seed-borne, infecting seedlings upon germination.\n"
          "- **Tobacco Products:** Smokers can inadvertently transmit the virus from tobacco products to tomato plants.",
      treatment: "1.  **Use Certified Virus-Free Seeds/Transplants:**\n\n"
          "- **Crucial first step.** Always use certified, high-quality, virus-free seeds and transplants.\n\n"
          "2.  **Resistant Varieties:**\n\n"
          "- Plant tomato varieties with genetic resistance to ToMV (look for 'Tm-2a' or 'Tm-2' resistance genes in variety descriptions). This is the most effective long-term solution.\n\n"
          "3.  **Strict Sanitation:**\n\n"
          "- **Disinfect Tools:** Regularly disinfect pruning tools, stakes, and other equipment with a strong disinfectant (e.g., 10% bleach solution, Virkon S, or 70% alcohol) between plants or rows.\n"
          "- **Hand Washing:** Wash hands thoroughly with soap and water after handling plants, especially if you smoke or have touched potentially infected material.\n"
          "- **Remove Infected Plants:** Immediately remove and destroy (bag and discard, do not compost) any plants showing mosaic symptoms. Wash hands and disinfect tools after rogueing.\n"
          "- **Crop Rotation:** Practice crop rotation to reduce virus inoculum in the soil.\n\n"
          "4.  **Avoid Tobacco Products:**\n\n"
          "- Avoid smoking or using tobacco products while working with tomato plants, as ToMV is related to TMV found in tobacco.",
    ),
    DiseaseInfoModel(
      diseaseId: "Tomato__septoria_leaf_spot",
      name: "Tomato Septoria Leaf Spot",
      explanation: "Tomato Septoria Leaf Spot is a common fungal disease caused by *Septoria lycopersici*. It primarily affects the leaves, typically starting on older, lower leaves and moving upwards.\n\n"
          "- **Symptoms:** Characterized by numerous small (1/16 to 1/4 inch), circular spots with dark brown margins and light gray or tan centers. A key diagnostic feature is the presence of tiny, black, pimple-like structures (pycnidia - fungal fruiting bodies) visible within the centers of the spots. Severely infected leaves turn yellow, then brown, and often drop prematurely, leading to significant defoliation and sunscald on exposed fruit.",
      possibleCauses: "The fungus overwinters in:\n\n"
          "- **Infected Plant Debris:** Primarily in infected tomato plant residue (leaves, stems) from previous crops.\n"
          "- **Weeds:** Can also survive on some related weed hosts (e.g., nightshade, horsenettle).\n\n"
          "The disease thrives in:\n\n"
          "- **Warm, Wet Conditions:** Favored by warm temperatures (20-25°C) and prolonged periods of leaf wetness from rain or overhead irrigation (at least 2 days of wetness).\n"
          "- **Spore Dispersal:** Spores are spread primarily by splashing rain, wind, contaminated tools, and human activity.",
      treatment: "1.  **Sanitation:**\n\n"
          "- Remove and destroy all tomato plant debris (leaves, stems) at the end of the growing season. Do not compost infected material. Remove any volunteer tomato plants or susceptible weeds.\n\n"
          "2.  **Cultural Practices:**\n\n"
          "- **Crop Rotation:** Rotate tomatoes with non-solanaceous crops for at least 2-3 years.\n"
          "- **Watering:** Use drip irrigation or water at the base of plants to keep foliage dry. If using overhead irrigation, water in the morning to allow leaves to dry quickly.\n"
          "- **Staking/Trellising & Pruning:** Stake or trellis plants to keep foliage off the ground. Prune lower leaves (especially those touching soil) and suckers to improve air circulation.\n"
          "- **Spacing:** Ensure adequate plant spacing to promote good air flow.\n\n"
          "3.  **Fungicides:**\n\n"
          "- Apply protective fungicides such as Chlorothalonil, Mancozeb, or copper-based fungicides.\n"
          "- Begin applications preventively when conditions are favorable for disease, or at the first sign of symptoms, especially during flowering and fruit set. Repeat every 7-10 days as per label instructions and weather conditions.\n\n"
          "4.  **Resistant Varieties:**\n\n"
          "- While highly resistant varieties are limited, some varieties may show more tolerance. Choose vigorous, healthy plants.",
    ),
    DiseaseInfoModel(
      diseaseId: "Tomato__spider_mites_(two_spotted_spider_mite)",
      name: "Tomato Spider Mites (Two-spotted Spider Mite)",
      explanation: "Tomato Spider Mites, particularly the Two-spotted Spider Mite (*Tetranychus urticae*), are tiny arachnids (not insects) that feed on plant sap, causing significant damage, especially in hot, dry conditions.\n\n"
          "- **Symptoms:** Initial symptoms include tiny, pale yellow or white stipples (pinprick dots) on the upper leaf surface, where the mites have sucked out chlorophyll. As damage progresses, leaves develop a bronze, yellowish, or silvery appearance. Heavily infested leaves may curl, dry up, and eventually drop. Fine webbing (like spider webs) is often visible on the undersides of leaves, especially between veins or where leaves meet stems, indicating a severe infestation.\n"
          "- **Visible Pests:** Mites themselves are tiny (pinhead-sized), often reddish-brown or greenish, and are best seen with a hand lens on the undersides of leaves. Two dark spots are often visible on their backs.",
      possibleCauses: "Spider mite infestations are favored by:\n\n"
          "- **Hot, Dry Conditions:** Mites thrive and reproduce rapidly in hot, dry weather. High humidity suppresses them.\n"
          "- **Dusty Conditions:** Dusty environments can deter natural enemies and promote mite buildup.\n"
          "- **Broad-Spectrum Insecticide Use:** Indiscriminate use of insecticides can kill natural predators (e.g., predatory mites, ladybugs) that keep spider mite populations in check, leading to outbreaks.",
      treatment: "1.  **Water Sprays (First Line of Defense):**\n\n"
          "- Strong jets of water, especially to the undersides of leaves, can dislodge mites and disrupt webbing. Repeat every few days, particularly in dry weather.\n\n"
          "2.  **Cultural Practices:**\n\n"
          "- **Humidity:** Increase humidity around plants in dry climates (e.g., by misting or using a humidifier in greenhouses).\n"
          "- **Weed Control:** Control weeds in and around the garden, as many weeds can host spider mites.\n\n"
          "3.  **Biological Control:**\n\n"
          "- Introduce or conserve natural enemies, particularly **predatory mites** (e.g., *Phytoseiulus persimilis*). Other predators include ladybugs, lacewings, and minute pirate bugs.\n\n"
          "4.  **Insecticidal Soaps & Horticultural Oils:**\n\n"
          "- Apply insecticidal soaps or horticultural oils (e.g., Neem oil) to thoroughly cover the undersides of leaves. These work by suffocating mites. Repeat applications are necessary, as they only kill on contact and have no residual effect. Test on a small area first to check for phytotoxicity.\n\n"
          "5.  **Acaricides (Miticides - Use as a last resort for severe infestations):**\n\n"
          "- If infestations are severe and other methods fail, apply specific acaricides. Rotate products with different modes of action to prevent resistance development. Always follow label instructions and observe pre-harvest intervals.",
    ),
    DiseaseInfoModel(
      diseaseId: "Tomato__target_spot",
      name: "Tomato Target Spot",
      explanation: "Tomato Target Spot is a fungal disease caused by *Corynespora cassiicola*. It affects leaves, stems, and fruit.\n\n"
          "- **Leaf Symptoms:** Initial symptoms are small, dark brown, circular spots with concentric rings (target-like pattern), similar to early blight but often smaller and darker. These spots enlarge rapidly, coalesce, and can cause large areas of the leaf to become necrotic, leading to severe defoliation, particularly on older leaves.\n"
          "- **Fruit Symptoms:** On fruit, it causes small, dark, sunken, circular lesions that may also have concentric rings. These spots can make the fruit unmarketable.\n"
          "- **Stem Symptoms:** Lesions can also appear on stems.",
      possibleCauses: "The fungus overwinters in:\n\n"
          "- **Infected Plant Debris:** Primarily in infected tomato residue from previous crops.\n"
          "- **Weeds:** Can infect a wide range of weed species.\n\n"
          "The disease thrives in:\n\n"
          "- **Warm, Humid Conditions:** Favored by warm temperatures (25-30°C) and prolonged periods of high humidity and leaf wetness (at least 12-18 hours of wetness).\n"
          "- **Spore Dispersal:** Spores are spread by wind, splashing rain, and contaminated farm tools.",
      treatment: "1.  **Sanitation:**\n\n"
          "- Remove and destroy all tomato plant debris and volunteer plants at the end of the growing season. Do not compost infected material. Control susceptible weeds in and around the growing area.\n\n"
          "2.  **Cultural Practices:**\n\n"
          "- **Crop Rotation:** Rotate tomatoes with non-solanaceous crops for at least 2-3 years.\n"
          "- **Watering:** Use drip irrigation or water at the base of plants to minimize leaf wetness. If using overhead irrigation, water in the morning to allow foliage to dry quickly.\n"
          "- **Staking/Trellising & Pruning:** Stake or trellis plants to keep foliage off the ground. Prune lower leaves (especially those touching soil) and suckers to improve air circulation.\n"
          "- **Spacing:** Ensure adequate plant spacing to promote good air flow.\n\n"
          "3.  **Fungicides:**\n\n"
          "- Apply protective fungicides such as Chlorothalonil, Mancozeb, or copper-based fungicides.\n"
          "- Systemic fungicides (e.g., Azoxystrobin, Pyraclostrobin) are also effective. Begin applications preventively before symptoms appear (e.g., at first fruit set) or at the first sign of disease, especially during favorable conditions. Follow product labels for rates and intervals. Rotate fungicides to prevent resistance.\n\n"
          "4.  **Resistant Varieties:**\n\n"
          "- Some tomato varieties show partial resistance or tolerance to target spot.",
    ),
    DiseaseInfoModel(
      diseaseId: "Tomato__yellow_leaf_curl_virus",
      name: "Tomato Yellow Leaf Curl Virus (TYLCV)",
      explanation: "Tomato Yellow Leaf Curl Virus (TYLCV) is a highly destructive viral disease transmitted by the silverleaf whitefly (*Bemisia tabaci*). It causes severe stunting and yield loss.\n\n"
          "- **Leaf Symptoms (Diagnostic):** Characterized by severe upward (cupping) or downward curling of young leaves, which also become noticeably thickened, leathery, and brittle. Leaves are often mottled with yellow or pale green patches, giving a distinct yellowing, especially along the leaf margins. Veins may appear purple.\n"
          "- **Plant Symptoms:** Infected plants are severely stunted, bushy, and produce very few, if any, fruits. Fruit that does develop is often small and of poor quality. Plants may appear stiff and rigid.\n"
          "- **No Fruit Set:** Often, flowers will drop prematurely or fail to set fruit.",
      possibleCauses: "TYLCV is exclusively transmitted by:\n\n"
          "- **Silverleaf Whitefly (*Bemisia tabaci*):** This is the sole natural vector of the virus. The whiteflies acquire the virus by feeding on infected plants and then transmit it to healthy ones. The virus persists in the whitefly for its lifetime (persistent transmission).\n"
          "- **Infected Transplants:** Using infected transplants is a common way the virus enters new fields.\n"
          "- **Weeds:** The virus can survive in a wide range of weed hosts that are also susceptible to the whitefly.",
      treatment: "1.  **Use Certified Virus-Free Seeds/Transplants:**\n\n"
          "- **Absolutely critical.** Always start with certified, healthy, virus-free tomato plants. Do not grow plants from unknown seed sources or those suspected of being infected.\n\n"
          "2.  **Resistant Varieties:**\n\n"
          "- **Most effective strategy.** Plant tomato varieties with genetic resistance to TYLCV (look for varieties with 'Ty' genes, e.g., Ty-1, Ty-2, Ty-3, Ty-5). Combining multiple resistance genes provides broader protection.\n\n"
          "3.  **Whitefly Management (Vector Control):**\n\n"
          "- **Exclusion:** Use insect-proof netting in greenhouses or high tunnels to prevent whitefly entry.\n"
          "- **Insecticides:** Apply insecticides effective against whiteflies (e.g., neonicotinoids, pyrifluquinazon, buprofezin) preventively or as soon as whiteflies are detected. Rotate insecticide modes of action to prevent resistance.\n"
          "- **Yellow Sticky Traps:** Use yellow sticky traps to monitor whitefly populations and for mass trapping in small areas.\n"
          "- **Biological Control:** Release natural enemies of whiteflies (e.g., parasitic wasps like *Encarsia formosa*, predatory mites).\n\n"
          "4.  **Sanitation:**\n\n"
          "- Immediately remove and destroy (bag and discard, do not compost) any plants showing TYLCV symptoms, as they become a source of virus for whiteflies. Control weeds in and around the field that can host whiteflies or the virus.\n\n"
          "5.  **Reflective Mulches:**\n\n"
          "- Use silver-colored reflective mulches in the early stages of the crop to deter whiteflies from landing on plants.",
    ),
    DiseaseInfoModel(
      diseaseId: "Wheat__brown_rust",
      name: "Wheat Brown Rust (Leaf Rust)",
      explanation: "Wheat Brown Rust, also known as Leaf Rust, is a widespread fungal disease caused by *Puccinia triticina*. It is one of the most common rust diseases of wheat.\n\n"
          "- **Symptoms:** Characterized by small, round to oval, orange-brown pustules (uredinia) that are scattered randomly on the upper surface of leaves. These pustules contain powdery spores that rub off easily. As the disease progresses, leaves may turn yellow and then brown, leading to premature drying and reduced photosynthetic area, particularly on older leaves. In severe cases, it can significantly reduce yield and grain quality.",
      possibleCauses: "The fungus overwinters in:\n\n"
          "- **Volunteer Wheat:** On volunteer wheat plants in mild climates.\n"
          "- **Spores:** Spores are wind-dispersed from southern regions or adjacent fields.\n\n"
          "The disease thrives in:\n\n"
          "- **Moderate Temperatures:** Favored by moderate temperatures (15-22°C) and high humidity/dew for spore germination and infection (at least 6-8 hours of leaf wetness).\n"
          "- **Wind:** Spores are easily carried by wind over long distances.\n"
          "- **Susceptible Varieties:** Planting non-resistant wheat varieties is a major risk factor.",
      treatment: "1.  **Resistant Varieties:**\n\n"
          "- **Most effective strategy.** Plant wheat varieties with genetic resistance to brown rust. Consult local agricultural research for recommended resistant varieties suitable for your region.\n\n"
          "2.  **Fungicides:**\n\n"
          "- Apply foliar fungicides (e.g., Triazoles like Propiconazole, Tebuconazole, or Strobilurins like Pyraclostrobin, Azoxystrobin) as a protective or early curative measure.\n"
          "- Timing is crucial, usually applied when disease severity reaches economic thresholds, typically from tillering to flag leaf emergence. Always follow label instructions and observe pre-harvest intervals. Rotate fungicide modes of action to prevent resistance.\n\n"
          "3.  **Cultural Practices:**\n\n"
          "- **Avoid Early Planting (in some areas):** Planting too early in some regions can expose young, susceptible plants to early spore inoculum.\n"
          "- **Destroy Volunteer Wheat:** Eliminate volunteer wheat plants and susceptible wild grasses that can harbor the fungus.\n"
          "- **Balanced Nutrition:** Ensure balanced fertilization; avoid excessive nitrogen, which can promote lush growth more susceptible to rust.",
    ),
    DiseaseInfoModel(
      diseaseId: "Wheat__healthy",
      name: "Healthy Wheat Plant",
      explanation: "A healthy wheat plant exhibits upright, vibrant green culms (stems) with unblemished leaves. The heads (spikes) are well-formed and filled with developing grains. The plant shows vigorous growth, dense tillering, and no visible signs of pest infestation, disease symptoms (such as rust pustules or leaf spots), or nutrient deficiencies, indicating optimal growth and high yield potential.",
      possibleCauses: "—",
      treatment: "1.  **Use Certified, High-Quality Seeds:**\n\n"
          "- Plant certified disease-free and high-germination seeds adapted to your climate.\n\n"
          "2.  **Optimal Planting:**\n\n"
          "- Plant at the correct depth, spacing, and time for your region.\n\n"
          "3.  **Balanced Fertilization:**\n\n"
          "- Apply nitrogen, phosphorus, potassium, and micronutrients based on soil tests and crop needs. Proper nitrogen management is crucial.\n\n"
          "4.  **Weed Control:**\n\n"
          "- Implement timely and effective weed management to reduce competition for resources.\n\n"
          "5.  **Water Management:**\n\n"
          "- Provide adequate moisture, especially during critical growth stages (e.g., tillering, booting, grain fill), but avoid waterlogging.\n\n"
          "6.  **Pest & Disease Monitoring:**\n\n"
          "- Regularly scout fields for early detection of pests (e.g., aphids, Hessian fly) or diseases (e.g., rusts, blights, powdery mildew) and implement integrated pest management (IPM) strategies proactively.\n\n"
          "7.  **Crop Rotation:**\n\n"
          "- Practice crop rotation to break pest and disease cycles and improve soil health.",
    ),
    DiseaseInfoModel(
      diseaseId: "Wheat__septoria",
      name: "Wheat Septoria Leaf Blotch (Stagonospora Nodorum Blotch)",
      explanation: "Wheat Septoria Leaf Blotch (sometimes called Stagonospora Nodorum Blotch or simply Stagonospora Blotch) is a fungal disease caused by *Parastagonospora nodorum* (formerly *Septoria nodorum* or *Stagonospora nodorum*). It affects leaves, glumes, and stems.\n\n"
          "- **Leaf Symptoms:** Initial symptoms are small, oval to rectangular, water-soaked lesions that turn yellowish, then tan-brown. As they enlarge, they may coalesce, forming large irregular blotches that often extend across veins. Tiny, dark brown, pinhead-sized fungal fruiting bodies (pycnidia) can be seen within the lesions, especially on older lesions, though they are harder to see than in *Septoria tritici* blotch.\n"
          "- **Glume Symptoms (Head Blight/Glume Blotch):** Causes purplish-brown lesions on the glumes (chaff) of the wheat head, often starting from the tip of the glume. Severe infection can lead to shriveled grains.\n"
          "- **Stem Symptoms:** Can cause dark lesions on stems, particularly at nodes.",
      possibleCauses: "The fungus overwinters in:\n\n"
          "- **Infected Crop Residue:** Primarily in wheat stubble and straw on the soil surface.\n"
          "- **Infected Seed:** Can be seed-borne.\n\n"
          "The disease thrives in:\n\n"
          "- **Cool to Moderate Temperatures:** Optimal range is 15-25°C.\n"
          "- **Wet Conditions:** Requires prolonged periods of leaf wetness (at least 6-12 hours) from rain or dew for spore germination and infection.\n"
          "- **Splashing Rain:** Spores are primarily dispersed by splashing rain from infested residue to new plants.\n"
          "- **Dense Stands:** Canopies that remain wet for longer periods are more susceptible.\n"
          "- **No-Till Systems:** Can be more prevalent in no-till systems where residue remains on the surface.",
      treatment: "1.  **Resistant Varieties:**\n\n"
          "- Plant wheat varieties with genetic resistance or improved tolerance to Septoria leaf blotch. Consult local seed companies and extension for recommendations.\n\n"
          "2.  **Crop Rotation:**\n\n"
          "- Rotate wheat with non-cereal crops (e.g., legumes, oilseeds) for at least 1-2 years to allow residue to decompose and reduce inoculum.\n\n"
          "3.  **Residue Management:**\n\n"
          "- Tillage that buries wheat stubble and straw can help reduce fungal inoculum. However, balance this with soil conservation goals.\n\n"
          "4.  **Fungicides:**\n\n"
          "- Apply foliar fungicides (e.g., Triazoles like Propiconazole, Tebuconazole; Strobilurins like Azoxystrobin, Pyraclostrobin; or SDHIs) preventively or at the first sign of disease, especially from flag leaf emergence to heading.\n"
          "- Timing is critical. Fungicides are often applied in conjunction with fusarium head blight or rust management. Always follow label instructions and rotate fungicide modes of action to prevent resistance.\n\n"
          "5.  **Seed Treatment:**\n\n"
          "- Use fungicide seed treatments if seed-borne infection is a concern.",
    ),
    DiseaseInfoModel(
      diseaseId: "Wheat__yellow_rust",
      name: "Wheat Yellow Rust (Stripe Rust)",
      explanation: "Wheat Yellow Rust, also known as Stripe Rust, is a fungal disease caused by *Puccinia striiformis f. sp. tritici*. It is highly destructive and can cause significant yield losses, especially in cool, humid conditions.\n\n"
          "- **Symptoms:** Characterized by bright yellow to orange-yellow pustules (uredinia) that are arranged in distinctive, long stripes or streaks on the leaves, typically parallel to the leaf veins. These pustules are initially covered by the epidermis but eventually rupture to release powdery spores. In severe infections, entire leaves can turn yellow and then brown prematurely, impacting photosynthesis and leading to shriveled grains.",
      possibleCauses: "The fungus overwinters in:\n\n"
          "- **Volunteer Wheat:** On volunteer wheat plants in cool climates or higher elevations.\n"
          "- **Spores:** Spores are wind-dispersed from other infected fields or regions where the fungus survives.\n\n"
          "The disease thrives in:\n\n"
          "- **Cool Temperatures:** Favored by relatively cool temperatures (10-15°C) and prolonged periods of leaf wetness from dew or rain (at least 6 hours). Optimal for new infection.\n"
          "- **Cool Nights/Warm Days:** Ideal for the pathogen.\n"
          "- **Wind:** Spores are easily carried by wind over long distances.\n"
          "- **Susceptible Varieties:** Planting non-resistant wheat varieties is a major risk factor.",
      treatment: "1.  **Resistant Varieties:**\n\n"
          "- **Most effective strategy.** Plant wheat varieties with high levels of genetic resistance to yellow rust. This is crucial for long-term management. Consult local agricultural research and extension for recommended resistant varieties suitable for your region.\n\n"
          "2.  **Fungicides:**\n\n"
          "- Apply foliar fungicides (e.g., Triazoles like Propiconazole, Tebuconazole; Strobilurins like Azoxystrobin, Pyraclostrobin; or SDHIs) as a protective or early curative measure.\n"
          "- Timing is critical, often applied early in the season (e.g., at tillering or flag leaf emergence) if yellow rust is detected or forecast. Repeat applications may be necessary depending on disease pressure and duration of favorable conditions. Always follow label instructions and observe pre-harvest intervals. Rotate fungicide modes of action to prevent resistance.\n\n"
          "3.  **Cultural Practices:**\n\n"
          "- **Destroy Volunteer Wheat:** Eliminate volunteer wheat plants and susceptible wild grasses that can harbor the fungus.\n"
          "- **Balanced Nutrition:** Ensure balanced fertilization; avoid excessive nitrogen, which can promote lush growth more susceptible to rust.\n"
          "- **Early Warning Systems:** Utilize local disease forecasting systems to time fungicide applications effectively.",
    ),
  ];


  static DiseaseInfoModel? getDiseaseById(String id) {
    return _diseases.firstWhereOrNull((d) => d.diseaseId == id);
  }

  static String getName(String id) {
    return getDiseaseById(id)?.name ?? 'None';
  }

}
