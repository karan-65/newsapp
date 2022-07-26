// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:newsapp/result.dart';
import './questions.dart';
import './answers.dart';
import './quiz.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _questionanswered = 0;
  var _totalscore = 0;
  VoidCallback _answers(int score) {
    _totalscore = _totalscore + score;
    setState(() {
      _questionanswered = _questionanswered + 1;
    });
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    var _questions = [
      {
        'questiontext': 'What is your faviourite colour?',
        'answers': [
          {'text': 'red', 'score': 2},
          {'text': 'green', 'score': 3},
          {'text': 'yellow', 'score': 4},
          {'text': 'black', 'score': 5},
        ],
      },
      {
        'questiontext': 'What is your faviourite animal?',
        'answers': [
          {'text': 'dog', 'score': 2},
          {'text': 'cat', 'score': 3},
          {'text': 'lion', 'score': 4},
          {'text': 'tiger', 'score': 5},
        ],
      },
    ];

    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(title: Text("Quiz App")),
          body: _questionanswered < _questions.length
              ? quiz(
                  answers: _answers,
                  questionanswered: _questionanswered,
                  questions: _questions,
                )
              : result(_totalscore)),
    );
  }
}
