import 'package:get/get.dart';

class BabyModelWeekController extends GetxController {

  final List<Map<String, String>> pregnancyWeeks = List.generate(
    40,
        (index) {
      final details = [
        "Although it’s strange, the first two weeks of pregnancy are a “getting ready” period. Your body slowly releases more hormones and your uterus prepares for a potential pregnancy. At the end of the second week, your ovary releases an egg (ovulation). If sperm meets an egg just after ovulation, the process to pregnancy continues",
        "You're not pregnant yet, but if you conceive this week, you'll be two weeks pregnant. That's because healthcare providers use your last menstrual period to determine your due date, so technically the first day of your period is also the first day of your pregnancy. Since you ovulate about two weeks into your cycle, conception happens around the time you're two weeks pregnant.",
        "Fingers and toes are developing.",
        "Fertilization occurs during the third week. A sperm and egg join and create a zygote.",
        "The tiny bundle of cells turns into a blastocyst and implants into your uterine lining. The beginning of what will become the placenta forms. A water-tight sac forms around the blastocyst. This is the amniotic sac, and it provides cushioning to a fetus during pregnancy.",
        "The neural tube (brain, spinal cord and other neural tissue of the central nervous system) forms. The tiny “heart” tube will pulse 110 times a minute by the end of the fifth week.",
        "Tiny buds that become arms and legs also develop. Blood cells are taking shape, and circulation will begin. Structures that’ll become the ears, eyes and mouth take form. Your healthcare provider can probably detect pulses in the cluster of cells that will form the heart on a vaginal ultrasound.",
        "Bones begin replacing soft cartilage and genitals begin to form. The embryo’s head is large in proportion to the rest of its body. Some people think the embryo resembles a small tadpole or seahorse due to its prominent tail (which recedes) and large head.",
        "All of the major organs and body systems are developing. The embryo has web-like hands and feet. Eyes become visible and ears begin to form. The umbilical cord is fully developed and helps to transport oxygen and blood to the embryo",
        "The beginnings of teeth and taste buds are forming. Its muscles are forming and its body shape takes on more of a human appearance. But, its head is still 50% of its length. Your provider may be able to hear its heartbeat with a Doppler ultrasound",
        "The arms, hands, fingers, feet and toes are fully formed (no more webbed fingers). Fingernails and toenails are beginning to develop and the external ears form. The external genitals also begin to form, but it’s too soon to see them on an ultrasound",
        "The fetus is starting to explore a bit by doing things like opening and closing its fists and mouth. Its knees, elbows and ankles are working, but it’s too soon to feel any kicks. The bones are hardening, but its skin is still see-through. Facial features are more prominent..",
        "All the organs, limbs, bones and muscles are present and will continue to develop in order to become fully functional. The circulatory, digestive and urinary systems are also working and the liver produces bile. The fetus is drinking and peeing amniotic fluid..",
        " Vocal cords form and the fetus’s large head begins to grow proportionate to its body.",
        "The fetus’s skin starts to thicken and fine hair begins to grow. It can start bringing its fingers to its mouth and turn its head. External genitals are fully developed and fingerprints begin to form.",
        "Some organs, like intestines and ears, are moving to their permanent location. The fetus still uses amniotic fluid to practice breathing, but its lungs are beginning to develop. The fetus begins to make more purposeful movements, like sucking its thumb or smiling.",
        "The fetus has lips and its ears are developed enough that it can hear you talk. Even though its eyes are closed, the fetus can react to light by turning away from it.",
        "The fetus still has thin skin, but will start to put on fat. Its skin is covered with a whitish coating called vernix. This “cheesy” substance is thought to protect fetal skin from long-term exposure to amniotic fluid.",
        "The fetus is covered in lanugo, a peach fuzz-like hair. It helps keep the fetus warm and provides another layer of protection. The fetus may have a sleep-wake cycle, and loud noises may wake the fetus if it’s asleep.",
        "The fetus is getting stronger and most people begin to feel kicks and punches. The fetus also has its own unique set of fingerprints and can hiccup.",
        "The fetus’s nails grow towards the end of its fingers. The area of the brain responsible for its five senses begins to develop.",
        "Limb movements are coordinated and frequent. The fetus has bone marrow that helps it produce blood cells..",
        "The fetus’s grasp is getting stronger and it can touch its ears and the umbilical cord. It can hear your heartbeat, your stomach rumble and your breathing.",
        " If born prematurely, the fetus may survive after the 23rd week with intensive care. It will begin rapidly adding fat to its body.",
        "The fetus’s lungs are fully developed, but not well enough to work outside your uterus..",
        "More body fat makes the fetus’s skin less wrinkled and plumper. Its nervous system is quickly maturing..",
        "The fetus makes melanin, the substance that gives skin and eyes their color. The fetus’s lungs start to make surfactant, a substance that helps it breathe after birth.",
        "The fetus can open its eyes and blink. It also has eyelashes.",
        "The fetus may begin turning head-down in your uterus as it gets ready for birth. At the end of the seventh month, the fetus is about 14 to 15 inches long and weighs between 2 and 3 pounds.",
        "You may notice the kicks and jabs feel more like pokes now that the fetus is getting cramped in the amniotic sac..",
        "The fetus can control its own body heat. Its brain is maturing and growing rapidly..",
        "The fetus can process more information and stimuli. You can probably notice more distinct patterns in when it’s awake and when it’s asleep.",
        "The fetus’s skin isn’t translucent anymore. Other than the lungs and brain, most other organs are well-formed and ready for birth..",
        "The fetus’s bones are hardening, with exception of the cranial bones around its brain, which needs to be soft to descend the birth canal..",
        "The vernix that protects the fetus’s skin starts to get thicker..",
        "The fetus’s brain continues to grow, but still only weighs two-thirds of what it should at birth..",
        "The fetus loses its lanugo and it has hair on its head.",
        "The fetus’s toenails reach the end of its toes. You may start to feel the fetus drop into your pelvis.",
        "The fetus is packing on 0.5 pounds per week to get to its final size",
        "The fetus is full-term and ready to meet the world!"
      ];

      final images = [
        "assets/week/b1.png",
        "assets/week/b2.png",
        "assets/week/b3.png",
        "assets/week/b4.png",
        "assets/week/b5.png",
        "assets/week/b6.png",
        "assets/week/b7.png",
        "assets/week/b8.png",
        "assets/week/b9.png",
        "assets/week/b10.png",
        "assets/week/b11.png",
        "assets/week/b12.png",
        "assets/week/b13.png",
        "assets/week/b14.jpg",
        "assets/week/b15.jpg",
        "assets/week/b16.jpg",
        "assets/week/b17.jpg",
        "assets/week/b18.jpg",
        "assets/week/b19.jpg",
        "assets/week/b20.jpg",
        "assets/week/b21.jpg",
        "assets/week/b22.jpg",
        "assets/week/b23.jpg",
        "assets/week/b24.jpg",
        "assets/week/b25.jpg",
        "assets/week/b26.jpg",
        "assets/week/b27.jpg",
        "assets/week/b28.jpg",
        "assets/week/b29.jpg",
        "assets/week/b30.jpg",
        "assets/week/b31.jpg",
        "assets/week/b32.jpg",
        "assets/week/b33.jpg",
        "assets/week/b34.jpg",
        "assets/week/b35.jpg",
        "assets/week/b36.jpg",
        "assets/week/b37.jpg",
        "assets/week/b38.jpg",
        "assets/week/b39.jpg",
        "assets/week/b40.jpg",
      ];

      return {
        'week': 'Week ${index + 1}',
        'details': details[index],
        'image': images[index],
      };
    },
  ).toList();

  var selectedWeekIndex = RxInt(-1);

  void toggleWeekDetails(int index) {
    if (selectedWeekIndex.value == index) {
      selectedWeekIndex.value = -1;
    } else {
      selectedWeekIndex.value = index;
    }
  }


}
