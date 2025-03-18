import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../../model/pregnency_week_model.dart';

class HomeController extends GetxController {

// Observable variables
  var deliveryDate = DateTime.now().add(Duration(days: 40 * 7)).obs; // Default to 40 weeks from today
  var pregnancyStartDate = DateTime.now().obs;
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
    DateTime startOfWeek = pregnancyStartDate.value.add(Duration(days: (weekNumber - 1) * 7));
    // Calculate the end date for the week
    DateTime endOfWeek = startOfWeek.add(Duration(days: 6));

    // Format the dates as needed (you can adjust the format here)
    String startDate = DateFormat('d MMM').format(startOfWeek);  // Example: '12 MAR'
    String endDate = DateFormat('d MMM').format(endOfWeek);  // Example: '18 MAR'

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
    pregnancyStartDate.value = deliveryDate.value.subtract(Duration(days: 40 * 7));
  }

// Calculate the current pregnancy week based on today's date
  void calculateCurrentWeek() {
    final today = DateTime.now();
    final elapsedDays = today.difference(pregnancyStartDate.value).inDays;

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
