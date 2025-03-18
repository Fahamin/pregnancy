import 'package:get/get.dart';

import '../../../../model/mother_care_model.dart';

class MotherCareController extends GetxController {
  List<Mothercare> Mothercares = [
    // mother 1–12 (First Trimester)
    Mothercare(
      1,
      'assets/mother/mc1.jpg',
      "Pre-conception Care ",
      "Focus on a healthy diet rich in fruits, vegetables, whole grains, and lean proteins. Start taking folic acid (400–800 mcg daily) to prevent neural tube defects. Avoid alcohol, smoking, and excessive caffeine. Schedule a pre-pregnancy checkup with your doctor.",
    ),
    Mothercare(
      2,
      'assets/mother/mc2.jpg',
      "Ovulation Tracking ",
      "Track ovulation using ovulation predictor kits or apps. Maintain a healthy lifestyle with adequate sleep and stress management. Avoid exposure to harmful chemicals or radiation.",
    ),
    Mothercare(
      3,
      'assets/mother/mc3.jpg',
      "Implantation Stage ",
      "Stay hydrated and avoid strenuous activities. Look for early signs of pregnancy, such as light spotting or mild cramping. Continue taking prenatal vitamins.",
    ),
    Mothercare(
      4,
      'assets/mother/mc4.jpg',
      "Pregnancy Test ",
      "Take a home pregnancy test after a missed period. Confirm pregnancy with a blood test at your doctor’s office. Schedule your first prenatal appointment.",
    ),
    Mothercare(
      5,
      'assets/mother/mc5.jpg',
      "Prenatal Vitamins ",
      "Start taking prenatal vitamins with folic acid, iron, and DHA. Avoid raw or undercooked foods to prevent infections like listeria. Stay hydrated and eat small, frequent meals to combat nausea.",
    ),
    Mothercare(
      6,
      'assets/mother/mc6.jpg',
      "Manage Morning Sickness ",
      "Eat small, bland meals (e.g., crackers, toast) to manage nausea. Stay hydrated with water, herbal teas, or electrolyte drinks. Avoid strong smells and take vitamin B6 supplements if recommended.",
    ),
    Mothercare(
      7,
      'assets/mother/mc7.jpg',
      "Exercise and Rest ",
      "Engage in light exercises like walking or prenatal yoga. Prioritize rest and sleep to support your body’s changes. Avoid high-impact activities or heavy lifting.",
    ),
    Mothercare(
      8,
      'assets/mother/mc8.jpg',
      "First Ultrasound ",
      "Schedule your first ultrasound to confirm the baby’s heartbeat and due date. Complete blood tests to check for infections, blood type, and genetic conditions. Discuss any concerns with your healthcare provider.",
    ),

    // mother 13–27 (Second Trimester)
    Mothercare(
      9,
      'assets/mother/mc9.jpg',
      "Calcium and Iron Boost ",
      "Increase intake of calcium-rich foods (e.g., dairy, leafy greens) and iron-rich foods (e.g., lean meats, beans). Take iron supplements if prescribed to prevent anemia. Stay hydrated to support increased blood volume.",
    ),
    Mothercare(
      10,
      'assets/mother/mc10.jpg',
      "Pelvic Floor Exercises ",
      "Start practicing Kegel exercises to strengthen pelvic muscles. These exercises help prevent urinary incontinence and prepare for labor. Aim for 10–15 repetitions, 2–3 times daily.",
    ),
    Mothercare(
      11,
      'assets/mother/mc11.jpg',
      "Mental Wellness ",
      "Manage mood swings by practicing mindfulness or meditation. Stay connected with loved ones for emotional support. Consider joining a prenatal support group.",
    ),
    Mothercare(
      12,
      'assets/mother/mc12.jpg',
      "Genetic Screening ",
      "Attend the mid-pregnancy anomaly scan to check for chromosomal abnormalities. Discuss screening options like NIPT (Non-Invasive Prenatal Testing) with your doctor. Monitor fetal movements as the baby becomes more active.",
    ),
    Mothercare(
      13,
      'assets/mother/mc13.jpg',
      "Posture and Back Care ",
      "Maintain proper posture to reduce back pain. Use a pregnancy pillow for support while sleeping. Avoid standing or sitting for long periods.",
    ),
    Mothercare(
      14,'assets/mother/mc14.jpg',
      "Monitor Fetal Movements ",
      "Track your baby’s movements daily. Report any significant changes in movement to your doctor. Stay hydrated and eat a balanced diet to support fetal growth.",
    ),
    Mothercare(
      15,'assets/mother/mc15.jpg',
      "Gestational Diabetes Test ",
      "Take the glucose screening test to check for gestational diabetes. Follow a low-glycemic diet if diagnosed. Monitor blood sugar levels as advised by your doctor.",
    ),
    Mothercare(
      16,'assets/mother/mc16.jpg',
      "Bond with Baby ",
      "Talk, sing, or play music to your baby to encourage bonding. Practice relaxation techniques like deep breathing. Attend prenatal classes to prepare for labor.",
    ),

    // mother 28– (Third Trimester)
    Mothercare(
      17,'assets/mother/mc17.jpg',
      "Check Baby's Position ",
      "Ensure the baby is in the head-down position for delivery. Practice gentle exercises like pelvic tilts to encourage optimal positioning. Attend regular prenatal checkups to monitor the baby’s growth.",
    ),
    Mothercare(
      18,'assets/mother/mc18.jpg',
      "Pack Hospital Bag ",
      "Prepare essentials for the hospital, including comfortable clothing and toiletries, baby clothes, diapers, and a car seat. Don’t forget important documents and insurance information.",
    ),
    Mothercare(
      19,'assets/mother/mc19.jpg',
      "Practice Deep Breathing ",
      "Practice deep breathing exercises to prepare for labor. Attend prenatal classes to learn relaxation techniques. Stay calm and positive as you approach delivery.",
    ),
    Mothercare(
      20,'assets/mother/mc20.jpg',
      "Monitor Baby Kicks ",
      "Track your baby’s movements daily. Report any decrease in movement to your doctor immediately. Stay hydrated and rest as needed.",
    ),
    Mothercare(
      21,'assets/mother/mc21.jpg',
      "Prepare for Labor ",
      "Practice relaxation techniques like meditation or visualization. Discuss your birth plan with your healthcare provider. Stay active with gentle walking or prenatal yoga.",
    ),
    Mothercare(
      22,'assets/mother/mc22.jpg',
      "Signs of Labor ",
      "Look for signs of labor, such as regular contractions, water breaking, or bloody show (mucus plug discharge). Stay hydrated and rest between contractions.",
    ),
    Mothercare(
      23,'assets/mother/mc23.jpg',
      "Hospital Visit ",
      "Go to the hospital when contractions are 5 minutes apart or if your water breaks. Stay calm and focused during labor. Trust your body and follow your doctor’s guidance.",
    ),

    // Additional Tips for Each Trimester
    Mothercare(
      24,'assets/mother/mc24.jpg',
      "Hydration",
      "Drink at least 8–10 glasses of water daily to stay hydrated and support your body’s increased blood volume.",
    ),
    Mothercare(
      25,'assets/mother/mc25.jpg',
      "Nutrition",
      "Focus on a balanced diet with protein, healthy fats, and complex carbs. Include fruits, vegetables, whole grains, and lean proteins.",
    ),
    Mothercare(
      26,'assets/mother/mc26.jpg',
      "Exercise",
      "Engage in moderate activities like walking, swimming, or prenatal yoga. Avoid high-impact exercises or heavy lifting.",
    ),
    Mothercare(
      27,'assets/mother/mc27.jpg',
      "Mental Health",
      "Practice self-care and seek support if you feel overwhelmed. Join prenatal classes or support groups for emotional well-being.",
    ),
    Mothercare(
      28,'assets/mother/mc28.jpg',
      "Prenatal Visits",
      "Attend all scheduled appointments to monitor your and your baby’s health. Discuss any concerns or symptoms with your healthcare provider.",
    ),
    Mothercare(
      29,'assets/mother/mc29.jpg',
      "Sleep and Rest",
      "Use pregnancy pillows for comfortable sleep. Take short naps during the day if needed. Avoid sleeping on your back after the first trimester.",
    ),
    Mothercare(
      30,'assets/mother/mc30.jpg',
      "Avoid Harmful Substances",
      "Avoid alcohol, smoking, and recreational drugs. Limit caffeine intake to 200 mg per day. Stay away from raw or undercooked foods.",
    ),
    Mothercare(
      31,'assets/mother/mc31.jpg',
      "Stay Active",
      "Engage in light exercises like walking, swimming, or prenatal yoga. Avoid activities with a high risk of falling or injury.",
    ),
    Mothercare(
      32,'assets/mother/mc32.jpg',
      "Monitor Weight Gain",
      "Aim for a healthy weight gain of 25–35 pounds (11–16 kg) during pregnancy. Discuss your weight goals with your doctor.",
    ),
    Mothercare(
      33,'assets/mother/mc33.jpg',
      "Manage Swelling",
      "Elevate your feet to reduce swelling. Wear comfortable shoes and avoid standing for long periods. Stay hydrated.",
    ),
    Mothercare(
      34,'assets/mother/mc34.jpg',
      "Prepare for Breastfeeding",
      "Attend breastfeeding classes and learn proper techniques. Purchase nursing bras and other breastfeeding essentials.",
    ),
    Mothercare(
      35,'assets/mother/mc35.jpg',
      "Finalize Birth Plan",
      "Discuss your birth plan with your healthcare provider. Include preferences for pain relief, delivery position, and postpartum care.",
    ),
    Mothercare(
      36,'assets/mother/mc36.jpg',
      "Stay Positive",
      "Stay positive and focus on the excitement of meeting your baby. Surround yourself with supportive loved ones.",
    ),
    Mothercare(
      37,'assets/mother/mc37.jpg',
      "Practice Relaxation",
      "Practice relaxation techniques like deep breathing, meditation, or visualization. Stay calm and prepared for labor.",
    ),
    Mothercare(
      38,'assets/mother/mc38.jpg',
      "Monitor Contractions",
      "Track contractions and note their frequency and duration. Go to the hospital when contractions are 5 minutes apart.",
    ),
    Mothercare(
      39,'assets/mother/mc39.jpg',
      "Final Preparations",
      "Ensure your hospital bag is packed and your baby’s nursery is ready. Double-check all essentials for the baby and yourself.",
    ),
    Mothercare(
      40,'assets/mother/mc40.jpg',
      "Delivery Day",
      "Stay calm and focused during labor. Trust your body and follow your doctor’s guidance. Welcome your baby into the world!",
    ),
  ];

  Mothercare? selectedWeek;

  void fetchWeekData(int mother) {
    selectedWeek = Mothercares.firstWhere(
      (element) => element.weekNumber == mother,
    );
    update(); // Notify listeners
  }
}
