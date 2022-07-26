import 'package:flutter/material.dart';

// ignore: camel_case_types
class question extends StatelessWidget {
  final questiontext;
  const question(this.questiontext);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: (Text(
        questiontext,
        style: TextStyle(fontSize: 28),
        textAlign: TextAlign.center,
      )),
    );
  }
}
