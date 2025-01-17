import 'package:flutter/material.dart';
import 'package:note_app/views/widgets/custom_app_bar.dart';
import 'package:note_app/views/widgets/custom_text_field.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            CustomAppBar(
              title: 'Edit Note',
              icon: Icons.done,
            ),
            SizedBox(
              height: 15,
            ),
            CustomTextField(hint: 'title'),
            SizedBox(
              height: 10,
            ),
            CustomTextField(
              hint: 'content',
              maxlines: 5,
            )
          ],
        ),
      ),
    );
  }
}
