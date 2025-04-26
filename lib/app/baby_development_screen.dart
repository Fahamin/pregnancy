import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../model/baby_development_model.dart';

class BabyDevelopment extends StatefulWidget {
  @override
  _BabyDevelopmentState createState() => _BabyDevelopmentState();
}

class _BabyDevelopmentState extends State<BabyDevelopment> {
  // Data for the 40 weeks
  final List<BabyDevelopmentModel> pregnancyData = [
    BabyDevelopmentModel(
      week: "1",
      details:
          "Pregnancy begins (calculated from the first day of the last menstrual period). No baby yet; body prepares for ovulation.",
      imagePath: "assets/dev/bd1.png",
    ),
    BabyDevelopmentModel(
      week: "2",
      details:
          "Ovulation occurs. Sperm meets egg (conception) toward the end of this week.",
      imagePath: "assets/dev/bd2.png",
    ),
    BabyDevelopmentModel(
      week: "3",
      details:
          "Fertilized egg implants in the uterus. Early hormones start forming.",
      imagePath: "assets/dev/bd3.png",
    ),
    BabyDevelopmentModel(
      week: "4",
      details:
          "Embryo forms. Pregnancy test may show positive. Missed period is common.",
      imagePath: "assets/dev/bd4.png",
    ),
    BabyDevelopmentModel(
      week: "5",
      details:
          "Neural tube (future brain and spine) develops. Heart begins to beat.",
      imagePath: "assets/dev/bd5.png",
    ),
    BabyDevelopmentModel(
      week: "6",
      details: "Facial features start forming. Morning sickness may begin.",
      imagePath: "assets/dev/bd6.png",
    ),
    BabyDevelopmentModel(
      week: "7",
      details: "Arms and legs bud. Brain grows rapidly.",
      imagePath: "assets/dev/bd7.png",
    ),
    BabyDevelopmentModel(
      week: "8",
      details: "Major organs form. Embryo is now a fetus (about 1 inch long).",
      imagePath: "assets/dev/bd8.png",
    ),
    BabyDevelopmentModel(
      week: "9",
      details: "Toes appear. Fetus moves, though not felt yet.",
      imagePath: "assets/dev/bd9.png",
    ),
    BabyDevelopmentModel(
      week: "10",
      details: "Vital organs in place. Fingernails and hair start developing.",
      imagePath: "assets/dev/bd10.png",
    ),
    BabyDevelopmentModel(
      week: "11",
      details: "Genitals begin to form. Risk of miscarriage drops.",
      imagePath: "assets/dev/bd11.png",
    ),
    BabyDevelopmentModel(
      week: "12",
      details: "Fetus can swallow. First trimester ends; baby is 2-3 inches.",
      imagePath: "assets/dev/bd12.png",
    ),
    BabyDevelopmentModel(
      week: "13",
      details: "Placenta fully functional. Vocal cords form.",
      imagePath: "assets/dev/bd13.png",
    ),
    BabyDevelopmentModel(
      week: "14",
      details: "Baby’s sex may be detectable. Fine hair (lanugo) covers body.",
      imagePath: "assets/dev/bd14.png",
    ),
    BabyDevelopmentModel(
      week: "15",
      details: "Skeleton hardens. Baby can hear muffled sounds.",
      imagePath: "assets/dev/bd15.png",
    ),
    BabyDevelopmentModel(
      week: "16",
      details: "Movements (quickening) may be felt. Baby is ~4-5 inches.",
      imagePath: "assets/dev/bd16.png",
    ),
    BabyDevelopmentModel(
      week: "17",
      details: "Fat layers develop for warmth. Fingerprints form.",
      imagePath: "assets/dev/bd17.png",
    ),
    BabyDevelopmentModel(
      week: "18",
      details: "Baby kicks more. Hearing improves.",
      imagePath: "assets/dev/bd18.png",
    ),
    BabyDevelopmentModel(
      week: "19",
      details:
          "Vernix (protective coating) covers skin. Sensory development accelerates.",
      imagePath: "assets/dev/bd19.png",
    ),
    BabyDevelopmentModel(
      week: "20",
      details:
          "Halfway mark! Ultrasound often reveals gender. Baby is ~6 inches.",
      imagePath: "assets/dev/bd20.png",
    ),
    BabyDevelopmentModel(
      week: "21",
      details: "Rapid brain growth. Swallowing increases.",
      imagePath: "assets/dev/bd21.png",
    ),
    BabyDevelopmentModel(
      week: "22",
      details: "Eyebrows and eyelids visible. Lungs prepare for breathing.",
      imagePath: "assets/dev/bd22.png",
    ),
    BabyDevelopmentModel(
      week: "23",
      details:
          "Baby responds to loud noises. Survival outside womb possible (with intensive care).",
      imagePath: "assets/dev/bd23.png",
    ),
    BabyDevelopmentModel(
      week: "24",
      details: "Taste buds form. Lungs develop air sacs.",
      imagePath: "assets/dev/bd24.png",
    ),
    BabyDevelopmentModel(
      week: "25",
      details: "Spine strengthens. Hands can grasp.",
      imagePath: "assets/dev/bd25.png",
    ),
    BabyDevelopmentModel(
      week: "26",
      details: "Eyes open. Regular sleep cycles begin.",
      imagePath: "assets/dev/bd26.png",
    ),
    BabyDevelopmentModel(
      week: "27",
      details: "Second trimester ends. Baby weighs ~2 pounds.",
      imagePath: "assets/dev/bd27.png",
    ),
    BabyDevelopmentModel(
      week: "28",
      details: "Brain develops grooves. Baby can dream (REM sleep).",
      imagePath: "assets/dev/bd28.png",
    ),
    BabyDevelopmentModel(
      week: "29",
      details: "Bones fully developed but soft. Kicks get stronger.",
      imagePath: "assets/dev/bd29.png",
    ),
    BabyDevelopmentModel(
      week: "30",
      details: "Baby gains weight rapidly (~half a pound per week).",
      imagePath: "assets/dev/bd30.png",
    ),
    BabyDevelopmentModel(
      week: "31",
      details: "Lung and digestive systems mature further.",
      imagePath: "assets/dev/bd31.png",
    ),
    BabyDevelopmentModel(
      week: "32",
      details: "Skin smooths out. Baby is ~16-18 inches.",
      imagePath: "assets/dev/bd32.png",
    ),
    BabyDevelopmentModel(
      week: "33",
      details: "Immune system strengthens. Skull remains flexible.",
      imagePath: "assets/dev/bd33.png",
    ),
    BabyDevelopmentModel(
      week: "34",
      details: "Fingernails reach fingertips. Central nervous system matures.",
      imagePath: "assets/dev/bd34.png",
    ),
    BabyDevelopmentModel(
      week: "35",
      details: "Baby settles head-down (usually). Less room to move.",
      imagePath: "assets/dev/bd35.png",
    ),
    BabyDevelopmentModel(
      week: "36",
      details: "Lungs nearly fully developed. Weight gain slows.",
      imagePath: "assets/dev/bd36.png",
    ),
    BabyDevelopmentModel(
      week: "37",
      details: "Baby is considered 'early term.' Organs ready for birth.",
      imagePath: "assets/dev/bd37.png",
    ),
    BabyDevelopmentModel(
      week: "38",
      details: "Full term! Baby fine-tunes reflexes like grasping.",
      imagePath: "assets/dev/bd38.png",
    ),
    BabyDevelopmentModel(
      week: "39",
      details: "Placenta provides antibodies. Baby is ~7-8 pounds on average.",
      imagePath: "assets/dev/bd39.png",
    ),
    BabyDevelopmentModel(
      week: "40",
      details: "Due date! Labor could start anytime. Baby fully developed.",
      imagePath: "assets/dev/bd40.png",
    ),
  ];

