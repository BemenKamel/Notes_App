import 'package:flutter/material.dart';
import 'package:note_app/contant.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {super.key, required this.hint, this.maxlines = 1, this.onSaved});
  final String hint;
  final int maxlines;
  final void Function(String?)? onSaved;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved: onSaved,
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return 'field is required';
        } else {
          return null;
        }
      },
      cursorColor: KPColor,
      maxLines: maxlines,
      decoration: InputDecoration(
        hintText: hint,
        border: BuildBorder(),
        enabledBorder: BuildBorder(),
        focusedBorder: BuildBorder(KPColor),
      ),
    );
  }

  OutlineInputBorder BuildBorder([Color]) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(
        8,
      ),
      borderSide: BorderSide(
        color: Color ?? Colors.white,
      ),
    );
  }
}
