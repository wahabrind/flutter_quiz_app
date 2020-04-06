import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List questions;
  final int questionIndex;
  final Function answerQuestion;
  Quiz({this.questions, this.questionIndex, this.answerQuestion});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Question(
          questions[questionIndex]['questionText'],
        ),
        ...(questions[questionIndex]['answers']as List<Map>).map((answer) {
          return Answer(answer['text'], ()=>answerQuestion(answer['score']));
        }).toList()
      ],
    );
  } 
}
