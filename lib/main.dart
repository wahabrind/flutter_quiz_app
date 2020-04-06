import "package:flutter/material.dart";
import './quiz.dart';
import './result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State {
  var _questionIndex = 0;
  var _score = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _score=0;
    });
  }

  void _answerQuestion(int score) {
    _score += score;

    setState(() {
      _questionIndex = _questionIndex + 1;
    });
  }

  @override
  Widget build(BuildContext ctx) {
    var _questions = [
      {
        "questionText": "what\'s your name?",
        "answers": [
          {'text': 'green', 'score': 10},
          {'text': 'blue', 'score': 7},
          {'text': 'red', 'score': 4},
          {'text': 'purple', 'score': 1}
        ]
      },
      {
        "questionText": "what\'s your favorite animal?",
        "answers": [
          {'text': 'lion', 'score': 3},
          {'text': 'cat', 'score': 1},
          {'text': 'dog', 'score': 9},
          {'text': 'parrot', 'score': 1}
        ]
      },
      {
        "questionText": "what\'s your phone brand name?",
        "answers": [
          {'text': 'apple', 'score': 1},
          {'text': 'samsung', 'score': 2},
          {'text': 'oppo', 'score': 7},
          {'text': 'mi', 'score': 9}
        ]
      },
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Quiz App",
          ),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(_score, _resetQuiz),
      ),
    );
  }
}
