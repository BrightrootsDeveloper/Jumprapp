import 'package:flutter/material.dart';

class TextInputField extends StatefulWidget {
  final hintText;
  final controller;
  const TextInputField({Key? key, this.hintText, this.controller}) : super(key: key);

  @override
  State<TextInputField> createState() => _TextInputFieldState();
}

class _TextInputFieldState extends State<TextInputField> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: widget.controller,
      decoration: InputDecoration(
          focusedBorder: OutlineInputBorder(
              borderSide:
              BorderSide(width: 3, color: Colors.grey.withOpacity(0.5))),
          hintText: widget.hintText,
          border: OutlineInputBorder(
              borderSide:
              BorderSide(width: 3, color: Colors.grey.withOpacity(0.5)))),
    );
  }
}
