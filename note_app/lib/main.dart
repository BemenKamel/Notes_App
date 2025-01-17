import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:note_app/contant.dart';
import 'package:note_app/views/notes_view.dart';

void main() async {
  await Hive.initFlutter();

  await Hive.openBox(KNoteBox);
  runApp(NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        fontFamily: 'assets/fonts/Poppins-Regular.ttf',
      ),
      home: NotesView(),
    );
  }
}
