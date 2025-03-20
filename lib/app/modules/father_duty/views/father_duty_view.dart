import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/father_duty_controller.dart';

class FatherDutyView extends GetView<FatherDutyController> {
  FatherDutyView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Week ${controller.selectedWeek!.week}"),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 10),
            Text(
              controller.selectedWeek!.tip,
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
