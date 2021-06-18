import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int questionIndex;
  final Function answerQuestion;

  Result({Key? key, required this.questionIndex, required this.answerQuestion})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () {
          answerQuestion();
        },
        child: Text("You did it!"),
      ),
    );
  }
}
