import 'package:flutter/material.dart';

class result extends StatelessWidget {
  final int resultScore;

  result(this.resultScore);

  String get resultPhrase {
    String resultText;
    if (resultScore <= 8) {
      resultText = "You are awesome";
    } else if (resultScore <= 10) {
      resultText = "You are great person";
    } else {
      "you need to improve yourself";
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(resultPhrase),
    );
  }
}
