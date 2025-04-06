import 'package:get/get.dart';
import 'package:intl/intl.dart';

import '../../../../db/DatabaseHelper.dart';

class ClickCounterController extends GetxController {
  final DatabaseHelper _databaseHelper = DatabaseHelper.instance;
  var count = 0.obs;
  var today = DateFormat('yyyy-MM-dd').format(DateTime.now()).obs;

  @override
  void onInit() {
    super.onInit();
    loadTodayCount();
  }

  Future<void> loadTodayCount() async {
    final counters = await _databaseHelper.getAllCounters();
    final todayCounter = counters.firstWhere(
          (counter) => counter['date'] == today.value,
      orElse: () => {'count': 0},
    );
    count.value = todayCounter['count'] as int;
  }

  Future<void> incrementCounter() async {
    count.value++;
    await _saveCount();
  }

  Future<void> resetCounter() async {
    count.value = 0;
    await _saveCount();
  }

  Future<void> _saveCount() async {
    final counters = await _databaseHelper.getAllCounters();
    final todayCounter = counters.where((c) => c['date'] == today.value);

    if (todayCounter.isEmpty) {
      await _databaseHelper.insertCounter(today.value, count.value);
    } else {
      await _databaseHelper.updateCounter(today.value, count.value);
    }
  }

  Future<Map<String, int>> getWeeklyData() async {
    final now = DateTime.now();
    final sevenDaysAgo = now.subtract(const Duration(days: 6)); // 6 days ago + today = 7 days
    final dateFormat = DateFormat('yyyy-MM-dd');
    final counters = await _databaseHelper.getAllCounters();
    final weeklyData = <String, int>{};

    // Get data for 7 days including today
    for (var i = 0; i < 7; i++) {
      final date = sevenDaysAgo.add(Duration(days: i));
      final dateStr = dateFormat.format(date);
      final counter = counters.firstWhere(
            (c) => c['date'] == dateStr,
        orElse: () => {'date': dateStr, 'count': 0},
      );
      weeklyData[dateStr] = counter['count'] as int;
    }

    return weeklyData;
  }
}