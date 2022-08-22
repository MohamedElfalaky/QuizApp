import 'package:flutter/material.dart';
import 'package:quizz_app/Answers.dart';
import 'package:quizz_app/Questions.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> qList;
  final int quesIndex;
  final Function ansQuestion;
  Quiz(
      {required this.quesIndex,
      required this.ansQuestion,
      required this.qList});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Questions(qList[quesIndex]['questionText'] as String),
            ...(qList[quesIndex]['answers'] as List).map((e) {
              return Answers(
                answerHandler: () => ansQuestion(e['score']),
                answerText: e['text'] as String,
              );
            }).toList()
          ],
        ));
  }
}
