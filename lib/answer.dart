import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String answerText;
  final Function handler;
  Answer(this.answerText,this.handler);


  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
      child: RaisedButton(
        color: Colors.blue,
        child: Text(answerText),
        onPressed: handler,
      ),
    );
  }
}
