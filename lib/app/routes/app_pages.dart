import 'package:get/get.dart';

import '../MaternalHealthPage.dart';
import '../PregnancyQAPage.dart';
import '../modules/baby_model_week/bindings/baby_model_week_binding.dart';
import '../modules/baby_model_week/views/baby_model_week_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/mother_care/bindings/mother_care_binding.dart';
import '../modules/mother_care/views/mother_care_view.dart';
import '../modules/pregnancy_risks/bindings/pregnancy_risks_binding.dart';
import '../modules/pregnancy_risks/views/pregnancy_risks_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(name: _Paths.HOME, page: () => HomeView(), binding: HomeBinding()),
    GetPage(
      name: _Paths.BABY_MODEL_WEEK,
      page: () => BabyModelWeekView(),
      binding: BabyModelWeekBinding(),
    ),
    GetPage(
      name: _Paths.MOTHER_CARE,
      page: () => MotherCareView(),
      binding: MotherCareBinding(),
    ),
    GetPage(
      name: _Paths.PREGNANCY_RISKS,
      page: () => PregnancyRisksView(),
      binding: PregnancyRisksBinding(),
    ),
    GetPage(
      name: _Paths.MOTHER_HELTH,
      page: () => MaternalHealthPage(),
    ),
    GetPage(
      name: _Paths.ANSWERQUES,
      page: () => PregnancyQAPage(),
    ),
  ];
}
