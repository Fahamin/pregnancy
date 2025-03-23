import 'package:flutter/cupertino.dart';

class WeekDetails extends StatelessWidget {
  final String details;
  final String imagePath;

  const WeekDetails({Key? key, required this.details, required this.imagePath})
    : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(imagePath),
        Padding(padding: const EdgeInsets.all(16.0), child: Text(details)),
      ],
    );
  }
}
