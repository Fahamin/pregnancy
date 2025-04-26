import 'package:get/get.dart';

import '../../../../db/database_helper.dart';

class NotesController extends GetxController {
  final DatabaseHelper _database = DatabaseHelper.instance;
  var isLoading = false.obs;
  var notesList = <Map<String, dynamic>>[].obs;
  var currentNote = <String, dynamic>{}.obs;


  @override
  void onInit() {
    super.onInit();
    loadNotes();
  }

  Future<void> loadNotes() async {
    isLoading(true);
    notesList.value = await _database.getAllNotes();
    isLoading(false);
  }

  Future<void> saveNote({
    required String date,
    String? title,
    String? content,
    int? mood,
  }) async {
    final note = {
      'date': date,
      'title': title ?? '',
      'content': content ?? '',
      'mood': mood ?? 3, // Default neutral mood
    };

    final existingNote = await _database.getNoteByDate(date);
    if (existingNote == null) {
      await _database.insertNote(note);
    } else {
      await _database.updateNote(note);
    }
    await loadNotes();
  }


  Future<Map<String, dynamic>> loadNoteByDate(String date) async {
    isLoading(true);
    try {
      final note = await _database.getNoteByDate(date);
      currentNote.value = note ?? {
        'date': date,
        'title': '',
        'content': '',
        'mood': 3,
      };
      return currentNote.value;
    } finally {
      isLoading(false);
    }
  }



}
