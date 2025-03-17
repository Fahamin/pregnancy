import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PregnancyContainer extends StatelessWidget {
  final String imagePath;
  final String title;

  // Constructor with 'required' keyword for mandatory parameters
  const PregnancyContainer(this.imagePath, this.title, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 180,
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        // Rounded corners
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            blurRadius: 10,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            imagePath,
            height: 30,
            fit: BoxFit.fill,
            errorBuilder: (context, error, stackTrace) =>
            const Icon(Icons.broken_image, size: 100),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(title),
          ),
        ],
      ),
    );
  }
}
