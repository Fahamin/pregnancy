import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PregnancyContainerVer extends StatelessWidget {
  final String imagePath;
  final String title;

  // Constructor with 'required' keyword for mandatory parameters
  const PregnancyContainerVer(this.imagePath, this.title, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 170,

      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        // Rounded corners
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            blurRadius: 10,
            offset: Offset(0, 5),
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            imagePath,
            height: 100,
            fit: BoxFit.fill,
            errorBuilder:
                (context, error, stackTrace) =>
                Icon(Icons.broken_image, size: 100),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(title),
          ),
        ],
      ),
    );
  }
}
