import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pregnancy/app/modules/baby_model_week/controllers/baby_model_week_controller.dart';

import 'week_details.dart';

class WeekCard extends StatelessWidget {
  final int index;
  final BabyModelWeekController controller;

  const WeekCard({
    Key? key,
    required this.index,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 4, horizontal: 8),
      child: ExpansionTile(
        title: Text(
          controller.pregnancyWeeks[index]['week']!,
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        trailing: Icon(
          controller.selectedWeekIndex.value == index
              ? Icons.expand_less
              : Icons.expand_more,
        ),
        onExpansionChanged: (expanded) {
          controller.toggleWeekDetails(index);
        },
        children: [
          WeekDetails(
            details: controller.pregnancyWeeks[index]['details']!,
            imagePath: controller.pregnancyWeeks[index]['image']!, // Pass image path
          ),
        ],
      ),
    );
  }
}