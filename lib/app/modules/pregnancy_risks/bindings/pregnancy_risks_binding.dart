import 'package:get/get.dart';

import '../controllers/pregnancy_risks_controller.dart';

class PregnancyRisksBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PregnancyRisksController>(
      () => PregnancyRisksController(),
    );
  }
}
