import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../../model/week_tip_model.dart';
import '../../../../model/pregnency_week_model.dart';

class HomeController extends GetxController {

// Observable variables
  var deliveryDate = DateTime
      .now()
      .add(Duration(days: 40 * 7))
      .obs;
  // Default to 40 weeks from today
  var pregnancyStartDate = DateTime
      .now()
      .obs;
  var currentWeek = 1.obs;

// Key for SharedPreferences
  final String _deliveryDateKey = 'deliveryDate';

  @override
  void onInit() {
    super.onInit();
    loadDeliveryDate();
  }

  String getWeekDateRange(int weekNumber) {
    // Calculate the start date for the week
    DateTime startOfWeek = pregnancyStartDate.value.add(
        Duration(days: (weekNumber - 1) * 7));
    // Calculate the end date for the week
    DateTime endOfWeek = startOfWeek.add(Duration(days: 6));

    // Format the dates as needed (you can adjust the format here)
    String startDate = DateFormat('d MMM').format(
        startOfWeek); // Example: '12 MAR'
    String endDate = DateFormat('d MMM').format(endOfWeek); // Example: '18 MAR'

    return '$startDate - $endDate';
  }

// Load the delivery date from SharedPreferences or set default
  Future<void> loadDeliveryDate() async {
    final prefs = await SharedPreferences.getInstance();
    final savedDate = prefs.getString(_deliveryDateKey);

    if (savedDate != null) {
      deliveryDate.value = DateTime.parse(savedDate);
    } else {
      // If no saved date, default to 40 weeks from today
      deliveryDate.value = DateTime.now().add(Duration(days: 40 * 7));
    }

    calculatePregnancyStartDate();
    calculateCurrentWeek();
  }

// Save the delivery date to SharedPreferences
  Future<void> saveDeliveryDate(DateTime date) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(_deliveryDateKey, date.toIso8601String());

    deliveryDate.value = date;
    calculatePregnancyStartDate();
    calculateCurrentWeek();
  }

// Calculate the pregnancy start date (40 weeks before the delivery date)
  void calculatePregnancyStartDate() {
    pregnancyStartDate.value =
        deliveryDate.value.subtract(Duration(days: 40 * 7));
  }

// Calculate the current pregnancy week based on today's date
  void calculateCurrentWeek() {
    final today = DateTime.now();
    final elapsedDays = today
        .difference(pregnancyStartDate.value)
        .inDays;

    currentWeek.value = (elapsedDays ~/ 7) + 1;

    // Ensure the current week stays between 1 and 40
    if (currentWeek.value < 1) {
      currentWeek.value = 1;
    } else if (currentWeek.value > 40) {
      currentWeek.value = 40;
    }
  }

  // Method to get the date range for a specific week


// Example of how you might call it to get the date range for a specific week


// Get the current week's data
  PregnancyWeek get currentWeekData {
    return pregnancyWeeks.firstWhere((week) => week.week == currentWeek.value);
  }

  WeekTip get currentWeekTipData {
    return pregnancyTips.firstWhere((week) => week.week == currentWeek.value);
  }

// Function to go to the next week
  void goToNextWeek() {
    if (currentWeek.value < 40) {
      currentWeek.value++;
    }
  }

