import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:pregnancy/model/pregnancy_rm_model.dart';

import '../controllers/pregnancy_risks_controller.dart';

class PregnancyRisksView extends GetView<PregnancyRisksController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pregnancy Risks'),
      ),
      body: ListView.builder(
        itemCount: controller.pregnancyRisk.length,
        itemBuilder: (context, index) {
          return ExpandableItem(item: controller.pregnancyRisk[index]);
        },
      ),
    );
  }
}

class ExpandableItem extends StatelessWidget {
  final PregnancyRiskModel item;

  ExpandableItem({required this.item});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(8.0),
      child: ExpansionTile(
        title: Text(
          item.header,
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        children: [
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              item.description,
              style: TextStyle(fontSize: 16),
            ),
          ),
        ],
      ),
    );
  }
}
