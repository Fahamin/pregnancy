import 'package:get/get.dart';
import 'package:pregnancy/app/modules/home/views/SetStartDateScreen.dart';

import '../BeautyHomePage.dart';
import '../MaternalHealthPage.dart';
import '../PregnancyQAPage.dart';
import '../baby_development_screen.dart';
import '../food_nutrtion.dart';
import '../modules/baby_model_week/bindings/baby_model_week_binding.dart';
import '../modules/baby_model_week/views/baby_model_week_view.dart';
import '../modules/father_duty/bindings/father_duty_binding.dart';
import '../modules/father_duty/views/father_duty_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/mother_care/bindings/mother_care_binding.dart';
import '../modules/mother_care/views/mother_care_view.dart';
import '../modules/pregnancy_risks/bindings/pregnancy_risks_binding.dart';
import '../modules/pregnancy_risks/views/pregnancy_risks_view.dart';
import '../problems_page.dart';

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
      transition: Transition.leftToRightWithFade,
      transitionDuration: Duration(milliseconds: 500),
    ),
    GetPage(
      name: _Paths.MOTHER_CARE,
      page: () => MotherCareView(),
      binding: MotherCareBinding(),
      transition: Transition.leftToRightWithFade,
      transitionDuration: Duration(milliseconds: 500),
    ),
    GetPage(
      name: _Paths.PREGNANCY_RISKS,
      page: () => PregnancyRisksView(),
      binding: PregnancyRisksBinding(),
      transition: Transition.leftToRightWithFade,
      transitionDuration: Duration(milliseconds: 500),
    ),
    GetPage(
      name: _Paths.MOTHER_HELTH,
      transition: Transition.leftToRightWithFade,
      transitionDuration: Duration(milliseconds: 500),
      page: () => MaternalHealthPage(),
    ),
    GetPage(
      name: _Paths.ANSWERQUES,
      transition: Transition.leftToRightWithFade,
      transitionDuration: Duration(milliseconds: 500),
      page: () => PregnancyQAPage(),
    ),
    GetPage(
      name: _Paths.BABY_DEVELOPMENT,
      transition: Transition.leftToRightWithFade,
      transitionDuration: Duration(milliseconds: 500),
      page: () => BabyDevelopment(),
    ),
    GetPage(
      name: _Paths.PPROBLEMS,
      transition: Transition.leftToRightWithFade,
      transitionDuration: Duration(milliseconds: 500),
      page: () => ProblemsDoing(),
    ),
    GetPage(
      name: _Paths.BEAUTYWOMER,
      transition: Transition.leftToRightWithFade,
      transitionDuration: Duration(milliseconds: 500),
      page: () => BeautyHomePage(),
    ),
    GetPage(
      name: _Paths.SET_DATE,
      transition: Transition.leftToRightWithFade,
      transitionDuration: Duration(milliseconds: 500),
      page: () => SetDeliveryDateScreen(),
    ),

    GetPage(
      name: _Paths.FATHER_DUTY,
      transition: Transition.leftToRightWithFade,
      transitionDuration: Duration(milliseconds: 500),
      page: () => FatherDutyView(),
      binding: FatherDutyBinding(),
    ),
    GetPage(
      name: _Paths.FOOD,
      transition: Transition.leftToRightWithFade,
      transitionDuration: Duration(milliseconds: 500),
      page: () => PregnancyNutritionGuide(),
    ),
  ];
}
