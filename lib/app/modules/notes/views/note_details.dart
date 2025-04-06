import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import '../../../routes/app_pages.dart';
import '../controllers/notes_controller.dart';

class NoteDetailView extends StatelessWidget {
  final NotesController _notesController = Get.find();

  NoteDetailView({super.key});

  @override
  Widget build(BuildContext context) {
    final note = Get.arguments as Map<String, dynamic>;
    final date = DateFormat('MMMM dd, yyyy').format(DateTime.parse(note['date']));

    return Scaffold(
      appBar: AppBar(
        title: Text(date),
        actions: [
          IconButton(
            icon: const Icon(Icons.edit),
            onPressed: () => Get.toNamed(Routes.NOTESADD, arguments: note),
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (note['title'] != null && note['title'].toString().isNotEmpty)
              Text(
                note['title'],
                style: Theme.of(context).textTheme.headlineSmall,
              ),
            const SizedBox(height: 16),
            _buildMoodIndicator(note['mood'] ?? 3),
            const SizedBox(height: 24),
            Text(
              note['content'] ?? '',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildMoodIndicator(int mood) {
    const moods = [
      {'icon': Icons.sentiment_very_dissatisfied, 'label': 'Very Bad', 'color': Colors.red},
      {'icon': Icons.sentiment_dissatisfied, 'label': 'Bad', 'color': Colors.orange},
      {'icon': Icons.sentiment_neutral, 'label': 'Neutral', 'color': Colors.grey},
      {'icon': Icons.sentiment_satisfied, 'label': 'Good', 'color': Colors.lightGreen},
      {'icon': Icons.sentiment_very_satisfied, 'label': 'Very Good', 'color': Colors.green},
    ];

    return Row(
      children: [
        Icon(moods[mood-1]['icon'] as IconData, color: moods[mood-1]['color'] as Color, size: 32),
        const SizedBox(width: 8),
        Text(moods[mood-1]['label'] as String, style: const TextStyle(fontSize: 16)),
      ],
    );
  }
}