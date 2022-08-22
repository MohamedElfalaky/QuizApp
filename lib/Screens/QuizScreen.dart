import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:quizz_app/Quiz.dart';
import 'package:quizz_app/Result.dart';
import 'package:quizz_app/Screens/Welcome.dart';
import '../QLists.dart';

class QuizScreen extends StatefulWidget {
  final usrName;
  final lst;
  QuizScreen(this.usrName, this.lst);
  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  var qIndex = 0;
  var totalScore = 0;

  void _answerQuestion(int score) {
    totalScore += score;
    setState(() {
      if (qIndex < widget.lst.length) qIndex++;
    });
  }

  void _resetQuiz() {
    qIndex = 0;
    totalScore = 0;
    Navigator.of(context).pushAndRemoveUntil(
        MaterialPageRoute(builder: (context) => Welcome()),
        (Route<dynamic> route) => false);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Answer the quiz"),
        //  automaticallyImplyLeading: false
      ),
      body: qIndex < widget.lst.length
          ? Quiz(
              ansQuestion: _answerQuestion,
              qList: widget.lst,
              quesIndex: qIndex,
            )
          : Result(
              qIndex,
              _resetQuiz,
              totalScore,
              widget.usrName,
            ),
    );
  }
}
