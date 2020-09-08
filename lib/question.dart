import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  // String questionText;
  final String questionText;
  Question(
      this.questionText); // Arg truyen vao Khoi tao va gan data cho question trong this
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
        child: Text(
      questionText,
      style: TextStyle(fontSize: 28),
      textAlign: TextAlign.center,
    ));
  }
}
