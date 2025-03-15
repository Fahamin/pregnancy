import 'package:flutter/material.dart';

class WeekDetails extends StatelessWidget {
  final String details;
  final String imagePath;

  const WeekDetails({
    Key? key,
    required this.details,
    required this.imagePath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Display the image
        Image.asset(
          imagePath,
          width: double.infinity,
          height: 300,
          fit: BoxFit.fill,
        ),
        // Display the details text
        Padding(
          padding: EdgeInsets.all(16),
          child: Text(
            details,
            style: TextStyle(fontSize: 16),
          ),
        ),
      ],
    );
  }
}