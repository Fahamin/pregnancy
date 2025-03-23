import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BabyDevelopment extends StatefulWidget {
  @override
  _BabyDevelopmentState createState() => _BabyDevelopmentState();
}

class _BabyDevelopmentState extends State<BabyDevelopment> {
  // Data for the 40 weeks
  final List<Map<String, String>> pregnancyData = [
    {"week": "1", "details": "Pregnancy begins (calculated from the first day of the last menstrual period). No baby yet; body prepares for ovulation."},
    {"week": "2", "details": "Ovulation occurs. Sperm meets egg (conception) toward the end of this week."},
    {"week": "3", "details": "Fertilized egg implants in the uterus. Early hormones start forming."},
    {"week": "4", "details": "Embryo forms. Pregnancy test may show positive. Missed period is common."},
    {"week": "5", "details": "Neural tube (future brain and spine) develops. Heart begins to beat."},
    {"week": "6", "details": "Facial features start forming. Morning sickness may begin."},
    {"week": "7", "details": "Arms and legs bud. Brain grows rapidly."},
    {"week": "8", "details": "Major organs form. Embryo is now a fetus (about 1 inch long)."},
    {"week": "9", "details": "Toes appear. Fetus moves, though not felt yet."},
    {"week": "10", "details": "Vital organs in place. Fingernails and hair start developing."},
    {"week": "11", "details": "Genitals begin to form. Risk of miscarriage drops."},
    {"week": "12", "details": "Fetus can swallow. First trimester ends; baby is 2-3 inches."},
    {"week": "13", "details": "Placenta fully functional. Vocal cords form."},
    {"week": "14", "details": "Baby’s sex may be detectable. Fine hair (lanugo) covers body."},
    {"week": "15", "details": "Skeleton hardens. Baby can hear muffled sounds."},
    {"week": "16", "details": "Movements (quickening) may be felt. Baby is ~4-5 inches."},
    {"week": "17", "details": "Fat layers develop for warmth. Fingerprints form."},
    {"week": "18", "details": "Baby kicks more. Hearing improves."},
    {"week": "19", "details": "Vernix (protective coating) covers skin. Sensory development accelerates."},
    {"week": "20", "details": "Halfway mark! Ultrasound often reveals gender. Baby is ~6 inches."},
    {"week": "21", "details": "Rapid brain growth. Swallowing increases."},
    {"week": "22", "details": "Eyebrows and eyelids visible. Lungs prepare for breathing."},
    {"week": "23", "details": "Baby responds to loud noises. Survival outside womb possible (with intensive care)."},
    {"week": "24", "details": "Taste buds form. Lungs develop air sacs."},
    {"week": "25", "details": "Spine strengthens. Hands can grasp."},
    {"week": "26", "details": "Eyes open. Regular sleep cycles begin."},
    {"week": "27", "details": "Second trimester ends. Baby weighs ~2 pounds."},
    {"week": "28", "details": "Brain develops grooves. Baby can dream (REM sleep)."},
    {"week": "29", "details": "Bones fully developed but soft. Kicks get stronger."},
    {"week": "30", "details": "Baby gains weight rapidly (~half a pound per week)."},
    {"week": "31", "details": "Lung and digestive systems mature further."},
    {"week": "32", "details": "Skin smooths out. Baby is ~16-18 inches."},
    {"week": "33", "details": "Immune system strengthens. Skull remains flexible."},
    {"week": "34", "details": "Fingernails reach fingertips. Central nervous system matures."},
    {"week": "35", "details": "Baby settles head-down (usually). Less room to move."},
    {"week": "36", "details": "Lungs nearly fully developed. Weight gain slows."},
    {"week": "37", "details": "Baby is considered 'early term.' Organs ready for birth."},
    {"week": "38", "details": "Full term! Baby fine-tunes reflexes like grasping."},
    {"week": "39", "details": "Placenta provides antibodies. Baby is ~7-8 pounds on average."},
    {"week": "40", "details": "Due date! Labor could start anytime. Baby fully developed."},
  ];

  // Track the selected week
  int? selectedWeekIndex;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Baby Development'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
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
                        borderRadius: BorderRadius.circular(30), // Adjust the radius value as needed
                      ),


                      color: selectedWeekIndex == index ? Colors.blue : null,
                      child: Container(
                        width: 80,
                        alignment: Alignment.center,
                        child: Text(
                          'Week ${week["week"]}',
                          style: TextStyle(
                            fontSize: 16,
                            color: selectedWeekIndex == index ? Colors.white : null,
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

                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Week ${pregnancyData[selectedWeekIndex!]["week"]}',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          pregnancyData[selectedWeekIndex!]["details"]!,
                          style: TextStyle(fontSize: 16),
                        ),
                      ],
                    ),
                  ),

              ),
          ],
        ),
      ),
    );
  }
}