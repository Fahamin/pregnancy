import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
            colors: [
              Colors.pinkAccent,
              Colors.pinkAccent,
            ],
          ),
        ),
        child: Column(
          children: [
            // Header Section
            Container(
              height: 200,
              width: double.infinity,
              padding:  EdgeInsets.all(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                   CircleAvatar(
                    radius: 40,
                    backgroundColor: Colors.white24,
                    child: Icon(
                      Icons.person,
                      size: 40,
                      color: Colors.white,
                    ),
                  ),
                   SizedBox(height: 16),
                  Text(
                    'John Doe',
                    style: Theme.of(context).textTheme.titleLarge?.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                   SizedBox(height: 4),
                  Text(
                    'john.doe@example.com',
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 14,
                    ),
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
                      icon: Icons.home,
                      title: 'Home',
                      onTap: () {
                        Navigator.pop(context);
                        // Add navigation logic here
                      },
                    ),
                    _buildDrawerItem(
                      context,
                      icon: Icons.person,
                      title: 'Profile',
                      onTap: () {
                        Navigator.pop(context);
                        // Add navigation logic here
                      },
                    ),
                    _buildDrawerItem(
                      context,
                      icon: Icons.settings,
                      title: 'Settings',
                      onTap: () {
                        Navigator.pop(context);
                        // Add navigation logic here
                      },
                    ),
                     Divider(height: 1),
                    _buildDrawerItem(
                      context,
                      icon: Icons.logout,
                      title: 'Logout',
                      onTap: () {
                        Navigator.pop(context);
                        // Add logout logic here
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

  Widget _buildDrawerItem(
      BuildContext context, {
        required IconData icon,
        required String title,
        required var onTap,
      }) {
    return ListTile(
      leading: Icon(
        icon,
        color: Colors.blue.shade700,
      ),
      title: Text(
        title,
        style: TextStyle(
          color: Colors.grey.shade800,
          fontSize: 16,
        ),
      ),
      onTap: onTap,
      hoverColor: Colors.blue.shade50,
      tileColor: Colors.white,
      contentPadding:  EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 4,
      ),
    );
  }
}