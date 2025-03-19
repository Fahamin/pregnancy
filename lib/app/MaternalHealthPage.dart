import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MaternalHealthPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Maternal Health')),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildSectionTitle('1. Nutrition'),
            _buildSectionContent(
              'A pregnant woman needs a well-balanced diet rich in vitamins, minerals, and nutrients. Key nutrients include:',
            ),
            _buildBulletPoint(
              'Folic Acid: Helps prevent neural tube defects. Found in leafy greens, citrus fruits, and fortified cereals.',
            ),
            _buildBulletPoint(
              'Iron: Supports increased blood volume and prevents anemia. Found in red meat, beans, and spinach.',
            ),
            _buildBulletPoint(
              'Calcium: Essential for the development of the baby\'s bones and teeth. Found in dairy products, fortified plant-based milks, and leafy greens.',
            ),
            _buildBulletPoint(
              'Protein: Important for the growth of fetal tissue, including the brain. Found in lean meat, poultry, fish, eggs, beans, and nuts.',
            ),
            _buildBulletPoint(
              'Hydration: Drinking plenty of water is crucial to support increased blood volume and amniotic fluid.',
            ),

            _buildSectionTitle('2. Prenatal Care'),
            _buildSectionContent(
              'Regular visits to a healthcare provider are essential to monitor the health of both the mother and the baby. Ultrasounds and tests help track the baby\'s development and detect any potential issues early. Vaccinations like the flu shot and Tdap are recommended during pregnancy.',
            ),

            _buildSectionTitle('3. Physical Activity'),
            _buildSectionContent(
              'Moderate exercise, such as walking, swimming, or prenatal yoga, can help maintain fitness, reduce stress, and improve circulation. Pelvic floor exercises strengthen the pelvic floor muscles, aiding in labor and recovery.',
            ),

            _buildSectionTitle('4. Mental Health'),
            _buildSectionContent(
              'Pregnancy can be stressful, so it\'s important to find ways to relax, such as through meditation, deep breathing, or talking to a counselor. Having a strong support system of family, friends, and healthcare providers can help manage emotional well-being.',
            ),

            _buildSectionTitle('5. Avoiding Harmful Substances'),
            _buildSectionContent(
              'Avoid alcohol, drugs, and smoking, as they can cause serious birth defects and developmental issues. Limit caffeine intake to 200 mg per day (about one 12-ounce cup of coffee).',
            ),

            _buildSectionTitle('6. Rest and Sleep'),
            _buildSectionContent(
              'Pregnant women often need more sleep, especially in the first and third trimesters. Sleeping on the left side can improve circulation to the heart and allow better blood flow to the fetus.',
            ),

            _buildSectionTitle('7. Managing Common Pregnancy Symptoms'),
            _buildSectionContent(
              'For morning sickness, eat small, frequent meals and avoid spicy or greasy foods. For heartburn, eat smaller meals, avoid lying down immediately after eating, and use antacids if recommended by a doctor. For swelling, elevate feet, stay hydrated, and avoid standing for long periods.',
            ),

            _buildSectionTitle('8. Education and Preparation'),
            _buildSectionContent(
              'Childbirth classes can help prepare for labor and delivery. Breastfeeding education can also be beneficial.',
            ),

            _buildSectionTitle('9. Monitoring for Complications'),
            _buildSectionContent(
              'Be aware of signs of pre-eclampsia (high blood pressure and protein in the urine), gestational diabetes (managed through diet, exercise, and sometimes medication), and preterm labor (regular contractions, pelvic pressure, and changes in vaginal discharge). Seek immediate medical attention if any of these occur.',
            ),

            _buildSectionTitle('10. Postpartum Planning'),
            _buildSectionContent(
              'Plan for postpartum recovery, including rest, nutrition, and support. Be aware of the signs of postpartum depression and seek help if needed.',
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Padding(
      padding: EdgeInsets.only(top: 16.0, bottom: 8.0),
      child: Text(
        title,
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Colors.blue,
        ),
      ),
    );
  }

  Widget _buildSectionContent(String content) {
    return Padding(
      padding: EdgeInsets.only(bottom: 8.0),
      child: Text(content, style: TextStyle(fontSize: 16, height: 1.5)),
    );
  }

  Widget _buildBulletPoint(String text) {
    return Padding(
      padding: EdgeInsets.only(left: 16.0, bottom: 4.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('• ', style: TextStyle(fontSize: 16)),
          Expanded(
            child: Text(text, style: TextStyle(fontSize: 16, height: 1.5)),
          ),
        ],
      ),
    );
  }
}
