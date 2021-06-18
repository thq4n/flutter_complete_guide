import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int totalScore;

  Result({Key? key, required this.totalScore}) : super(key: key);

  String get resultPharse {
    var resultText = "You did it!";
    if (totalScore <= 8) {
      resultText = "You'r awesome!";
    } else if (totalScore <= 9) {
      resultText = "Pretty likeable!";
    } else {
      resultText = "UNBELIEVABLE!!!!!";
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        resultPharse,
        style: TextStyle(
          fontSize: 36,
          fontWeight: FontWeight.bold,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
