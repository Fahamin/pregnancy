import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:intl/intl.dart';
import 'package:pregnancy/app/modules/home/controllers/home_controller.dart';

import '../app/routes/app_pages.dart';
import '../model/PregnancyWeek.dart';

class HomeChart extends StatelessWidget {
  final HomeController controller;

  HomeChart(this.controller);

  @override
  Widget build(BuildContext context) {
    final weekData = controller.currentWeekData;
    final startDate = DateFormat('dd MMM yyyy').format(controller.pregnancyStartDate.value);
    final deliveryDate = DateFormat('dd MMM yyyy').format(controller.deliveryDate.value);

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
              _buildWeekDateRange(controller),
              _buildWeekNavigation(controller),
              _buildDeliveryDateInfo(deliveryDate),
              _buildBabySizeInfo(weekData),
              _buildBabyImages(weekData),
              _buildBabyLengthAndWeight(weekData),
              _buildDescription(weekData),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildWeekDateRange(HomeController controller) {
    return Text(
      controller.getWeekDateRange(controller.currentWeek.value),
      style: TextStyle(fontSize: 18),
    );
  }

  Widget _buildWeekNavigation(HomeController controller) {
    return Row(
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
    );
  }

  Widget _buildDeliveryDateInfo(String deliveryDate) {
    return Column(
      children: [
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
      ],
    );
  }

  Widget _buildBabySizeInfo(PregnancyWeek weekData) {
    return Text(
      "The baby is now the size of a: ${weekData.fruitSize}",
      style: TextStyle(fontSize: 14),
    );
  }

  Widget _buildBabyImages(PregnancyWeek weekData) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        InkWell(
          onTap: () {
            Get.toNamed(Routes.BABY_MODEL_WEEK);
          },
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.asset(
              weekData.babyImagePath,
              height: 100,
              width: 100,
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) => Icon(Icons.broken_image, size: 100),
            ),
          ),
        ),
        Image.asset(
          "assets/other/similar.png",
          height: 50,
          fit: BoxFit.fill,
          errorBuilder: (context, error, stackTrace) => Icon(Icons.broken_image, size: 100),
        ),
        Image.asset(
          weekData.sizeImagePath,
          height: 100,
          fit: BoxFit.cover,
          errorBuilder: (context, error, stackTrace) => Icon(Icons.broken_image, size: 100),
        ),
      ],
    );
  }

  Widget _buildBabyLengthAndWeight(PregnancyWeek weekData) {
    return Row(
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
    );
  }

  Widget _buildDescription(PregnancyWeek weekData) {
    return Text(
      weekData.description,
      textAlign: TextAlign.center,
      style: TextStyle(fontSize: 16),
    );
  }
}
