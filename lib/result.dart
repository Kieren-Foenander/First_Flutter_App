// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int score;
  final VoidCallback resetHandler;

  Result(this.score, this.resetHandler);

  String get getResultPhrase {
    var resultPhrase = "";
    if (score <= 30) {
      resultPhrase = "You are cool";
    } else if (score <= 60) {
      resultPhrase = "your are less cool";
    } else {
      resultPhrase = "you suck";
    }
    return resultPhrase;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            getResultPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          RaisedButton(
            child: const Text("Restart Quiz"),
            onPressed: resetHandler,
          )
        ],
      ),
    );
  }
}
