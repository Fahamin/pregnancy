import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:pregnancy/app/modules/father_duty/controllers/father_duty_controller.dart';
import 'package:pregnancy/app/routes/app_pages.dart';

import '../../../../widgets/RowItem.dart';
import '../../../../widgets/container_item.dart';
import '../../../../widgets/container_vertical.dart';
import '../../mother_care/controllers/mother_care_controller.dart';
import '../controllers/home_controller.dart';
import 'SetStartDateScreen.dart'; // Updated to match the correct screen name

class HomeView extends GetView<HomeController> {
  final MotherCareController motherCareController = Get.find();
  final FatherDutyController fatherDutyController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(title: Text("Safe Pregnancy"), centerTitle: true),
      body: Obx(() {
        final weekData = controller.currentWeekData;
        final weekTip = controller.currentWeekTipData;

        final startDate = DateFormat(
          'dd MMM yyyy',
        ).format(controller.pregnancyStartDate.value);
        final deliveryDate = DateFormat(
          'dd MMM yyyy',
        ).format(controller.deliveryDate.value);

        return SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(16.0),
                child: Container(
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
                    // Rounded corners
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.3),
                        blurRadius: 10,
                        offset: Offset(0, 5),
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          controller.getWeekDateRange(
                            controller.currentWeek.value,
                          ),
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
                              icon: Icon(
                                Icons.arrow_forward,
                                color: Colors.blue,
                              ),
                              onPressed: controller.goToNextWeek,
                            ),
                          ],
                        ),

                        SizedBox(height: 2),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Estimated Delivery Date: $deliveryDate',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Colors.redAccent,
                              ),
                            ),
                            IconButton(
                              color: Colors.blue,
                              icon: Icon(Icons.edit_calendar_sharp),
                              onPressed: () {
                                showDeliveryDateDialog(context, controller);
                              },
                            ),
                          ],
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
                              onTap: () {
                                Get.toNamed(Routes.BABY_MODEL_WEEK);
                              },
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(8),
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
                              width: 90,
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
              ),
              Padding(
                padding: EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        InkWell(
                          onTap: () {
                            Get.toNamed(Routes.PREGNANCY_RISKS);
                          },
                          child: PregnancyContainer(
                            "assets/other/pr.png",
                            "Pregnancy Risk",
                          ),
                        ),
                        SizedBox(height: 11),
                        InkWell(
                          onTap: () {
                            Get.toNamed(Routes.MOTHER_HELTH);
                          },
                          child: PregnancyContainer(
                            "assets/other/mb.png",
                            "Maternal Health",
                          ),
                        ),
                      ],
                    ),
                    InkWell(
                      onTap: () {
                        motherCareController.fetchWeekData(
                          controller.currentWeek.value,
                        );
                        Get.toNamed(Routes.MOTHER_CARE);
                      },
                      child: PregnancyContainerVer(
                        "assets/other/mc.png",
                        "Mother's Care",
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.all(16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        Get.toNamed(Routes.ANSWERQUES);
                      },
                      child: RowItem("assets/other/faq.png", "FAQ"),
                    ),
                    InkWell(
                      onTap: () {
                        fatherDutyController.fetchWeekData(
                          controller.currentWeek.value,
                        );
                        Get.toNamed(Routes.FATHER_DUTY);
                      },
                      child: RowItem("assets/other/baby.png", "Father Duty"),
                    ),
                    InkWell(
                      onTap: () {
                        Get.toNamed(Routes.FOOD);
                      },
                      child: RowItem("assets/other/diet.png", "Foods"),
                    ),
                  ],
                ),
              ),

              Padding(
                padding: EdgeInsets.all(16),
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  alignment: Alignment.center,
                  child: Column(
                    children: [
                      Text(
                        "Weekly Tips",
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),

                      Container(
                        width: double.infinity,
                        padding: EdgeInsets.all(16),
                        decoration: BoxDecoration(color: Colors.white),
                        child: Text(
                          weekTip.tip,
                        ), // Any content passed as a widget
                      ),
                    ],
                  ),
                ),

                // White Background Section
              ),
            ],
          ),
        );
      }),
    );
  }
}

void showDeliveryDateDialog(BuildContext context, HomeController controller) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        content: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Obx(
                () => Text(
                  'Selected Date: ${controller.deliveryDate.value.toLocal().toString().split(' ')[0]}',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () async {
                  final selectedDate = await showDatePicker(
                    context: context,
                    initialDate: controller.deliveryDate.value,
                    firstDate: DateTime.now().subtract(Duration(days: 365)),
                    lastDate: DateTime.now().add(Duration(days: 365)),
                  );
                  if (selectedDate != null) {
                    await controller.saveDeliveryDate(
                      selectedDate,
                    ); // Save delivery date
                    Get.back(); // Close the dialog
                  }
                },
                child: Text('Select Delivery Date'),
              ),
            ],
          ),
        ),
      );
    },
  );
}
