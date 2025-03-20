import 'package:flutter/material.dart';

class PregnancyNutritionGuide extends StatelessWidget {
  // Week-by-week food and nutrition data
  final Map<String, Map<String, List<String>>> trimesterData = {
    "First Trimester (Weeks 1–12)": {
      "Nutrition": [
        "Weeks 1–4: Leafy greens, fortified cereals, oranges, beans (folic acid).",
        "Weeks 5–8: Eggs, lean meats, nuts, seeds (protein and iron).",
        "Weeks 9–12: Ginger tea, whole grains, bananas, yogurt (nausea relief).",
      ],
      "Fruits": [
        "Oranges",
        "Bananas",
        "Berries",
      ],
    },
    "Second Trimester (Weeks 13–27)": {
      "Nutrition": [
        "Weeks 13–16: Dairy, fortified plant-based milk, leafy greens (calcium).",
        "Weeks 17–20: Salmon, walnuts, chia seeds, flaxseeds (omega-3s).",
        "Weeks 21–24: Lean meats, lentils, chickpeas, tofu (protein).",
        "Weeks 25–27: Eggs, fortified cereals, citrus fruits (iron and vitamin C).",
      ],
      "Fruits": [
        "Citrus fruits",
        "Apples",
        "Pears",
      ],
    },
    "Third Trimester (Weeks 28–40)": {
      "Nutrition": [
        "Weeks 28–32: Red meat, spinach, pumpkin seeds, dried fruits (iron).",
        "Weeks 33–36: Whole grains, apples, pears, berries (fiber).",
        "Weeks 37–40: Avocado, nuts, seeds, olive oil (healthy fats).",
      ],
      "Fruits": [
        "Apples",
        "Pears",
        "Berries",
        "Avocado",
      ],
    },
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Food & Nutrition ",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        elevation: 10,
      ),
      body: ListView(
        children: trimesterData.entries.map((entry) {
          return Card(
            margin: EdgeInsets.all(10),
            elevation: 5,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            child: ExpansionTile(
              leading: Icon(
                _getTrimesterIcon(entry.key),
                
              ),
              title: Text(
                entry.key,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,

                ),
              ),
              children: [
                // Nutrition Section
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  child: Text(
                    "Nutrition Tips:",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,

                    ),
                  ),
                ),
                ...entry.value["Nutrition"]!.map((food) {
                  return Column(
                    children: [
                      Divider(
                        height: 1,
                        color: Colors.grey[300],
                      ),
                      ListTile(
                        leading: Icon(
                          Icons.arrow_forward_ios,
                          size: 16,
                          
                        ),
                        title: Text(
                          food,
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.grey[700],
                          ),
                        ),
                      ),
                    ],
                  );
                }).toList(),

                // Fruits Section
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  child: Text(
                    "Recommended Fruits:",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,

                    ),
                  ),
                ),
                ...entry.value["Fruits"]!.map((fruit) {
                  return Column(
                    children: [
                      Divider(
                        height: 1,
                        color: Colors.grey[300],
                      ),
                      ListTile(
                        leading: Icon(
                          Icons.local_florist,
                          size: 16,
                          
                        ),
                        title: Text(
                          fruit,
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.grey[700],
                          ),
                        ),
                      ),
                    ],
                  );
                }).toList(),
              ],
            ),
          );
        }).toList(),
      ),
    );
  }

  // Helper function to get trimester-specific icons
  IconData _getTrimesterIcon(String trimester) {
    if (trimester.contains("First")) {
      return Icons.child_friendly;
    } else if (trimester.contains("Second")) {
      return Icons.child_care;
    } else {
      return Icons.accessible_forward;
    }
  }
}