class PregnancyCheckup {
  final String trimester;
  final String weekRange;
  final String checkupName;
  final String description;
  final String importance;
  final bool isDone;

  PregnancyCheckup({
    required this.trimester,
    required this.weekRange,
    required this.checkupName,
    required this.description,
    required this.importance,
    this.isDone = false,
  });
}