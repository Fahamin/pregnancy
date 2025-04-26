import 'package:get/get.dart';

import '../../../../model/week_tip_model.dart';

class FatherDutyController extends GetxController {
  final List<WeekTip> weekTips = [
    WeekTip(week: 1, tip: "Be supportive as she tracks her cycle and ovulation."),
    WeekTip(week: 2, tip: "Encourage a healthy lifestyle (e.g., eating well, avoiding alcohol)."),
    WeekTip(week: 3, tip: "Celebrate the news of pregnancy together!"),
    WeekTip(week: 4, tip: "Help her schedule her first prenatal appointment."),
    WeekTip(week: 5, tip: "Be patient with her morning sickness. Prepare light, easy-to-digest meals."),
    WeekTip(week: 6, tip: "Offer emotional support as she adjusts to pregnancy symptoms."),
    WeekTip(week: 7, tip: "Attend the first ultrasound with her and share the excitement."),
    WeekTip(week: 8, tip: "Reassure her as she navigates hormonal changes."),
    WeekTip(week: 9, tip: "Help her stay hydrated and encourage her to rest."),
    WeekTip(week: 10, tip: "Start discussing plans for announcing the pregnancy to family and friends."),
    WeekTip(week: 11, tip: "Celebrate the end of the first trimester and the reduced risk of miscarriage."),
    WeekTip(week: 12, tip: "Help her plan for maternity clothes and baby gear."),
    WeekTip(week: 13, tip: "Encourage light exercise like walking or prenatal yoga."),
    WeekTip(week: 14, tip: "Attend the mid-pregnancy ultrasound (anatomy scan) with her."),
    WeekTip(week: 15, tip: "Start discussing baby names and nursery ideas."),
    WeekTip(week: 16, tip: "Talk or sing to the baby to start bonding."),
    WeekTip(week: 17, tip: "Help her stay comfortable by offering back rubs or foot massages."),
    WeekTip(week: 18, tip: "Plan a date night to celebrate the halfway point of the pregnancy."),
    WeekTip(week: 19, tip: "Feel the baby’s kicks and movements with her."),
    WeekTip(week: 20, tip: "Help set up the nursery or baby’s sleeping area."),
    WeekTip(week: 21, tip: "Attend prenatal classes or childbirth education sessions together."),
    WeekTip(week: 22, tip: "Encourage her to eat a variety of healthy foods as the baby’s taste buds develop."),
    WeekTip(week: 23, tip: "Help her stay hydrated and monitor her weight gain."),
    WeekTip(week: 24, tip: "Help pack the hospital bag."),
    WeekTip(week: 25, tip: "Install the car seat and ensure it’s properly fitted."),
    WeekTip(week: 26, tip: "Be proactive in planning for parental leave or work adjustments."),
    WeekTip(week: 27, tip: "Practice breathing techniques for labor with her."),
    WeekTip(week: 28, tip: "Take on more household responsibilities to let her rest."),
    WeekTip(week: 29, tip: "Help prepare freezer meals for postpartum recovery."),
    WeekTip(week: 30, tip: "Monitor baby’s movements daily and report any concerns to the doctor."),
    WeekTip(week: 31, tip: "Finalize the birth plan with her and her healthcare provider."),
    WeekTip(week: 32, tip: "Assist with organizing the nursery and washing baby clothes."),
    WeekTip(week: 33, tip: "Attend the final prenatal appointments with her."),
    WeekTip(week: 34, tip: "Help her stay calm and relaxed as the due date approaches."),
    WeekTip(week: 35, tip: "Double-check the hospital bag and ensure everything is ready."),
    WeekTip(week: 36, tip: "Be on standby for labor signs (e.g., contractions, water breaking)."),
    WeekTip(week: 37, tip: "Stay calm and supportive during the early stages of labor."),
    WeekTip(week: 38, tip: "Ensure the car is ready for the trip to the hospital."),
    WeekTip(week: 39, tip: "Celebrate the due date and stay patient as you wait for labor to begin."),
    WeekTip(week: 40, tip: "Provide reassurance and encouragement as she waits for labor to start."),
  ];
  WeekTip? selectedWeek;

  void fetchWeekData(int mother) {
    selectedWeek = weekTips.firstWhere(
          (element) => element.week == mother,
    );
    update(); // Notify listeners
  }

}
