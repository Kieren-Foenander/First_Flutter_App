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
      "answers": ["Black", "Red", "Blue", "White"],
    },
    {
      "questionText": "what's your favourite animal",
      "answers": ["rabbit", "snake", "dog", "cat"],
    },
    {
      "questionText": "who is your favourite Instructor",
      "answers": ["Max", "Tim", "Kieren", "Kieren"]
    },
  ];

  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex++;
    });
    print(_questionIndex);
    if (_questionIndex < _questions.length) {
      print("there are no more questions");
    }
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
            : Result(),
      ),
    );

    throw UnimplementedError();
  }
}
