import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../HistoryView.dart';
import '../controllers/click_counter_controller.dart';

class ClickCounterView extends GetView<ClickCounterController> {
   ClickCounterView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Text('Click Counter'),
        centerTitle: true,
      ),
      body:  Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(() => Text(
              'Today\'s Count: ${controller.count.value}',
              style:  TextStyle(fontSize: 24),
            )),
             SizedBox(height: 20),
            ElevatedButton(
              onPressed: controller.incrementCounter,
              child:  Text('Record Kick'),
            ),
             SizedBox(height: 20),
            ElevatedButton(
              onPressed: controller.resetCounter,
              style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
              child:  Text('Reset Counter'),
            ),
             SizedBox(height: 40),
            ElevatedButton(
              onPressed: () => Get.to(() => HistoryView()),
              child:  Text('View History'),
            ),
          ],
        ),
      ),
    );
  }
}
