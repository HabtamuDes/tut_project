import 'dart:wasm';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var questionIndex = 0;

  void answerQuestion() {
    setState(() {
      questionIndex = questionIndex + 1;
    });

    print(questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'what\'s your faviorite color?',
      'what\'s  your faviorite animal?'
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Column(
          children: [
            Text(questions[questionIndex]),
            RaisedButton(child: Text("Answer 1"), onPressed: answerQuestion),
            RaisedButton(
              child: Text("Answer 2"),
              onPressed: () => print('answer 2 chosen'),
            ), //anonmes function is used here !
            RaisedButton(
              child: Text("Answer 3"),
              onPressed: () {
                print(
                    'Answer 3 Chosen'); // this anonymus function used to excute a function on onpressed action button
              },
            ),
          ],
        ),
      ),
    );
  }
}
