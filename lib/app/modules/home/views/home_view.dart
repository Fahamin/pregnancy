import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:intl/intl.dart';

import '../controllers/home_controller.dart';
import 'SetStartDateScreen.dart';

class HomeView extends GetView<HomeController> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Obx(() => Text('Week ${controller.currentWeek.value}')),
        actions: [
          IconButton(
            icon: Icon(Icons.calendar_today),
            onPressed: () {
              Get.to(SetStartDateScreen()); // Navigate to the date picker screen
            },
          ),
        ],
      ),
      body: Obx(() {
        final weekData = controller.currentWeekData;
        final startDate = DateFormat('yyyy-MM-dd').format(controller.pregnancyStartDate.value);
        final deliveryDate = DateFormat('yyyy-MM-dd').format(controller.deliveryDate.value);
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [



            Image.asset(
              weekData.babyImagePath,
              height: 200,
              width: 200,
            ),
            SizedBox(height: 20),
            // Display the size image
            Image.asset(
              weekData.sizeImagePath,
              height: 100,
              width: 100,
            ),
            SizedBox(height: 20),
            Text(
              weekData.description,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  icon: Icon(Icons.arrow_back),
                  onPressed: controller.goToPreviousWeek,
                ),
                IconButton(
                  icon: Icon(Icons.arrow_forward),
                  onPressed: controller.goToNextWeek,
                ),
              ],
            ),
          ],
        );
      }),
    );
  }
}