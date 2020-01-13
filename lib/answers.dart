import 'package:flutter/material.dart';

class Answers extends StatelessWidget {
  final Function event;
  final String answers;
  Answers(this.event, this.answers);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: RaisedButton(
        color: Colors.lightBlueAccent,
        textColor: Colors.black87,
        child: Text(answers),
        onPressed: event,
      ),
    );
  }
}
