import 'package:get/get.dart';

import '../../../../model/PregnancyCheckup.dart';
import '../CheckupService.dart';

class CheckupController extends GetxController {
  var checkups = <PregnancyCheckup>[].obs;
  var isLoading = false.obs;

  @override
  void onInit() {
    super.onInit();
    loadCheckups();
  }

  void loadCheckups() {
    isLoading(true);
    checkups.value = CheckupService.getCheckupList();
    isLoading(false);
  }

  void toggleCheckupStatus(int index) {
    checkups[index] = PregnancyCheckup(
      trimester: checkups[index].trimester,
      weekRange: checkups[index].weekRange,
      checkupName: checkups[index].checkupName,
      description: checkups[index].description,
      importance: checkups[index].importance,
      isDone: !checkups[index].isDone,
    );
    checkups.refresh();
  }
}