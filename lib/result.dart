import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resthandeler;
  Result(this.resultScore, this.resthandeler);

  // ignore: missing_return
  String get resultPrhase {
    String resultText;
    if (resultScore <= 10) {
      resultText = 'You Need To Work Hard';
    } else if (resultScore <= 25) {
      resultText = 'Still Work hard';
    } else if (resultScore <= 30) {
      resultText = 'You are better from last Time!';
    } else if (resultScore <= 50) {
      resultText = 'GOOD JOB';
    } else if (resultScore <= 70) {
      resultText = 'Great !!!';
    } else if (resultScore <= 100) {
      resultText = 'Excellent JOB';
    } else {
      return resultText;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPrhase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          TextButton(
            onPressed: resthandeler,
            child: Text('Restart Quiz!'),
            style: TextButton.styleFrom(primary: Colors.blueAccent),
          )
        ],
      ),
    );
  }
}
