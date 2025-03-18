import 'package:get/get.dart';

import '../controllers/mother_care_controller.dart';

class MotherCareBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MotherCareController>(
      () => MotherCareController(),
    );
  }
}
