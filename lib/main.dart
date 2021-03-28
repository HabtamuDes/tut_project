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
  final questions = const [
    {
      'questionText': 'what\'s your faviorite color?',
      'answers': ['Red', 'Green', 'Blue', 'Silver']
    },
    {
      'questionText': 'what\'s  your faviorite animal?',
      'answers': ['Cat', 'Dog', 'Elephant', 'Pigieon']
    },
    {
      'questionText': 'what\'s  your faviorite Food?',
      'answers': ['Injera', 'SHERO', 'Sega', 'Dench']
    },
  ];
  var questionIndex = 0;

  void answerQuestion() {
    setState(() {
      questionIndex = questionIndex + 1;
    });

    print(questionIndex);
    if (questionIndex < questions.length) {
      print('we have more questions');
    }
  }

  @override
  Widget build(BuildContext context) {
    //compile time constant means run time constant

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Column(
          children: [
            Question(questions[questionIndex]['questionText']),
            ...(questions[questionIndex]['answers'] as List<String>)
                .map((answer) {
              return Answer(answerQuestion, answer);
            }).toList()
          ],
        ),
      ),
    );
  }
}