// Function to go to the previous week
  void goToPreviousWeek() {
    if (currentWeek.value > 1) {
      currentWeek.value--;
    }
  }

  var showDescription = false.obs;

  void toggleDescription() {
    showDescription.value = !showDescription.value;
  }


  final List<WeekTip> pregnancyTips = [
    WeekTip(
      week: 1,
      tip: "Start taking prenatal vitamins with at least 400-600 mcg of folic acid daily. "
          "Folic acid helps prevent neural tube defects in the baby's brain and spine. "
          "Maintain a balanced diet and avoid alcohol, smoking, and excessive caffeine.",
    ),
    WeekTip(
      week: 2,
      tip: "Maintain a healthy lifestyle, eat nutrient-rich foods, and stay hydrated. "
          "If trying to conceive, track ovulation and avoid stress.",
    ),
    WeekTip(
      week: 3,
      tip: "Your baby is just a tiny cluster of cells. "
          "Continue taking prenatal vitamins and follow a healthy diet.",
    ),
    WeekTip(
      week: 4,
      tip: "Take a home pregnancy test if you suspect pregnancy. "
          "Confirm the results with a doctor and start avoiding harmful substances.",
    ),
    WeekTip(
      week: 5,
      tip: "Schedule your first prenatal checkup. Your doctor may recommend blood tests "
          "and an early ultrasound. Avoid environmental toxins and maintain hydration.",
    ),
    WeekTip(
      week: 6,
      tip: "Morning sickness may start—eat small, frequent meals and drink ginger tea. "
          "Get plenty of rest, as fatigue is common during early pregnancy.",
    ),
    WeekTip(
      week: 7,
      tip: "Your baby's organs are developing. Eat iron-rich foods like spinach, "
          "lean meats, and beans to support blood production.",
    ),
    WeekTip(
      week: 8,
      tip: "If you feel nauseous, try eating crackers before getting out of bed. "
          "Continue taking prenatal vitamins and stay well-hydrated.",
    ),
    WeekTip(
      week: 9,
      tip: "Exercise lightly—prenatal yoga and short walks can help with energy levels and circulation. "
          "If experiencing constipation, increase fiber intake.",
    ),
    WeekTip(
      week: 10,
      tip: "Your baby's heart and organs are almost fully developed. "
          "Eat calcium-rich foods to support bone growth.",
    ),
    WeekTip(
      week: 11,
      tip: "Your baby is now the size of a lime! Continue eating iron and calcium-rich foods. "
          "Monitor your weight gain and stay active.",
    ),
    WeekTip(
      week: 12,
      tip: "Your first trimester is ending! If feeling better, increase light exercise. "
          "Schedule your next ultrasound and focus on a balanced diet.",
    ),
    WeekTip(
      week: 13,
      tip: "Your energy levels may increase, so enjoy light activities. "
          "Stay hydrated and avoid processed foods.",
    ),
    WeekTip(
      week: 14,
      tip: "Your baby's hair is starting to grow! Eat foods rich in omega-3s, such as salmon and walnuts. "
          "If you experience back pain, try a pregnancy pillow for better sleep.",
    ),
    WeekTip(
      week: 15,
      tip: "Pregnancy hormones may affect your skin. Moisturize and use sunscreen to prevent hyperpigmentation.",
    ),
    WeekTip(
      week: 16,
      tip: "Your baby might start making movements soon! Try bonding by playing soft music or talking to them. "
          "Practice good posture to prevent back pain.",
    ),
    WeekTip(
      week: 17,
      tip: "Drink plenty of water and eat potassium-rich foods like bananas to prevent leg cramps. "
          "Consider joining a prenatal yoga class.",
    ),
    WeekTip(
      week: 18,
      tip: "Schedule your mid-pregnancy ultrasound to check your baby's development. "
          "Sleep on your left side for better circulation.",
    ),
    WeekTip(
      week: 19,
      tip: "Your baby can hear sounds! Talk, sing, or read to them for bonding. "
          "Wear comfortable maternity clothes as your belly grows.",
    ),
    WeekTip(
      week: 20,
      tip: "You're halfway through! If experiencing discomfort, try swimming or stretching exercises.",
    ),
    WeekTip(
      week: 21,
      tip: "Eat smaller meals to avoid heartburn. A body pillow can help with sleep comfort.",
    ),
    WeekTip(
      week: 22,
      tip: "Your baby’s senses are developing. Stay relaxed and try stress management techniques.",
    ),
    WeekTip(
      week: 23,
      tip: "Monitor your blood pressure. Watch for swelling in your hands and feet and consult your doctor if concerned.",
    ),
    WeekTip(
      week: 24,
      tip: "Your doctor may suggest a glucose screening test to check for gestational diabetes.",
    ),
    WeekTip(
      week: 25,
      tip: "Eat fiber-rich foods and drink plenty of water to prevent constipation.",
    ),
    WeekTip(
      week: 26,
      tip: "Braxton Hicks contractions may start. They help your body prepare for labor.",
    ),
    WeekTip(
      week: 27,
      tip: "Begin preparing your hospital bag with essentials for you and the baby.",
    ),
    WeekTip(
      week: 28,
      tip: "Track fetal movements daily. Report any significant changes to your doctor.",
    ),
    WeekTip(
      week: 29,
      tip: "Avoid lying flat on your back to prevent dizziness and poor circulation.",
    ),
    WeekTip(
      week: 30,
      tip: "Pack your hospital bag with necessary documents, baby clothes, and hygiene products.",
    ),
    WeekTip(
      week: 31,
      tip: "Consider taking a childbirth class to prepare for labor.",
    ),
    WeekTip(
      week: 32,
      tip: "Drink plenty of fluids and watch for signs of urinary tract infections (UTIs).",
    ),
    WeekTip(
      week: 33,
      tip: "Finalize your birth plan and discuss it with your doctor.",
    ),
    WeekTip(
      week: 34,
      tip: "Prepare a safe sleeping space for your baby with a firm mattress.",
    ),
    WeekTip(
      week: 35,
      tip: "Eat high-fiber foods and continue gentle physical activities.",
    ),
    WeekTip(
      week: 36,
      tip: "Practice labor breathing techniques and watch for early labor signs.",
    ),
    WeekTip(
      week: 37,
      tip: "Prepare for early labor symptoms like lower back pain and cramps.",
    ),
    WeekTip(
      week: 38,
      tip: "Eat light meals and stay calm as your due date approaches.",
    ),
    WeekTip(
      week: 39,
      tip: "Have your hospital bag ready and look out for labor signs.",
    ),
    WeekTip(
      week: 40,
      tip: "If labor hasn’t started yet, stay patient and consult your doctor about next steps.",
    ),
  ];

  WeekTip? selectedWeek;

  void fetchWeekData(int mother) {
    selectedWeek = pregnancyTips.firstWhere(
          (element) => element.week == mother,
    );
    update(); // Notify listeners
  }

