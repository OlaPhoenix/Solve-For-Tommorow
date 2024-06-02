// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class AppTextfield extends StatelessWidget {
  final String hint;
  const AppTextfield({super.key, required this.hint});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(15),
        ),
        fillColor: Colors.grey.shade100,
        filled: true,
        hintText: hint,
        hintStyle: TextStyle(fontFamily: 'Font1'),
      ),
    );
  }
}
