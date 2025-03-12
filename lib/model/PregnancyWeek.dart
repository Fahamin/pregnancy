class PregnancyWeek {
  final int week;
  final String babyImagePath;
  final String sizeImagePath;
  final String description;
  final String babyLength;
  final String babyWeight;
  final String fruitSize; // New property for fruit comparison

  PregnancyWeek({
    required this.week,
    required this.babyImagePath,
    required this.sizeImagePath,
    required this.description,
    required this.babyLength,
    required this.babyWeight,
    required this.fruitSize,
  });
}