  // Track the selected week
  int? selectedWeekIndex;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Baby Development'),
        ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 50, // Height of the horizontal list
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: pregnancyData.length,
                itemBuilder: (context, index) {
                  final week = pregnancyData[index];
                  return GestureDetector(
                    onTap: () {
                      // Update the selected week
                      setState(() {
                        selectedWeekIndex = index;
                      });
                    },
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                          30,
                        ), // Adjust the radius value as needed
                      ),
                      color: selectedWeekIndex == index ? Colors.blue : null,
                      child: Container(
                        width: 80,
                        alignment: Alignment.center,
                        child: Text(
                          'Week ${week.week}',
                          style: TextStyle(
                            fontSize: 16,
                            color:
                                selectedWeekIndex == index
                                    ? Colors.white
                                    : null,
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 20),
            if (selectedWeekIndex != null)
              Expanded(
                child:
                   Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 10),
                      InteractiveViewer(
                        boundaryMargin: EdgeInsets.all(20.0),
                        // Optional, for panning beyond boundaries
                        minScale: 1.0,
                        // Minimum zoom scale
                        maxScale: 5.0,
                        // Maximum zoom scale
                        child: Image.asset(
                          pregnancyData[selectedWeekIndex!].imagePath,
                          height: 400,
                          fit: BoxFit.fill,
                        ),
                      ),
                      SizedBox(height: 10),
                      Expanded(
                        child: Text(
                          pregnancyData[selectedWeekIndex!].details,
                          style: TextStyle(fontSize: 16),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),

              ),
          ],
        ),
      ),
    );
  }
}
