import 'package:flutter/material.dart';
import './questions.dart';
import './answers.dart';

class quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionanswered;
  final answers;

  quiz(
      {@required this.questions,
      @required this.answers,
      @required this.questionanswered});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        question(questions[questionanswered]['questiontext']),
        ...(questions[questionanswered]['answers'] as List<Map<String, Object>>)
            .map((answer) {
          return Answer(
              () => answers(answer['score']), answer['text'] as String);
        }).toList(),
      ],
    );
  }
}
