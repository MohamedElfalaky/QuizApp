import 'package:flutter/material.dart';

class Answers extends StatelessWidget {
  final Function answerHandler;
  final String answerText;
  Answers({required this.answerHandler, required this.answerText});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(7),
      width: 100,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(primary: Colors.amber),
        child: Text(answerText),
        onPressed: () => answerHandler(),
      ),
    );
  }
}
