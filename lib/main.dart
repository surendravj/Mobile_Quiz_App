import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var questions = [
    {
      'Question': 'What is your favourite programming language',
      'answers': [
        {'text': 'java', 'score': 10},
        {'text': 'python', 'score': 10},
        {'text': 'c++', 'score': 10},
        {'text': 'JavaScript', 'score': 10}
      ]
    },
    {
      'Question': 'What is your favourite IDE',
      'answers': [
        {'text': 'Vscode', 'score': 10},
        {'text': 'Atom', 'score': 8},
        {'text': 'Andriod-Stdio', 'score': 7},
        {'text': 'Sublime', 'score': 5}
      ]
    },
    {
      'Question': 'What is your favourite field',
      'answers': [
        {'text': 'Web', 'score': 10},
        {'text': 'Mobile', 'score': 10},
        {'text': 'Data science', 'score': 10},
        {'text': 'ML', 'score': 10}
      ]
    }
  ];

  var index = 0;
  var totalScore = 0;

  void resetQuiz() {
    setState(() {
      index = totalScore = 0;
    });
  }

  void answerQuestion(int score) {
    setState(() {
      if (index < questions.length) {
        totalScore += score;
        index++;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text('This is my first app'),
            ),
            body: index < questions.length
                ? Quiz(questions, index, answerQuestion)
                : Result(totalScore,resetQuiz)));
  }
}
