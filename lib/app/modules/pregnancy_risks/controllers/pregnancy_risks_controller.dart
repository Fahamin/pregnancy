import 'package:get/get.dart';

import '../../../../model/pregnancy_rm_model.dart';

class PregnancyRisksController extends GetxController {
  final List<PregnancyRiskModel> pregnancyRisk = [
    PregnancyRiskModel(
      'Gestational Diabetes',
      "assets/risk/gesdibet.png",
      'A type of diabetes that develops during pregnancy when the body cannot produce enough insulin to handle the increased blood sugar levels. It can lead to complications such as high birth weight, preterm birth, and an increased risk of type 2 diabetes for both the mother and child later in life.',
    ),
    PregnancyRiskModel(
      'Preeclampsia',
      "assets/risk/pree.png",
      'A pregnancy complication characterized by high blood pressure and damage to organs, often the liver and kidneys. It usually occurs after 20 weeks of pregnancy and can lead to serious complications such as eclampsia (seizures), HELLP syndrome, or preterm birth if not managed properly.',
    ),
    PregnancyRiskModel(
      'Ectopic Pregnancy',
      "assets/risk/ep.png",

      'A condition where the fertilized egg implants outside the uterus, usually in the fallopian tube. This is a medical emergency as it can cause life-threatening bleeding if the tube ruptures. Symptoms include severe abdominal pain and vaginal bleeding.',
    ),
    PregnancyRiskModel(
      'Miscarriage',
      "assets/risk/mis.png",

      'The loss of a pregnancy before the 20th week, often due to chromosomal abnormalities, infections, or hormonal imbalances. It is a common but emotionally challenging experience, with symptoms including vaginal bleeding and cramping.',
    ),
    PregnancyRiskModel(
      'Placenta Previa',
      "assets/risk/plac.png",

      'A condition where the placenta covers the cervix, partially or completely. It can cause severe bleeding during pregnancy or delivery and often requires a cesarean section to safely deliver the baby.',
    ),
    PregnancyRiskModel(
      'Placental Abruption',
      "assets/risk/pa.png",

      'A serious condition where the placenta separates from the uterine wall before delivery. It can deprive the baby of oxygen and nutrients and cause heavy bleeding in the mother. Risk factors include high blood pressure, trauma, or smoking.',
    ),
    PregnancyRiskModel(
      'Hyperemesis Gravidarum',
      "assets/risk/hg.png",

      'Severe nausea and vomiting during pregnancy that leads to dehydration, weight loss, and electrolyte imbalances. It is more severe than typical morning sickness and may require hospitalization for treatment with IV fluids and medications.',
    ),
    PregnancyRiskModel(
      'Preterm Labor',
      "assets/risk/pl.png",

      'Labor that begins before 37 weeks of pregnancy. It can result in premature birth, which may lead to health challenges for the baby, such as respiratory distress syndrome, developmental delays, or long-term disabilities.',
    ),
    PregnancyRiskModel(
      'Anemia',
      "assets/risk/ane.png",

      'A condition where the mother has a lower-than-normal number of red blood cells, often due to iron deficiency. It can cause fatigue, weakness, and increase the risk of complications during delivery, such as excessive bleeding.',
    ),
    PregnancyRiskModel(
      'Infections During Pregnancy',
      "assets/risk/ip.png",

      'Infections such as urinary tract infections (UTIs), group B streptococcus, or sexually transmitted infections (STIs) can pose risks to both the mother and baby. Untreated infections can lead to preterm labor, low birth weight, or congenital abnormalities.',
    ),
    PregnancyRiskModel(
      'Gestational Hypertension',
      "assets/risk/hyp.png",

      'High blood pressure that develops after 20 weeks of pregnancy without the presence of protein in the urine (unlike preeclampsia). It increases the risk of preeclampsia and other complications, such as preterm birth or low birth weight.',
    ),
    PregnancyRiskModel(
      'Oligohydramnios',
      "assets/risk/oligo.png",

      'A condition where there is too little amniotic fluid around the baby. It can restrict fetal growth, lead to complications during delivery, and increase the risk of birth defects or stillbirth.',
    ),
    PregnancyRiskModel(
      'Polyhydramnios',
      "assets/risk/poly.png",

      'A condition where there is too much amniotic fluid around the baby. It can increase the risk of preterm labor, placental abruption, or umbilical cord prolapse. It is often associated with gestational diabetes or fetal abnormalities.',
    ),
    PregnancyRiskModel(
      'Intrauterine Growth Restriction (IUGR)',
      "assets/risk/in.png",

      'A condition where the baby does not grow at the expected rate inside the womb, often due to placental issues, infections, or maternal health problems. It can lead to low birth weight and long-term developmental issues.',
    ),
    PregnancyRiskModel(
      'Rh Incompatibility',
      "assets/risk/rh.png",

      'A condition where the mother’s blood type is Rh-negative, and the baby’s blood type is Rh-positive. This can lead to the mother’s immune system attacking the baby’s red blood cells, causing hemolytic disease of the newborn. It can be prevented with Rh immunoglobulin injections.',
    ),
    PregnancyRiskModel(
      'Deep Vein Thrombosis (DVT)',
      "assets/risk/dv.png",

      'A blood clot that forms in a deep vein, usually in the legs. Pregnancy increases the risk of DVT due to changes in blood flow and clotting factors. If the clot travels to the lungs, it can cause a life-threatening pulmonary embolism.',
    ),
    PregnancyRiskModel(
      'Postpartum Hemorrhage',
      "assets/risk/phe.png",

      'Excessive bleeding after childbirth, often caused by the uterus not contracting properly or tears in the birth canal. It is a serious condition that requires immediate medical attention to prevent shock or organ failure.',
    ),
    PregnancyRiskModel(
      'Gestational Trophoblastic Disease (GTD)',
      "assets/risk/gtd.png",

      'A group of rare tumors that develop from cells in the placenta. It can mimic a normal pregnancy initially but may lead to complications such as vaginal bleeding, high hCG levels, or the spread of tumors to other organs.',
    ),
    PregnancyRiskModel(
      'Cholestasis of Pregnancy',
      "assets/risk/cop.png",

      'A liver condition that occurs during pregnancy, causing intense itching, especially on the hands and feet. It increases the risk of preterm birth, stillbirth, and fetal distress. Treatment may include medications to reduce bile acids.',
    ),
    PregnancyRiskModel(
      'Cervical Insufficiency',
      "assets/risk/cins.png",

      'A condition where the cervix begins to dilate and thin too early in pregnancy, often leading to miscarriage or preterm birth. It may require a cervical cerclage (stitch) to keep the cervix closed during pregnancy.',
    ),
    PregnancyRiskModel(
      'Multiple Pregnancy (Twins, Triplets, etc.)',
      "assets/risk/tw.png",

      'Carrying more than one baby increases the risk of complications such as preterm labor, preeclampsia, gestational diabetes, and low birth weight. Multiple pregnancies often require closer monitoring and specialized care.',
    ),
    PregnancyRiskModel(
      'Stillbirth',
      "assets/risk/sm.png",
      'The loss of a baby after 20 weeks of pregnancy, often due to placental problems, infections, or birth defects. It is a devastating experience that requires emotional support and medical evaluation to determine the cause.',
    ),
    PregnancyRiskModel(
      'Birth Defects',
      "assets/risk/bd.png",

      'Structural or functional abnormalities present at birth, such as heart defects, neural tube defects, or genetic disorders. Some defects can be detected during prenatal screening, while others may only be apparent after birth.',
    ),
    PregnancyRiskModel(
      'Uterine Rupture',
      "assets/risk/uru.png",

      'A rare but serious condition where the uterus tears during labor, often in women who have had a previous cesarean section or uterine surgery. It can cause severe bleeding and requires emergency medical intervention.',
    ),
    PregnancyRiskModel(
      'Mental Health Issues',
      "assets/risk/men.png",

      'Conditions like depression, anxiety, or postpartum psychosis can occur during or after pregnancy. They require proper care and treatment to ensure the well-being of both the mother and baby. Untreated mental health issues can affect bonding and the baby’s development.',
    ),
    PregnancyRiskModel(
      'Amniotic Fluid Embolism',
      "assets/risk/afe.png",

      'A rare but life-threatening condition where amniotic fluid enters the mother’s bloodstream, causing a severe allergic-like reaction. It can lead to cardiac arrest, respiratory failure, and death if not treated immediately.',
    ),
    PregnancyRiskModel(
      'Macrosomia',
      "assets/risk/macr.png",
      'A condition where the baby grows larger than average, increasing the risk of complications during delivery, such as shoulder dystocia or the need for a cesarean section. It is often associated with gestational diabetes.',
    ),
    PregnancyRiskModel(
      'Shoulder Dystocia',
      "assets/risk/sd.png",
      'A delivery complication where the baby’s shoulders get stuck in the birth canal after the head has been delivered. It requires immediate medical intervention to prevent injury to the baby or mother.',
    ),
    PregnancyRiskModel(
      'Postpartum Depression',
      "assets/risk/pd.png",
      'A form of depression that occurs after childbirth, characterized by persistent sadness, fatigue, and difficulty bonding with the baby. It requires treatment with therapy, support, and sometimes medication to ensure recovery.',
    ),
    PregnancyRiskModel(
      'Pregnancy-Induced Liver Disorders',
      "assets/risk/pkd.png",
      'Conditions like HELLP syndrome (hemolysis, elevated liver enzymes, low platelet count) or acute fatty liver of pregnancy can occur, posing serious risks to both mother and baby. Symptoms include nausea, vomiting, and abdominal pain.',
    ),
  ];
}
