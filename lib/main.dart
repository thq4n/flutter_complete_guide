import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  void answerQuestion() {
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
            Text("The question!"),
            ElevatedButton(onPressed: answerQuestion, child: Text("Answer 1")),
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
