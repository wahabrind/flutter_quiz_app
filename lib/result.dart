import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int score;
  final Function resetQuiz;
  Result(this.score, this.resetQuiz);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        children: [
          Text(
            'Your Score is ' + score.toString(),
            style: TextStyle(
              fontSize: 36,
              color: Colors.black,
            ),
            textAlign: TextAlign.center,
          ),
          RaisedButton(
            child: Text("Reset Quiz"),
            onPressed: resetQuiz,
            padding: EdgeInsets.all(10),

          )
        ],
      ),
    );
  }
}
