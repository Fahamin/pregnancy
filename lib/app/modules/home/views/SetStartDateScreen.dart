import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pregnancy/app/modules/home/controllers/home_controller.dart';

class SetDeliveryDateScreen extends StatelessWidget {
  final HomeController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Set Estimated Delivery Date'),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Obx(() => Text(
              'Selected Date: ${controller.deliveryDate.value.toLocal().toString().split(' ')[0]}',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            )),
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
                  await controller.saveDeliveryDate(selectedDate); // Save delivery date
                  Get.back(); // Close the screen
                }
              },
              child: Text('Select Delivery Date'),
            ),
          ],
        ),
      ),
    );
  }
}
