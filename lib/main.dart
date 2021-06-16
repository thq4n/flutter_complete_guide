import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var questionIndex = 0;

  void answerQuestion() {
    setState(() {
      questionIndex++;
      if (questionIndex > 1) {
        questionIndex = 0;
      }
    });

    print(questionIndex);
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
            Text(questions.elementAt(questionIndex)),
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
