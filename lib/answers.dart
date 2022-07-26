// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback stateHandler;
  final String answerText;
  // ignore: prefer_const_constructors_in_immutables
  Answer(this.stateHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: stateHandler,
        child: Text(answerText),
      ),
    );
  }
}
