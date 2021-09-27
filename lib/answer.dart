import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Answer extends StatelessWidget {
  final String answerText;
  final Function() x;

  Answer(this.x, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.blue,
        textColor: Colors.white,
        child: Text(answerText, style: const TextStyle(fontSize: 18)),
        onPressed:x,
      ),
    );
  }
}
