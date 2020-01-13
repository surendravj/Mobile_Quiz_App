import 'package:flutter/material.dart';
import './questions.dart';

class Result extends StatelessWidget {
  final int totalScore;
  final Function resetQuiz;
  Result(this.totalScore, this.resetQuiz);

  // getter function
  String get resultParse {
    var resultText = 'U did it';
    if (totalScore <= 20) {
      resultText = "U have to pracice more";
    } else if (totalScore > 25) {
      resultText = 'U r wonderfull guy';
    } else {
      resultText = 'Nothing to say';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        margin: EdgeInsets.all(30),
        child: Column(children: <Widget>[
          Center(child: Question(resultParse)),
          Center(child: Question(totalScore.toString())),
          Center(
            child: FlatButton(
              child: Text('Reset'),
              textColor: Colors.white,
              onPressed: resetQuiz,
              color: Colors.blue,
            ),
          )
        ]));
  }
}
