import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/answer.dart';
import 'package:flutter_complete_guide/question.dart';
import 'package:flutter_complete_guide/result.dart';

import 'quiz.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      "questionText": "What's your favorite color?",
      "answers": ["Black", "Red", "Screen", "White"],
    },
    {
      "questionText": "What's your favorite animal?",
      "answers": ["Dog", "Cat", "Snake", "Rabbit"],
    },
    {
      "questionText": "What's your favorite drink?",
      "answers": ["Cock", "Pepsi", "Sting", "7Up"],
    },
  ];

  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex++;
    });

    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My first app"),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                questions: _questions,
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
              )
            : Result(
                questionIndex: _questionIndex,
                answerQuestion: _answerQuestion,
              ),
      ),
    );
  }
}
