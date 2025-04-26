import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProblemsDoing extends StatelessWidget {
  final List<String> problems = [
    "Morning Sickness - Nausea and vomiting, often worse in the morning.",
    "Fatigue - Extreme tiredness from hormonal shifts.",
    "Back Pain - Aches from added weight and posture changes.",
    "Swollen Feet and Ankles - Edema from fluid retention.",
    "Heartburn - Acid reflux from stomach pressure.",
    "Constipation - Slowed digestion due to progesterone.",
    "Frequent Urination - Pressure on the bladder from the uterus.",
    "Mood Swings - Emotional ups and downs from hormones.",
    "Sleep Disturbances - Trouble sleeping due to discomfort.",
    "Leg Cramps - Painful spasms, often at night.",
    "Shortness of Breath - Reduced lung capacity from the baby.",
    "Stretch Marks - Itchy marks from rapid skin stretching.",
    "Braxton Hicks Contractions - False labor pains.",
    "Gestational Diabetes - Temporary high blood sugar.",
    "Carpal Tunnel Syndrome - Numbness in hands from swelling.",
    "Headaches - Hormonal changes or dehydration.",
    "Varicose Veins - Swollen veins from increased blood volume.",
    "Round Ligament Pain - Sharp pains from stretching ligaments.",
    "Sciatica - Nerve pain from pressure on the lower spine.",
    "Nasal Congestion - Increased blood flow causing stuffiness.",
    "Skin Changes - Darkening or acne from hormones.",
    "Dizziness - Blood pressure changes or low blood sugar.",
    "Hemorrhoids - Swollen veins from constipation or pressure.",
    "Food Aversions - Strong dislike for certain smells or tastes.",
    "Cravings - Intense urges for specific foods.",
    "Gum Sensitivity - Bleeding gums from hormonal shifts.",
    "Hair Changes - Thicker hair or unexpected hair loss.",
    "Pelvic Pain - Pressure from the baby’s position.",
    "Itchy Skin - Dryness or stretching irritation.",
    "Anxiety - Worries about labor or parenthood.",
    "Blurred Vision - Fluid retention affecting eyes.",
    "Excessive Salivation - Hormonal overproduction.",
    "Hot Flashes - Sudden warmth from circulation changes.",
    "Joint Pain - Loosened ligaments from relaxin hormone.",
    "Yeast Infections - Increased risk from hormonal shifts.",
    "Weight Gain Worries - Stress over body changes.",
    "Breast Tenderness - Soreness from early hormone surges.",
    "Clumsiness - Shifted center of gravity.",
    "Restless Legs - Uncomfortable urges to move legs.",
    "High Blood Pressure - Risk of preeclampsia in some cases.",
  ];

  final List<String> thingsToDo = [
    "Prenatal Checkups - Track baby’s growth and health.",
    "Healthy Eating - Focus on folate-rich foods and proteins.",
    "Exercise - Low-impact options like prenatal yoga.",
    "Rest and Nap - Aim for 7-9 hours of sleep.",
    "Stay Hydrated - Drink 8-12 cups of water daily.",
    "Take Prenatal Vitamins - Folic acid and iron as prescribed.",
    "Prepare Nursery - Set up crib and baby essentials.",
    "Attend Classes - Learn about childbirth and breastfeeding.",
    "Practice Relaxation - Deep breathing or meditation.",
    "Connect Socially - Join pregnancy support groups.",
    "Monitor Baby’s Kicks - Track movements in third trimester.",
    "Plan Maternity Leave - Arrange work and recovery time.",
    "Pack Hospital Bag - Include clothes and baby items.",
    "Read Up - Study labor stages and newborn care.",
    "Partner Bonding - Spend quality time together.",
    "Stretch Daily - Ease muscle tension and stiffness.",
    "Avoid Stressors - Limit exposure to anxiety triggers.",
    "Massage Therapy - Relieve back or leg discomfort.",
    "Kegel Exercises - Strengthen pelvic floor muscles.",
    "Shop for Maternity Clothes - Comfortable, stretchy outfits.",
    "Track Weight Gain - Monitor with doctor’s guidance.",
    "Plan Birth Preferences - Discuss with healthcare provider.",
    "Learn Baby CPR - Prepare for emergencies.",
    "Decorate Nursery - Add personal touches for baby.",
    "Budget for Baby - Plan for new expenses.",
    "Practice Labor Breathing - Prepare for delivery day.",
    "Take Photos - Capture pregnancy milestones.",
    "Sleep on Left Side - Improve circulation to baby.",
    "Avoid Harmful Substances - No alcohol or smoking.",
    "Talk to Baby - Bond through voice and touch.",
    "Organize Help - Line up postpartum support.",
    "Choose Pediatrician - Find a doctor for baby.",
    "Install Car Seat - Ensure safety before birth.",
    "Freeze Meals - Prepare food for postpartum days.",
    "Explore Music - Play calming tunes for you and baby.",
    "Visit Dentist - Maintain oral health safely.",
    "Practice Self-Care - Pamper with baths or skincare.",
    "Learn Feeding Cues - Prepare for breast or bottle.",
    "Set Up Changing Station - Stock diapers and wipes.",
    "Celebrate - Host a baby shower or small gathering.",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Problems & Things to Do"),
        
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Common Problems",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: problems.length,
              itemBuilder: (context, index) {
                return Card(
                  child: ListTile(
                    title: Text(problems[index]),
                  ),
                );
              },
            ),
            SizedBox(height: 20),
            Text(
              "Things to Do",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: thingsToDo.length,
              itemBuilder: (context, index) {
                return Card(
                  child: ListTile(
                    title: Text(thingsToDo[index]),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}