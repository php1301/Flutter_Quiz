import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  void _answerQuestion() {
    setState(() {
      _questionIndex += 1;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext ctx) {
    const questions = ['Question 1', 'Question 2'];
    questions.add('2131');
    var questionsAndAnswers = [
      {
        'question': 'Color ?',
        'answers': ['Black', 'Blue', 'Green', 'Yellow'],
      },
      {
        'question': 'What\'s your favorite Animal ?',
        'answers': ['Bear', 'Bird', 'Dog', 'Cat'],
      },
      {
        'question': 'What\'s your favorite Grade ?',
        'answers': ['A', 'B', 'C', 'D'],
      },
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Hello Flutter'),
        ),
        body: Column(
          children: [
            Question(questionsAndAnswers[_questionIndex]['question']),
            ...(questionsAndAnswers[_questionIndex]['answers'] as List<String>)
                .map((e) => Answer(_answerQuestion, e))
                .toList()
          ],
        ),
      ), //ctrl+space
    );
  }
}
