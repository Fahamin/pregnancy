import 'package:flutter/material.dart';

class PregnancyNutritionGuide extends StatelessWidget {
  // Week-by-week food and nutrition data

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 250,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(
                "Food & Nutrition",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,

                ),
              ),
              background: Image.asset(
                'assets/other/foodn.png', // Replace with your image
                fit: BoxFit.cover,
              ),
            ),
            pinned: true,
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Foods For Pregnancy Journey",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.pink,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Eating good, nutritious food during pregnancy is crucial because it directly impacts the health of both the mother and the developing baby. Here’s why a balanced and healthy diet is essential during this journey',
                    style: TextStyle(fontSize: 16, height: 1.5),
                  ),
                  _buildSectionTitle('First Trimester (Weeks 1–12)'),
                  _buildBeautyTip(
                    icon: Icons.water_drop,
                    title: 'Weeks 1–4',
                    description:
                        'Leafy greens, fortified cereals, oranges, beans (folic acid).',
                  ),
                  _buildBeautyTip(
                    icon: Icons.water_drop,
                    title: 'Weeks 5–8',
                    description:
                        'Eggs, lean meats, nuts, seeds (protein and iron).',
                  ),
                  _buildBeautyTip(
                    icon: Icons.water_drop,
                    title: 'Weeks 9–12',
                    description:
                        'Ginger tea, whole grains, bananas, yogurt (nausea relief).',
                  ),
                  SizedBox(height: 20),
                  _buildSectionTitle('Second Trimester (Weeks 13–27)'),
                  _buildBeautyTip(
                    icon: Icons.water_drop,
                    title: 'Weeks 13–16',
                    description:
                        'Dairy, fortified plant-based milk, leafy greens (calcium).',
                  ),
                  _buildBeautyTip(
                    icon: Icons.water_drop,
                    title: 'Weeks 17-20',
                    description:
                        'Salmon, walnuts, chia seeds, flaxseeds (omega-3s).',
                  ),
                  _buildBeautyTip(
                    icon: Icons.water_drop,
                    title: 'Weeks 21–24',
                    description:
                        'Lean meats, lentils, chickpeas, tofu (protein).',
                  ),
                  _buildBeautyTip(
                    icon: Icons.water_drop,
                    title: 'Weeks 25–27',
                    description:
                        'Eggs, fortified cereals, citrus fruits (iron and vitamin C).',
                  ),
                  SizedBox(height: 20),
                  _buildSectionTitle('Third Trimester (Weeks 28–40)'),
                  _buildBeautyTip(
                    icon: Icons.water_drop,
                    title: 'Weeks 28–32',
                    description:
                        'Red meat, spinach, pumpkin seeds, dried fruits (iron).',
                  ),
                  _buildBeautyTip(
                    icon: Icons.water_drop,
                    title: 'Weeks 33–36',
                    description:
                        'Whole grains, apples, pears, berries (fiber).',
                  ),

                  _buildBeautyTip(
                    icon: Icons.water_drop,
                    title: 'Weeks 37–40',
                    description:
                        'Avocado, nuts, seeds, olive oil (healthy fats).',
                  ),

                ],
              ),
            ),
          ),
        ],
      ),
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

  Widget _buildSectionTitle(String title) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10.0),
      child: Text(
        title,
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Colors.deepPurple,
        ),
      ),
    );
  }

  Widget _buildBeautyTip({
    required IconData icon,
    required String title,
    required String description,
  }) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 8),
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: EdgeInsets.all(12.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Colors.pink.withOpacity(0.2),
                shape: BoxShape.circle,
              ),
              child: Icon(icon, color: Colors.pink),
            ),
            SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 4),
                  Text(description, style: TextStyle(fontSize: 14)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
