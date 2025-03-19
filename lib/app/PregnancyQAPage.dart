import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PregnancyQAPage extends StatelessWidget {
  final List<Map<String, String>> qaList = [
    {
      "question": "How soon can I take a pregnancy test?",
      "answer": "Most home pregnancy tests can detect pregnancy as early as the first day of a missed period. These tests measure the hormone hCG (human chorionic gonadotropin), which is produced after a fertilized egg attaches to the uterine lining. For accurate results, take the test in the morning when hCG levels are most concentrated.",
    },
    {
      "question": "What are the early signs of pregnancy?",
      "answer": "Early signs include missed periods, nausea or morning sickness, breast tenderness or swelling, fatigue, frequent urination, food aversions or cravings, mood swings, and light spotting (implantation bleeding).",
    },
    {
      "question": "How is pregnancy confirmed by a doctor?",
      "answer": "A doctor confirms pregnancy through a blood test (measures hCG levels) or an ultrasound (visualizes the gestational sac or fetus in the uterus).",
    },
    {
      "question": "How long does a pregnancy last?",
      "answer": "Pregnancy typically lasts about 40 weeks, divided into three trimesters: First Trimester (weeks 1-12), Second Trimester (weeks 13-26), and Third Trimester (weeks 27-40).",
    },
    {
      "question": "What is a due date, and how is it calculated?",
      "answer": "A due date is estimated as 40 weeks from the first day of your last menstrual period (LMP). Ultrasounds can also help estimate the due date more accurately.",
    },
    {
      "question": "What foods should I avoid during pregnancy?",
      "answer": "Avoid raw or undercooked meat, unpasteurized dairy, high-mercury fish, deli meats, and raw eggs to reduce the risk of infections like toxoplasmosis, listeria, and salmonella.",
    },
    {
      "question": "Can I eat seafood during pregnancy?",
      "answer": "Yes, but choose low-mercury options like salmon, shrimp, cod, and tilapia. Limit intake to 2-3 servings per week.",
    },
    {
      "question": "How much weight should I gain during pregnancy?",
      "answer": "Weight gain depends on your pre-pregnancy BMI: Underweight (28-40 lbs), Normal weight (25-35 lbs), Overweight (15-25 lbs), Obese (11-20 lbs).",
    },
    {
      "question": "Do I need to take prenatal vitamins?",
      "answer": "Yes, prenatal vitamins provide essential nutrients like folic acid (prevents neural tube defects), iron (prevents anemia), calcium (supports baby’s bone development), and vitamin D (aids calcium absorption).",
    },
    {
      "question": "Can I drink herbal teas during pregnancy?",
      "answer": "Some herbal teas are safe, such as ginger tea (helps with nausea) and peppermint tea (aids digestion). Avoid teas with ingredients like black cohosh, pennyroyal, or licorice root.",
    },
    {
      "question": "When should I start prenatal care?",
      "answer": "Start prenatal care as soon as you confirm your pregnancy, ideally within the first 8 weeks. Early care helps monitor your health and the baby’s development.",
    },
    {
      "question": "How often will I have prenatal appointments?",
      "answer": "Typically, once a month until 28 weeks, twice a month until 36 weeks, and then weekly until delivery.",
    },
    {
      "question": "What tests are done during pregnancy?",
      "answer": "Common tests include blood tests (check for anemia, blood type, and infections), ultrasounds (monitor fetal growth), glucose screening (tests for gestational diabetes), and genetic testing (screens for conditions like Down syndrome).",
    },
    {
      "question": "Can I travel during pregnancy?",
      "answer": "Travel is generally safe until 36 weeks. Avoid long flights or car rides, stay hydrated, and consult your doctor before traveling.",
    },
    {
      "question": "Is it safe to get vaccinated during pregnancy?",
      "answer": "Some vaccines are safe and recommended, such as the flu shot (protects against influenza) and Tdap vaccine (prevents tetanus, diphtheria, and pertussis).",
    },
    {
      "question": "Can I exercise during pregnancy?",
      "answer": "Yes, moderate exercise is safe and beneficial. Recommended activities include walking, swimming, prenatal yoga, and low-impact aerobics.",
    },
    {
      "question": "Are there exercises I should avoid?",
      "answer": "Avoid high-impact sports, activities with a risk of falling, and exercises that involve lying flat on your back after the first trimester.",
    },
    {
      "question": "Can I lift heavy objects during pregnancy?",
      "answer": "Avoid lifting heavy objects, especially in the later stages of pregnancy, as it can strain your back and increase the risk of injury.",
    },
    {
      "question": "Is it safe to do yoga during pregnancy?",
      "answer": "Yes, prenatal yoga is safe and beneficial. It improves flexibility, reduces stress, and prepares your body for labor. Avoid hot yoga or intense poses.",
    },
    {
      "question": "How can I relieve back pain during pregnancy?",
      "answer": "Practice good posture, use a pregnancy pillow for support, do gentle stretches or prenatal yoga, and apply a warm compress to the affected area.",
    },
    {
      "question": "Is it normal to feel anxious during pregnancy?",
      "answer": "Yes, pregnancy can bring anxiety due to hormonal changes and concerns about the baby’s health. Practice relaxation techniques like meditation, deep breathing, or talk to a counselor.",
    },
    {
      "question": "What are signs of postpartum depression?",
      "answer": "Signs include persistent sadness or hopelessness, loss of interest in activities, extreme fatigue, difficulty bonding with the baby, and thoughts of self-harm or harming the baby.",
    },
    {
      "question": "Can stress harm my baby?",
      "answer": "Chronic stress can increase the risk of preterm birth or low birth weight. Manage stress through relaxation, exercise, and seeking support.",
    },
    {
      "question": "How can I improve my sleep during pregnancy?",
      "answer": "Sleep on your side (left side is best for circulation), use pillows for support, establish a bedtime routine, and avoid caffeine and heavy meals before bed.",
    },
    {
      "question": "Is it normal to have mood swings during pregnancy?",
      "answer": "Yes, hormonal changes can cause mood swings. Communicate with your partner or a counselor if you feel overwhelmed.",
    },
    {
      "question": "How can I manage morning sickness?",
      "answer": "Eat small, frequent meals, avoid spicy or greasy foods, try ginger tea or crackers, and stay hydrated.",
    },
    {
      "question": "Is it normal to have heartburn during pregnancy?",
      "answer": "Yes, heartburn is common due to hormonal changes and pressure on the stomach. Eat smaller meals, avoid lying down immediately after eating, and use antacids if recommended by your doctor.",
    },
    {
      "question": "Why do I feel so tired during pregnancy?",
      "answer": "Fatigue is common due to hormonal changes and increased energy demands. Rest as much as possible and maintain a balanced diet.",
    },
    {
      "question": "Is it normal to have swollen feet during pregnancy?",
      "answer": "Yes, mild swelling is common due to increased blood volume and pressure on blood vessels. Elevate your feet, stay hydrated, and avoid standing for long periods.",
    },
    {
      "question": "Can I take medication for headaches during pregnancy?",
      "answer": "Consult your doctor before taking any medication. Acetaminophen (Tylenol) is generally safe, but avoid ibuprofen or aspirin.",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pregnancy Q&A'),
      ),
      body: ListView.builder(
        padding: EdgeInsets.all(16.0),
        itemCount: qaList.length,
        itemBuilder: (context, index) {
          return Card(
            margin: EdgeInsets.only(bottom: 16.0),
            child: ExpansionTile(
              title: Text(
                qaList[index]["question"]!,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              children: [
                Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text(
                    qaList[index]["answer"]!,
                    style: TextStyle(fontSize: 16, height: 1.5),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
