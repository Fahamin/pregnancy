import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pregnancy/app/modules/home/controllers/home_controller.dart';

class SetStartDateScreen extends StatelessWidget {
  final HomeController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Set Pregnancy Start Date'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () async {
            final selectedDate = await showDatePicker(
              context: context,
              initialDate: DateTime.now(),
              firstDate: DateTime.now().subtract(Duration(days: 365)),
              lastDate: DateTime.now(),
            );
            if (selectedDate != null) {
              await controller.saveStartDate(selectedDate); // Save the selected date
              Get.back(); // Close the screen after setting the date
            }
          },
          child: Text('Select Start Date'),
        ),
      ),
    );
  }
}