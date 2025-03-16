import 'package:get/get.dart';

import '../controllers/baby_model_week_controller.dart';

class BabyModelWeekBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BabyModelWeekController>(
      () => BabyModelWeekController(),
    );
  }
}
