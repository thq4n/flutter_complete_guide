import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/answer.dart';
import 'package:flutter_complete_guide/question.dart';

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
  final questions = const [
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
    print("Answer 1");
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My first app"),
        ),
        body: _questionIndex < questions.length
            ? Column(
                children: <Widget>[
                  Question(questions
                      .elementAt(_questionIndex)['questionText']
                      .toString()),
                  ...(questions[_questionIndex]["answers"] as List<String>)
                      .map((answer) {
                    return Answer(_answerQuestion, answer);
                  }).toList(),
                ],
              )
            : Center(
                child: ElevatedButton(
                  onPressed: () {
                    _questionIndex = -1;
                    _answerQuestion();
                  },
                  child: Text("Try again!"),
                ),
              ),
      ),
    );
  }
}
