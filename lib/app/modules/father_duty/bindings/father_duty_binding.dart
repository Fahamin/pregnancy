import 'package:get/get.dart';

import '../controllers/father_duty_controller.dart';

class FatherDutyBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<FatherDutyController>(
      () => FatherDutyController(),
    );
  }
}
