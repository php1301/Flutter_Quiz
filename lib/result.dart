import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetQuiz;
  Result({this.resultScore, this.resetQuiz});
  String get resultPhrase {
    String resultText = 'You did It!';
    if (resultScore > 25) {
      resultText = 'Great choice';
    } else {
      resultText = 'Bad choice';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: [
        Text(
          resultPhrase,
          style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        FlatButton(
          child: Text(
            'Restart Quiz',
            style: TextStyle(color: Colors.blueAccent),
          ),
          onPressed: resetQuiz,
        )
      ],
    ));
  }
}
