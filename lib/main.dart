import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': '1.What has to be broken before you can use it?',
      'answers': [
        {'text': 'Banana', 'score': 0},
        {'text': 'Bulb', 'score': 0},
        {'text': 'Glass', 'score': 0},
        {'text': 'Egg', 'score': 10}
      ]
    },
    {
      'questionText':
          '2.I’m tall when I’m young, and I’m short when I’m old. What am I?',
      'answers': [
        {'text': 'Cat', 'score': 0},
        {'text': 'Kid', 'score': 0},
        {'text': 'Candle', 'score': 10},
        {'text': 'Car', 'score': 20}
      ]
    },
    {
      'questionText': '3.What month of the year has 28 days?',
      'answers': [
        {'text': 'January', 'score': 0},
        {'text': 'April', 'score': 0},
        {'text': 'Marh', 'score': 0},
        {'text': 'All of them', 'score': 10}
      ]
    },
    {
      'questionText': '4.What is full of holes but still holds water?',
      'answers': [
        {'text': 'Bottle', 'score': 0},
        {'text': 'Bread', 'score': 0},
        {'text': 'Spong', 'score': 10},
        {'text': 'Pool', 'score': 0}
      ]
    },
    {
      'questionText': '5.What question can you never answer yes to?',
      'answers': [
        {'text': 'are you eating?', 'score': 0},
        {'text': 'Are you asleep yet?', 'score': 10},
        {'text': 'Are you old?', 'score': 0},
        {'text': 'All of them', 'score': 0}
      ]
    },
    {
      'questionText': '6.What is always in front of you but can’t be seen?',
      'answers': [
        {'text': 'The Future', 'score': 10},
        {'text': 'Life & Death', 'score': 0},
        {'text': 'Your Nose', 'score': 0},
        {'text': 'The past', 'score': 0}
      ]
    },
    {
      'questionText':
          '7.What can you break, even if you never pick it up or touch it?',
      'answers': [
        {'text': 'Glass', 'score': 0},
        {'text': 'Beer Bottel', 'score': 0},
        {'text': 'A Promise', 'score': 10},
        {'text': 'Stick', 'score': 0}
      ]
    },
    {
      'questionText': '8.What goes up but never comes down?',
      'answers': [
        {'text': 'Air', 'score': 0},
        {'text': 'Age', 'score': 10},
        {'text': 'Airplane', 'score': 0},
        {'text': 'Rocket', 'score': 0}
      ]
    },
    {
      'questionText': '9.What gets wet while drying?',
      'answers': [
        {'text': 'Bread', 'score': 0},
        {'text': 'Towel', 'score': 10},
        {'text': 'Cloth', 'score': 0},
        {'text': 'All of them', 'score': 0}
      ]
    },
    {
      'questionText':
          '10.I have branches, but no fruit, trunk or leaves. What am I?',
      'answers': [
        {'text': 'a Tree', 'score': 0},
        {'text': 'Phone book', 'score': 0},
        {'text': 'a Bank', 'score': 10},
        {'text': 'cloud', 'score': 0}
      ]
    },
  ];
  var _questionIndex = 0;
  var _totalScore = 0;
  void _restQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex = _questionIndex + 1;
    });

    print(_questionIndex);
    if (_questionIndex < _questions.length) {
      print('we have more questions');
    }
  }

  @override
  Widget build(BuildContext context) {
    //compile time constant means run time constant

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Riddle'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(_totalScore, _restQuiz),
      ),
    );
  }
}
