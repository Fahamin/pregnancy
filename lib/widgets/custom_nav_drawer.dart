import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:in_app_review/in_app_review.dart';
import 'package:url_launcher/url_launcher.dart';

import '../app/routes/app_pages.dart';

class CustomNavigationDrawer extends StatelessWidget {
  CustomNavigationDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 16,
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Colors.pinkAccent, Colors.pinkAccent],
          ),
        ),
        child: Column(
          children: [
            // Header Section
            Container(
              height: 200,
              width: double.infinity,
              padding: EdgeInsets.all(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                   Image.asset("assets/other/pre.png",height: 60,),

                  SizedBox(height: 16),
                  Text(
                    'Safe Pregnancy',
                    style: Theme.of(context).textTheme.titleLarge?.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 4),
                  Text(
                    'Safe Journey',
                    style: TextStyle(color: Colors.white70, fontSize: 14),
                  ),
                ],
              ),
            ),
            // Menu Items
            Expanded(
              child: Container(
                color: Colors.white,
                child: ListView(
                  padding: EdgeInsets.zero,
                  children: [
                    _buildDrawerItem(
                      context,
                      icon: Icons.edit_calendar_sharp,
                      title: 'Set Delivery Date',
                      onTap: () {
                        Get.back();
                        Get.toNamed(Routes.SET_DATE);
                      },
                    ),
                    _buildDrawerItem(
                      context,
                      icon: Icons.woman_outlined,
                      title: 'Beauty Pregnancy',
                      onTap: () {
                        Get.back();
                        Get.toNamed(Routes.BEAUTYWOMER);
                      },
                    ),
                    _buildDrawerItem(
                      context,
                      icon: Icons.emoji_food_beverage,
                      title: 'Food & Nutrition',
                      onTap: () {
                        Get.back();
                        Get.toNamed(Routes.FOOD);
                      },
                    ),
                    Divider(height: 1),
                    _buildDrawerItem(
                      context,
                      icon: Icons.logout,
                      title: 'Logout',
                      onTap: () {
                        Navigator.pop(context);
                        openAppStore();
                      },
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

  void openAppStore() async {
    final String appId = "com.nexus.addons.kodi.tv"; // Replace with your app's package name

    final Uri playStoreUrl =
    Uri.parse("https://play.google.com/store/apps/details?id=$appId");
    final Uri appStoreUrl =
    Uri.parse("https://apps.apple.com/app/idYOUR_APP_STORE_ID"); // Replace YOUR_APP_STORE_ID

    if (await canLaunchUrl(playStoreUrl)) {
      await launchUrl(playStoreUrl);
    } else if (await canLaunchUrl(appStoreUrl)) {
      await launchUrl(appStoreUrl);
    } else {
      throw "Could not open store listing";
    }
  }

  Widget _buildDrawerItem(
    BuildContext context, {
    required IconData icon,
    required String title,
    required var onTap,
  }) {
    return ListTile(
      leading: Icon(icon, color: Colors.blue.shade700),
      title: Text(
        title,
        style: TextStyle(color: Colors.grey.shade800, fontSize: 16),
      ),
      onTap: onTap,
      hoverColor: Colors.blue.shade50,
      tileColor: Colors.white,
      contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 4),
    );
  }
}


