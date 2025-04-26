import 'package:get/get.dart';

import '../controllers/click_counter_controller.dart';

class ClickCounterBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ClickCounterController>(
      () => ClickCounterController(),
    );
  }
}
