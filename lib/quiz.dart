import 'package:flutter/material.dart';
import './answers.dart';
import './questions.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int index;
  final Function answerQuestion;
  Quiz(this.questions, this.index, this.answerQuestion);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Question(
          questions[index]['Question'],
        ),
        ...(questions[index]['answers'] as List<Map<String,Object>>)
            .map((answer) {
          return Answers(() => answerQuestion(answer['score']), answer['text']);
        }).toList()
      ],
    );
  }
}
