import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/checkup_controller.dart';

class CheckupView extends GetView<CheckupController> {
   CheckupView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Text('Pregnancy Checkups & Tests'),
        centerTitle: true,
      ),
      body: Obx(() {
        if (controller.isLoading.value) {
          return  Center(child: CircularProgressIndicator());
        }

        return DefaultTabController(
          length: 3,
          child: Column(
            children: [
               TabBar(
                tabs: [
                  Tab(text: 'First Trimester'),
                  Tab(text: 'Second Trimester'),
                  Tab(text: 'Third Trimester'),
                ],
                labelColor: Colors.deepPurple,
                indicatorColor: Colors.deepPurple,
              ),
              Expanded(
                child: TabBarView(
                  children: [
                    _buildTrimesterList('First'),
                    _buildTrimesterList('Second'),
                    _buildTrimesterList('Third'),
                  ],
                ),
              ),
            ],
          ),
        );
      }),
    );
  }

  Widget _buildTrimesterList(String trimester) {
    final filtered = controller.checkups
        .where((checkup) => checkup.trimester == trimester)
        .toList();

    return ListView.builder(
      padding:  EdgeInsets.all(8),
      itemCount: filtered.length,
      itemBuilder: (context, index) {
        final checkup = filtered[index];
        return Card(
          elevation: 2,
          margin:  EdgeInsets.symmetric(vertical: 6),
          child: ExpansionTile(
            leading: Checkbox(
              value: checkup.isDone,
              onChanged: (value) => controller.toggleCheckupStatus(
                controller.checkups.indexOf(checkup),
              ),
            ),
            title: Text(
              checkup.checkupName,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: checkup.isDone ? Colors.green : Colors.black,
              ),
            ),
            subtitle: Text(checkup.weekRange),
            children: [
              Padding(
                padding:  EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildDetailRow('Description:', checkup.description),
                     SizedBox(height: 8),
                    _buildDetailRow('Importance:', checkup.importance),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  Widget _buildDetailRow(String label, String value) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style:  TextStyle(fontWeight: FontWeight.bold),
        ),
         SizedBox(width: 8),
        Expanded(child: Text(value)),
      ],
    );
  }
}

