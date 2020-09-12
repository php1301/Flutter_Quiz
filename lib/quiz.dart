import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final int questionIndex;
  final List<Map<String, Object>>
      questionsAndAnswers; //string keys and object values
  final Function answerQuestion;
  Quiz(
      {@required this.questionsAndAnswers,
      @required this.answerQuestion,
      @required this.questionIndex});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(questionsAndAnswers[questionIndex]['question']),
        ...(questionsAndAnswers[questionIndex]['answers']
                as List<Map<String, Object>>)
            .map((e) => Answer(() => answerQuestion(e['score']), e['text']))
            .toList()
      ],
    );
  }
}
