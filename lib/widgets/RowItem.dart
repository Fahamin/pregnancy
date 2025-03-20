import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RowItem extends StatelessWidget {
  final String imagePath;
  final String title;

  // ructor with 'required' keyword for mandatory parameters
  RowItem(this.imagePath, this.title, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      padding: EdgeInsets.all(8),
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
            height: 35,
            fit: BoxFit.fill,
            errorBuilder:
                (context, error, stackTrace) =>
                    Icon(Icons.broken_image, size: 100),
          ),
          Padding(padding: EdgeInsets.all(4.0), child: Text(title)),
        ],
      ),
    );
  }
}
