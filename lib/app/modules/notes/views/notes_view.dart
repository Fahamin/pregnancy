import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:pregnancy/app/routes/app_pages.dart';

import '../controllers/notes_controller.dart';

class NotesView extends GetView<NotesController> {
  const NotesView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pregnancy Journal'),
        actions: [
          IconButton(
            icon: const Icon(Icons.add),
            onPressed: () => Get.toNamed(Routes.NOTESADD),
          ),
        ],
      ),
      body: Obx(() => controller.isLoading.value
          ? const Center(child: CircularProgressIndicator())
          : controller.notesList.isEmpty
          ? const Center(child: Text('No notes yet. Tap + to add one!'))
          : ListView.builder(
        itemCount: controller.notesList.length,
        itemBuilder: (context, index) {
          final note = controller.notesList[index];
          return Card(
            margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
            child: ListTile(
              title: Text(note['title'] ?? 'No title'),
              subtitle: Text(
                note['content'] != null && note['content'].isNotEmpty
                    ? note['content'].length > 50
                    ? '${note['content'].substring(0, 50)}...'
                    : note['content']
                    : 'No content',
              ),
              leading: _buildMoodIcon(note['mood'] ?? 3),
              onTap: () => Get.toNamed(
                Routes.NOTESEDIT,
                arguments: note,
              ),
              trailing: Icon(Icons.arrow_forward),
            ),
          );
        },
      )),
    );
  }

  Widget _buildMoodIcon(int mood) {
    IconData icon;
    Color color;

    switch (mood) {
      case 1:
        icon = Icons.sentiment_very_dissatisfied;
        color = Colors.red;
        break;
      case 2:
        icon = Icons.sentiment_dissatisfied;
        color = Colors.orange;
        break;
      case 3:
        icon = Icons.sentiment_neutral;
        color = Colors.grey;
        break;
      case 4:
        icon = Icons.sentiment_satisfied;
        color = Colors.lightGreen;
        break;
      case 5:
        icon = Icons.sentiment_very_satisfied;
        color = Colors.green;
        break;
      default:
        icon = Icons.sentiment_neutral;
        color = Colors.grey;
    }

    return Icon(icon, color: color);
  }
}