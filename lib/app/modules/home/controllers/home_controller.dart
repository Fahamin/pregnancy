import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../../model/PregnancyWeek.dart';

class HomeController extends GetxController {

// Observable variables
  var currentWeek = 1.obs;
  var pregnancyStartDate = DateTime.now().obs;
  var deliveryDate = DateTime.now().obs;

  // Key for SharedPreferences
  final String _startDateKey = 'pregnancyStartDate';

  @override
  void onInit() {
    super.onInit();
    loadStartDate();
  }

  // Load the start date from SharedPreferences
  Future<void> loadStartDate() async {
    final prefs = await SharedPreferences.getInstance();
    final savedDate = prefs.getString(_startDateKey);

    if (savedDate != null) {
      pregnancyStartDate.value = DateTime.parse(savedDate);
      calculateDeliveryDate();
      calculateCurrentWeek();
    }
  }

  // Save the start date to SharedPreferences
  Future<void> saveStartDate(DateTime date) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(_startDateKey, date.toIso8601String());
    pregnancyStartDate.value = date;
    calculateDeliveryDate();
    calculateCurrentWeek();
  }

  // Calculate the delivery date (40 weeks after the start date)
  void calculateDeliveryDate() {
    deliveryDate.value = pregnancyStartDate.value.add(Duration(days: 40 * 7));
  }

  // Calculate the current week based on today's date
  void calculateCurrentWeek() {
    final today = DateTime.now();
    final difference = today.difference(pregnancyStartDate.value).inDays;
    currentWeek.value = (difference ~/ 7) + 1;

    // Ensure the current week is within the valid range (1 to 40)
    if (currentWeek.value < 1) {
      currentWeek.value = 1;
    } else if (currentWeek.value > 40) {
      currentWeek.value = 40;
    }
  }

  // Get the current week's data
  PregnancyWeek get currentWeekData {
    return pregnancyWeeks.firstWhere((week) => week.week == currentWeek.value);
  }


  // Function to go to the next week
  void goToNextWeek() {
    if (currentWeek.value < pregnancyWeeks.length) {
      currentWeek.value++;
    }
  }

  // Function to go to the previous week
  void goToPreviousWeek() {
    if (currentWeek.value > 1) {
      currentWeek.value--;
    }
  }




  List<PregnancyWeek> pregnancyWeeks = [
    PregnancyWeek(
      week: 1,
      babyImagePath: 'assets/week/baby1.jpg',
      sizeImagePath: 'assets/week/size1.jpg',
      description: 'Your baby is a tiny ball of cells, starting its journey!',
    ),
    PregnancyWeek(
      week: 2,
      babyImagePath: 'assets/week/baby2.jpg',
      sizeImagePath: 'assets/week/size2.jpg',
      description: 'The embryo is forming, and the placenta starts developing.',
    ),
    PregnancyWeek(
      week: 3,
      babyImagePath: 'assets/week/baby3.jpg',
      sizeImagePath: 'assets/week/size3.jpg',
      description: 'Fertilization occurs! The fertilized egg is traveling to the uterus.',
    ),
    PregnancyWeek(
      week: 4,
      babyImagePath: 'assets/week/baby4.jpg',
      sizeImagePath: 'assets/week/size4.jpg',
      description: 'Your baby is now implanted in the uterus lining!',
    ),
    PregnancyWeek(
      week: 5,
      babyImagePath: 'assets/week/baby5.jpg',
      sizeImagePath: 'assets/week/size5.jpg',
      description: 'The neural tube is forming, which will become the brain and spine.',
    ),
    PregnancyWeek(
      week: 6,
      babyImagePath: 'assets/week/baby6.jpg',
      sizeImagePath: 'assets/week/size6.jpg',
      description: 'A tiny heartbeat has started, and facial features begin to appear.',
    ),
    PregnancyWeek(
      week: 7,
      babyImagePath: 'assets/week/baby7.jpg',
      sizeImagePath: 'assets/week/size7.jpg',
      description: 'Arms and legs are forming, and the baby is growing rapidly.',
    ),
    PregnancyWeek(
      week: 8,
      babyImagePath: 'assets/week/baby8.jpg',
      sizeImagePath: 'assets/week/size8.jpg',
      description: 'Fingers and toes start developing, and your baby is constantly moving!',
    ),
    PregnancyWeek(
      week: 9,
      babyImagePath: 'assets/week/baby9.jpg',
      sizeImagePath: 'assets/week/size9.jpg',
      description: 'Baby is now a fetus, and their tiny muscles start to develop.',
    ),
    PregnancyWeek(
      week: 10,
      babyImagePath: 'assets/week/baby10.jpg',
      sizeImagePath: 'assets/week/size10.jpg',
      description: 'Vital organs are in place, and fingernails begin to form.',
    ),
    PregnancyWeek(
      week: 11,
      babyImagePath: 'assets/week/baby11.jpg',
      sizeImagePath: 'assets/week/size11.jpg',
      description: 'Baby’s head is still large, but body growth is catching up.',
    ),
    PregnancyWeek(
      week: 12,
      babyImagePath: 'assets/week/baby12.jpg',
      sizeImagePath: 'assets/week/size12.jpg',
      description: 'Your baby can now suck their thumb and make small movements!',
    ),
    PregnancyWeek(
      week: 13,
      babyImagePath: 'assets/week/baby13.jpg',
      sizeImagePath: 'assets/week/size13.jpg',
      description: 'Tiny fingerprints are forming, and baby can even yawn!',
    ),
    PregnancyWeek(
      week: 14,
      babyImagePath: 'assets/week/baby14.jpg',
      sizeImagePath: 'assets/week/size14.jpg',
      description: 'Your baby is about the size of a lemon and is growing quickly.',
    ),
    PregnancyWeek(
      week: 15,
      babyImagePath: 'assets/week/baby15.jpg',
      sizeImagePath: 'assets/week/size15.jpg',
      description: 'Ears can hear outside noises, and baby’s skin is forming.',
    ),
    // Add more weeks up to week 40
    PregnancyWeek(
      week: 40,
      babyImagePath: 'assets/week/baby40.jpg',
      sizeImagePath: 'assets/week/size40.jpg',
      description: 'Your baby is ready to be born any day now!',
    ),
  ];

}
