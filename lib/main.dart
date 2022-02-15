// ignore_for_file: prefer_const_literals_to_create_immutables, deprecated_member_use, prefer_const_constructors, dead_code

import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  // ignore: no_logic_in_create_state
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppSate();

    throw UnimplementedError();
  }
}

class _MyAppSate extends State<MyApp> {
  final _questions = const [
    {
      "questionText": "what's your favouriate color?",
      "answers": [
        {"text": "Black", "score": 10},
        {"text": "Red", "score": 20},
        {"text": "Blue", "score": 30},
        {"text": "White", "score": 40},
      ],
    },
    {
      "questionText": "what's your favourite animal",
      "answers": [
        {"text": "rabbit", "score": 10},
        {"text": "snake", "score": 20},
        {"text": "dog", "score": 30},
        {"text": "cat", "score": 40},
      ],
    },
    {
      "questionText": "who is your favourite Instructor",
      "answers": [
        {"text": "Max", "score": 10},
        {"text": "Tim", "score": 20},
        {"text": "Kieren", "score": 30},
        {"text": "Kieren", "score": 40},
      ],
    },
  ];

  var _questionIndex = 0;
  var _totalScore = 0;

  void _answerQuestion(int score) {
    _totalScore += score;

    setState(() {
      _questionIndex++;
    });
    print(_questionIndex);
    if (_questionIndex < _questions.length) {
      print("there are no more questions");
    }
  }

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("My first App"),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions)
            : Result(_totalScore, _resetQuiz),
      ),
    );

    throw UnimplementedError();
  }
}
