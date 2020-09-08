import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function answerHandler;
  final String answer;
  Answer(this.answerHandler, this.answer);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        textColor: Colors.white,
        color: Colors.blue,
        child: Text(answer),
        onPressed: answerHandler,
      ),
    );
  }
}

// class AnswerState extends State<Answer> {}
