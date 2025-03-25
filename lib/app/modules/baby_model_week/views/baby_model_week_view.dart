import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:pregnancy/widgets/WeekCard.dart';

import '../controllers/baby_model_week_controller.dart';

class BabyModelWeekView extends GetView<BabyModelWeekController> {
  const BabyModelWeekView({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pregnancy Week by Week'),
        
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: controller.pregnancyWeeks.length,
        itemBuilder: (context, index) {
          return WeekCard(index: index, controller: controller);
        },
      ),
    );
  }
}