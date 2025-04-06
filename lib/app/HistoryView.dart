import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:pregnancy/app/modules/ClickCounter/controllers/click_counter_controller.dart';

class HistoryView extends StatelessWidget {
  final ClickCounterController _counterController = Get.find();

  HistoryView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Kick Count History'),
        centerTitle: true,
      ),
      body: FutureBuilder(
        future: _counterController.getWeeklyData(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          }

          if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          }

          final weeklyData = snapshot.data as Map<String, int>;
          final sortedDates = weeklyData.keys.toList()
            ..sort((a, b) => b.compareTo(a));

          return ListView.builder(
            itemCount: sortedDates.length,
            itemBuilder: (context, index) {
              final date = sortedDates[index];
              final count = weeklyData[date]!;
              final parsedDate = DateFormat('yyyy-MM-dd').parse(date);
              final displayDate = DateFormat('MMM dd, yyyy').format(parsedDate);

              return ListTile(
                title: Text(displayDate),
                trailing: Text('$count kicks'),
                tileColor: date == _counterController.today.value
                    ? Colors.blue[50]
                    : null,
              );
            },
          );
        },
      ),
    );
  }
}