import 'package:get/get.dart';

import '../modules/baby_model_week/bindings/baby_model_week_binding.dart';
import '../modules/baby_model_week/views/baby_model_week_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.BABY_MODEL_WEEK,
      page: () => const BabyModelWeekView(),
      binding: BabyModelWeekBinding(),
    ),
  ];
}
