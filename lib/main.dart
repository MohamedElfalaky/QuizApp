import 'package:flutter/material.dart';
import 'package:quizz_app/Quiz.dart';
import 'package:quizz_app/Result.dart';
import 'package:quizz_app/Screens/Welcome.dart';
import './Questions.dart';
import 'Answers.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Welcome(),
    );
  }
}
