import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BeautyHomePage extends StatelessWidget {
  BeautyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 250.0,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(
                'Pregnancy Beauty',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  shadows: [
                  Shadow(
                  blurRadius: 10.0,
                  color: Colors.black54,
                  offset: Offset(1.0, 1.0),
                  )]
                ),
              ),
              background: Image.asset(
                'assets/other/beauty.jpg', // Replace with your image
                fit: BoxFit.cover,
              ),
            ),
            pinned: true,
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Beauty Care During Pregnancy',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.pink,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Maintain your glow and feel beautiful throughout your pregnancy journey with these safe and effective beauty tips.',
                    style: TextStyle(fontSize: 16, height: 1.5),
                  ),
                  SizedBox(height: 20),
                  _buildSectionTitle('Skin Care Routine'),
                  _buildBeautyTip(
                    icon: Icons.water_drop,
                    title: 'Hydration is Key',
                    description:
                    'Drink at least 8-10 glasses of water daily and use pregnancy-safe moisturizers to combat dryness.',
                  ),
                  _buildBeautyTip(
                    icon: Icons.sunny,
                    title: 'Sun Protection',
                    description:
                    'Use mineral-based sunscreen (SPF 30+) daily as pregnancy can make skin more sensitive to sun.',
                  ),
                  _buildBeautyTip(
                    icon: Icons.face,
                    title: 'Safe Acne Treatment',
                    description:
                    'Avoid retinoids and salicylic acid. Opt for glycolic acid or azelaic acid under dermatologist guidance.',
                  ),
                  SizedBox(height: 20),
                  _buildSectionTitle('Hair Care Tips'),
                  _buildBeautyTip(
                    icon: Icons.face_retouching_natural,
                    title: 'Natural Oils',
                    description:
                    'Massage scalp with coconut or almond oil to reduce hair fall and maintain shine.',
                  ),
                  _buildBeautyTip(
                    icon: Icons.colorize,
                    title: 'Hair Coloring',
                    description:
                    'Avoid chemical dyes in first trimester. Consider henna or ammonia-free options after first trimester.',
                  ),
                  _buildBeautyTip(
                    icon: Icons.air,
                    title: 'Gentle Styling',
                    description:
                    'Reduce heat styling and tight hairstyles that can stress hair follicles.',
                  ),
                  SizedBox(height: 20),
                  _buildSectionTitle('Makeup & Wellness'),
                  _buildBeautyTip(
                    icon: Icons.brush,
                    title: 'Mineral Makeup',
                    description:
                    'Switch to mineral-based makeup products which are gentler on sensitive pregnancy skin.',
                  ),
                  _buildBeautyTip(
                    icon: Icons.spa,
                    title: 'Pregnancy-Safe Spa',
                    description:
                    'Enjoy facials with natural ingredients but avoid harsh peels and essential oils like rosemary or sage.',
                  ),
                  _buildBeautyTip(
                    icon: Icons.nightlight_round,
                    title: 'Beauty Sleep',
                    description:
                    'Prioritize 7-9 hours of sleep with extra pillows for support to prevent puffiness and dark circles.',
                  ),
                  SizedBox(height: 30),
                  Center(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.pink,
                        padding: EdgeInsets.symmetric(
                            horizontal: 40, vertical: 15),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                      onPressed: () {
                        // Navigate to detailed beauty routines
                      },
                      child: Text(
                        'View Weekly Beauty Plan',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 40),
                ],
              ),
            ),
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
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
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
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 4),
                  Text(
                    description,
                    style: TextStyle(fontSize: 14),
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