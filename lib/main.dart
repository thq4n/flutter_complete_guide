import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/question.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex++;
      if (_questionIndex > 1) {
        _questionIndex = 0;
      }
    });

    print(_questionIndex);
    print("Answer 1");
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      "What's your favorite color?",
      "What's your favorite animal?",
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My first app"),
        ),
        body: Column(
          children: <Widget>[
            Question(questions.elementAt(_questionIndex)),
            ElevatedButton(onPressed: _answerQuestion, child: Text("Answer 1")),
            ElevatedButton(
                onPressed: () => print("Anwser 2"), child: Text("Answer 2")),
            ElevatedButton(
                onPressed: () {
                  // ...build(context)
                  print("Answer 3");
                },
                child: Text("Answer 3")),
          ],
        ),
      ),
    );
  }
}
