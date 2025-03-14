import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:pregnancy/app/routes/app_pages.dart';

import '../controllers/home_controller.dart';
import 'SetStartDateScreen.dart'; // Updated to match the correct screen name

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
              Get.to(
                SetDeliveryDateScreen(),
              ); // Navigate to the delivery date picker screen
            },
          ),
        ],
      ),
      body: Obx(() {
        final weekData = controller.currentWeekData;
        final startDate = DateFormat(
          'dd MMM yyyy',
        ).format(controller.pregnancyStartDate.value);
        final deliveryDate = DateFormat(
          'dd MMM yyyy',
        ).format(controller.deliveryDate.value);

        return Padding(
          padding: const EdgeInsets.all(16.0),
          child: Card(
            elevation: 4,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    controller.getWeekDateRange(controller.currentWeek.value),
                    style: TextStyle(fontSize: 18),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,

                    children: [
                      IconButton(
                        icon: Icon(Icons.arrow_back, color: Colors.blue),
                        onPressed: controller.goToPreviousWeek,
                      ),
                      Text(
                        'Week ${controller.currentWeek.value}',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.blueAccent,
                        ),
                      ),
                      IconButton(
                        icon: Icon(Icons.arrow_forward, color: Colors.blue),
                        onPressed: controller.goToNextWeek,
                      ),
                    ],
                  ),

                  SizedBox(height: 2),
                  Text(
                    'Estimated Delivery Date: $deliveryDate',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.redAccent,
                    ),
                  ),
                  SizedBox(height: 5),

                  Text(
                    "The baby is now the size of a: ${weekData.fruitSize}",
                    style: TextStyle(fontSize: 14),
                  ),

                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: (){
                          Get.toNamed(Routes.BABY_MODEL_WEEK);
                        },
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          // Adjust for desired roundness
                          child: Image.asset(
                            weekData.babyImagePath,
                            height: 100,
                            width: 100, // Ensure width is set
                            fit: BoxFit.cover,
                            errorBuilder:
                                (context, error, stackTrace) =>
                                    Icon(Icons.broken_image, size: 100),
                          ),
                        ),
                      ),

                      Image.asset(
                        "assets/other/similar.png",
                        height: 50,
                        fit: BoxFit.fill,
                        errorBuilder:
                            (context, error, stackTrace) =>
                                Icon(Icons.broken_image, size: 100),
                      ),
                      Image.asset(
                        weekData.sizeImagePath,
                        height: 100,
                        fit: BoxFit.cover,
                        errorBuilder:
                            (context, error, stackTrace) =>
                                Icon(Icons.broken_image, size: 100),
                      ),
                    ],
                  ),

                  // Length and Weight
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Ideal length: ${weekData.babyLength}",
                        style: TextStyle(fontSize: 14),
                      ),

                      SizedBox(width: 10),

                      Text(
                        "Ideal weight: ${weekData.babyWeight}",
                        style: TextStyle(fontSize: 14),
                      ),
                    ],
                  ),
                  Text(
                    weekData.description,
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 16),
                  ),

                  // Description
                ],
              ),
            ),
          ),
        );
      }),
    );
  }
}
