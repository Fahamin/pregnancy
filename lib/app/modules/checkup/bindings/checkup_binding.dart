import 'package:get/get.dart';

import '../controllers/checkup_controller.dart';

class CheckupBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CheckupController>(
      () => CheckupController(),
    );
  }
}
