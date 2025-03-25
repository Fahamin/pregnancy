import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/mother_care_controller.dart';

class MotherCareView extends GetView<MotherCareController> {
  MotherCareView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Week ${controller.selectedWeek!.weekNumber}"),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Text(
                controller.selectedWeek!.title,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
              ),
            ),
            SizedBox(height: 10),

            Center(
              child: Image.asset(

                controller.selectedWeek!.sizeImagePath,
                fit: BoxFit.fill,
                errorBuilder:
                    (context, error, stackTrace) =>
                        Icon(Icons.broken_image, size: 100),
              ),
            ),
            SizedBox(height: 10),
            Text(
              controller.selectedWeek!.advice,
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
