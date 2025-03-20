import 'package:get/get.dart';

import '../../father_duty/controllers/father_duty_controller.dart';
import '../../mother_care/controllers/mother_care_controller.dart';
import '../controllers/home_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(
      () => HomeController(),
    );
    Get.lazyPut<MotherCareController>(
          () => MotherCareController(),
    );

    Get.lazyPut<FatherDutyController>(
          () => FatherDutyController(),
    );

  }
}
