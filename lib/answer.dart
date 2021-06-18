import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHanlder;

  Answer(this.selectHanlder);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(primary: Colors.amber),
        onPressed: () => selectHanlder(),
        child: Text("Answer 1"),
      ),
    );
  }
}
