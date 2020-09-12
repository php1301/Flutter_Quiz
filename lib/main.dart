import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  // static const

  final _questionsAndAnswers = const [
    {
      'question': 'Color ?',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Blue', 'score': 15},
        {'text': 'Green', 'score': 20},
        {'text': 'Yellow', 'score': 25},
      ],
    },
    {
      'question': 'What\'s your favorite Animal ?',
      'answers': [
        {'text': 'Bear', 'score': 3},
        {'text': 'Bird', 'score': 4},
        {'text': 'Dog', 'score': 5},
        {'text': 'Cat', 'score': 6},
      ],
    },
    {
      'question': 'What\'s your favorite Grade ?',
      'answers': [
        {'text': 'A', 'score': 1},
        {'text': 'B', 'score': 1},
        {'text': 'C', 'score': 1},
        {'text': 'D', 'score': 1},
      ],
    },
  ];
  var _questionIndex = 0;
  var _totalScore = 0;
  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex += 1;
    });
    print(_questionIndex);
    if (_questionIndex < _questionsAndAnswers.length) {
      print('we have more questions');
    } else {
      print('Nothing more');
    }
  }

  @override
  Widget build(BuildContext ctx) {
    // const questions = ['Question 1', 'Question 2'];
    // questions.add('2131');
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('Hello Flutter'),
      ),
      body: _questionIndex < _questionsAndAnswers.length
          ? Quiz(
              questionIndex: _questionIndex,
              answerQuestion: _answerQuestion,
              questionsAndAnswers: _questionsAndAnswers,
            )
          : Result(
              resultScore: _totalScore,
              resetQuiz: _resetQuiz,
            ), //ctrl+space
    ));
  }
}