List<PregnancyWeek> pregnancyWeeks = [
  PregnancyWeek(
    week: 1,
    babyImagePath: 'assets/week/b1.png',
    sizeImagePath: 'assets/week/s4.png',
    description: 'Your baby is a tiny ball of cells, starting its journey!',
    babyLength: '< 0.1 cm',
    babyWeight: '<0.1 g',
    fruitSize: 'Poppy seed',
  ),
  PregnancyWeek(
    week: 2,
    babyImagePath: 'assets/week/b2.png',
    sizeImagePath: 'assets/week/s4.png',
    description: 'Your baby is developing into an embryo with tiny features forming.',
    babyLength: '0.1 cm',
    babyWeight: '< 0.1 g',
    fruitSize: 'Poppy seed',
  ),
  PregnancyWeek(
    week: 3,
    babyImagePath: 'assets/week/b3.png',
    sizeImagePath: 'assets/week/s4.png',
    description: 'The embryo is now implanting into the uterine wall.',
    babyLength: '0.2 cm',
    babyWeight: '< 1 g',
    fruitSize: 'Poppy seed',
  ),
  PregnancyWeek(
    week: 4,
    babyImagePath: 'assets/week/b4.png',
    sizeImagePath: 'assets/week/s4.png',
    description: 'Your baby’s heart and circulatory system are beginning to form.',
    babyLength: '0.3 cm',
    babyWeight: '< 1 g',
    fruitSize: 'Poppy seed',
  ),
  PregnancyWeek(
    week: 5,
    babyImagePath: 'assets/week/b5.png',
    sizeImagePath: 'assets/week/s5.png',
    description: 'The baby is now called an embryo and is developing a nervous system.',
    babyLength: '1.5 cm',
    babyWeight: '< 1 g',
    fruitSize: 'sesame  seed',
  ),
  PregnancyWeek(
    week: 6,
    babyImagePath: 'assets/week/b6.png',
    sizeImagePath: 'assets/week/s6.png',
    description: 'Facial features are forming, and the baby’s heart is beating.',
    babyLength: '2 cm',
    babyWeight: '1 g',
    fruitSize: 'lentil',
  ),
  PregnancyWeek(
    week: 7,
    babyImagePath: 'assets/week/b7.png',
    sizeImagePath: 'assets/week/s7.png',
    description: 'Your baby’s arms and legs are beginning to develop.',
    babyLength: '3 cm',
    babyWeight: '1.5 g',
    fruitSize: 'Blueberry',
  ),
  PregnancyWeek(
    week: 8,
    babyImagePath: 'assets/week/b8.png',
    sizeImagePath: 'assets/week/s8.png',
    description: 'The baby’s bones and facial features are continuing to form.',
    babyLength: '4 cm',
    babyWeight: '2 g',
    fruitSize: 'Raspberry',
  ),
  PregnancyWeek(
    week: 9,
    babyImagePath: 'assets/week/b9.png',
    sizeImagePath: 'assets/week/s9.png',
    description: 'Your baby’s eyes and eyelids are developing.',
    babyLength: '5 cm',
    babyWeight: '3 g',
    fruitSize: 'grape',
  ),
  PregnancyWeek(
    week: 10,
    babyImagePath: 'assets/week/b10.png',
    sizeImagePath: 'assets/week/s10.png',
    description: 'Your baby’s organs are starting to function more independently.',
    babyLength: '6 cm',
    babyWeight: '4 g',
    fruitSize: 'Strawberry',
  ),
  PregnancyWeek(
    week: 11,
    babyImagePath: 'assets/week/b11.png',
    sizeImagePath: 'assets/week/s11.png',
    description: 'The baby’s fingers and toes are becoming more distinct.',
    babyLength: '7 cm',
    babyWeight: '5 g',
    fruitSize: 'fig',
  ),
  PregnancyWeek(
    week: 12,
    babyImagePath: 'assets/week/b12.png',
    sizeImagePath: 'assets/week/s12.png',
    description: 'Your baby is almost fully formed with distinct features.',
    babyLength: '8 cm',
    babyWeight: '10 g',
    fruitSize: 'lime',
  ),
  PregnancyWeek(
    week: 13,
    babyImagePath: 'assets/week/b13.png',
    sizeImagePath: 'assets/week/s13.png',
    description: 'The baby’s body is becoming more proportional.',
    babyLength: '9 cm',
    babyWeight: '20 g',
    fruitSize: 'plum',
  ),
  PregnancyWeek(
    week: 14,
    babyImagePath: 'assets/week/b14.jpg',
    sizeImagePath: 'assets/week/s14.png',
    description: 'Your baby’s genitals are forming, and it’s now possible to tell gender.',
    babyLength: '10 cm',
    babyWeight: '30 g',
    fruitSize: 'Lemon',
  ),
  PregnancyWeek(
    week: 15,
    babyImagePath: 'assets/week/b15.jpg',
    sizeImagePath: 'assets/week/s15.png',
    description: 'The baby’s eyes can now move, and the skin is beginning to form.',
    babyLength: '11 cm',
    babyWeight: '50 g',
    fruitSize: 'Apple',
  ),
  PregnancyWeek(
    week: 16,
    babyImagePath: 'assets/week/b16.jpg',
    sizeImagePath: 'assets/week/s16.png',
    description: 'The baby is growing rapidly, and fine hair called lanugo is developing.',
    babyLength: '12 cm',
    babyWeight: '70 g',
    fruitSize: 'Avocado',
  ),
  PregnancyWeek(
    week: 17,
    babyImagePath: 'assets/week/b17.jpg',
    sizeImagePath: 'assets/week/s17.png',
    description: 'The baby’s skeleton is hardening, and it is beginning to move.',
    babyLength: '13 cm',
    babyWeight: '100 g',
    fruitSize: 'turnip',
  ),
  PregnancyWeek(
    week: 18,
    babyImagePath: 'assets/week/b18.jpg',
    sizeImagePath: 'assets/week/s18.png',
    description: 'Your baby’s sense of hearing is developing.',
    babyLength: '14 cm',
    babyWeight: '120 g',
    fruitSize: 'bell pepper',
  ),
  PregnancyWeek(
    week: 19,
    babyImagePath: 'assets/week/b19.jpg',
    sizeImagePath: 'assets/week/s19.png',
    description: 'Your baby is becoming more active and can now move its hands and feet.',
    babyLength: '15 cm',
    babyWeight: '150 g',
    fruitSize: 'pomegranate',
  ),
  PregnancyWeek(
    week: 20,
    babyImagePath: 'assets/week/b20.jpg',
    sizeImagePath: 'assets/week/s20.png',
    description: 'The baby is half-baked, and its gender may now be visible in an ultrasound.',
    babyLength: '16 cm',
    babyWeight: '200 g',
    fruitSize: 'Banana',
  ),
  PregnancyWeek(
    week: 21,
    babyImagePath: 'assets/week/b21.jpg',
    sizeImagePath: 'assets/week/s21.png',
    description: 'Your baby’s bones are becoming harder, and the skin is forming layers.',
    babyLength: '17 cm',
    babyWeight: '250 g',
    fruitSize: 'mango',
  ),
  PregnancyWeek(
    week: 22,
    babyImagePath: 'assets/week/b22.jpg',
    sizeImagePath: 'assets/week/s22.png',
    description: 'Your baby’s senses are becoming more developed, especially hearing.',
    babyLength: '18 cm',
    babyWeight: '300 g',
    fruitSize: 'sweet potato',
  ),
  PregnancyWeek(
    week: 23,
    babyImagePath: 'assets/week/b23.jpg',
    sizeImagePath: 'assets/week/s23.png',
    description: 'The baby’s lungs are developing, and it is more active now.',
    babyLength: '19 cm',
    babyWeight: '350 g',
    fruitSize: 'Grapefruit',
  ),
  PregnancyWeek(
    week: 24,
    babyImagePath: 'assets/week/b24.jpg',
    sizeImagePath: 'assets/week/s24.png',
    description: 'Your baby’s skin is becoming less translucent, and it’s gaining fat.',
    babyLength: '20 cm',
    babyWeight: '400 g',
    fruitSize: 'ear of corn',
  ),
  PregnancyWeek(
    week: 25,
    babyImagePath: 'assets/week/b25.jpg',
    sizeImagePath: 'assets/week/s25.png',
    description: 'Your baby’s eyes can now open and close, and its bones are becoming stronger.',
    babyLength: '21 cm',
    babyWeight: '500 g',
    fruitSize: 'acorn squash',
  ),
  PregnancyWeek(
    week: 26,
    babyImagePath: 'assets/week/b26.jpg',
    sizeImagePath: 'assets/week/s26.png',
    description: 'The baby’s brain is developing rapidly, and it may respond to sounds now.',
    babyLength: '22 cm',
    babyWeight: '600 g',
    fruitSize: 'spaghetti squash',
  ),
  PregnancyWeek(
    week: 27,
    babyImagePath: 'assets/week/b27.jpg',
    sizeImagePath: 'assets/week/s27.png',
    description: 'Your baby’s eyes are more developed, and it can open them.',
    babyLength: '23 cm',
    babyWeight: '700 g',
    fruitSize: 'Cauliflower',
  ),
  PregnancyWeek(
    week: 28,
    babyImagePath: 'assets/week/b28.jpg',
    sizeImagePath: 'assets/week/s28.png',
    description: 'Your baby’s lungs and brain are continuing to mature.',
    babyLength: '24 cm',
    babyWeight: '800 g',
    fruitSize: 'Eggplant',
  ),
  PregnancyWeek(
    week: 29,
    babyImagePath: 'assets/week/b29.jpg',
    sizeImagePath: 'assets/week/s29.png',
    description: 'The baby’s muscles and lungs are continuing to develop.',
    babyLength: '25 cm',
    babyWeight: '900 g',
    fruitSize: 'Butternut squash',
  ),
  PregnancyWeek(
    week: 30,
    babyImagePath: 'assets/week/b30.jpg',
    sizeImagePath: 'assets/week/s30.png',
    description: 'Your baby is practicing breathing and moving around more.',
    babyLength: '28 cm',
    babyWeight: '1000 g',
    fruitSize: 'Cabbage',
  ),
  PregnancyWeek(
    week: 31,
    babyImagePath: 'assets/week/b31.jpg',
    sizeImagePath: 'assets/week/s31.png',
    description: 'The baby’s bones are almost fully formed, and its body is getting ready for birth.',
    babyLength: '30 cm',
    babyWeight: '1200 g',
    fruitSize: 'Coconut',
  ),
  PregnancyWeek(
    week: 32,
    babyImagePath: 'assets/week/b32.jpg',
    sizeImagePath: 'assets/week/s32.png',
    description: 'Your baby’s movements are becoming more noticeable, and it’s gaining weight.',
    babyLength: '32 cm',
    babyWeight: '1500 g',
    fruitSize: 'papaya',
  ),
  PregnancyWeek(
    week: 33,
    babyImagePath: 'assets/week/b33.jpg',
    sizeImagePath: 'assets/week/s33.png',
    description: 'Your baby’s brain is developing rapidly as it prepares for life outside the womb.',
    babyLength: '34 cm',
    babyWeight: '1700 g',
    fruitSize: 'Pineapple',
  ),
  PregnancyWeek(
    week: 34,
    babyImagePath: 'assets/week/b34.jpg',
    sizeImagePath: 'assets/week/s34.png',
    description: 'The baby’s lungs are maturing, and it’s preparing for birth.',
    babyLength: '35 cm',
    babyWeight: '2000 g',
    fruitSize: 'cantaloupe',
  ),
  PregnancyWeek(
    week: 35,
    babyImagePath: 'assets/week/b35.jpg',
    sizeImagePath: 'assets/week/s35.png',
    description: 'Your baby is gaining fat and preparing for delivery.',
    babyLength: '36 cm',
    babyWeight: '2200 g',
    fruitSize: 'honeydew melon',
  ),
  PregnancyWeek(
    week: 36,
    babyImagePath: 'assets/week/b36.jpg',
    sizeImagePath: 'assets/week/s36.png',
    description: 'Your baby’s body is becoming plumper and ready for birth.',
    babyLength: '37 cm',
    babyWeight: '2500 g',
    fruitSize: 'head of romaine lettuce',
  ),
  PregnancyWeek(
    week: 37,
    babyImagePath: 'assets/week/b37.jpg',
    sizeImagePath: 'assets/week/s37.png',
    description: 'The baby is now full-term and ready for delivery.',
    babyLength: '38 cm',
    babyWeight: '2700 g',
    fruitSize: 'bunch of Swiss chard',
  ),
  PregnancyWeek(
    week: 38,
    babyImagePath: 'assets/week/b38.jpg',
    sizeImagePath: 'assets/week/s38.png',
    description: 'Your baby is getting ready for delivery and is continuing to grow.',
    babyLength: '39 cm',
    babyWeight: '2900 g',
    fruitSize: 'watermelon',
  ),
  PregnancyWeek(
    week: 39,
    babyImagePath: 'assets/week/b39.jpg',
    sizeImagePath: 'assets/week/s39.png',
    description: 'Your baby’s lungs and brain are fully developed and ready for birth.',
    babyLength: '40 cm',
    babyWeight: '3100 g',
    fruitSize: 'pumpkin',
  ),
  PregnancyWeek(
    week: 40,
    babyImagePath: 'assets/week/b40.jpg',
    sizeImagePath: 'assets/week/s40.png',
    description: 'It’s time! Your baby is ready to meet the world.',
    babyLength: '50 cm',
    babyWeight: '3200 g',
    fruitSize: 'Watermelon',
  ),
];


}
