import 'package:flutter/material.dart';
import 'package:flutter_covid/constants/const.dart';

class ReusableTextField extends StatelessWidget {
  final controller;

  ReusableTextField({this.controller});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      style: TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.bold,
      ),
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white,
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
        ),
        isDense: true,
        contentPadding: EdgeInsets.all(10),
      ),
      cursorColor: color,
    );
  }
}
