import 'package:flutter/material.dart';
import 'package:quizz_app/Screens/QuizScreen.dart';
import '../QLists.dart';

class CategoryScreen extends StatelessWidget {
  final usrname;
  CategoryScreen(this.usrname);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Welcome to Quiz App!")),
        body: Container(
          alignment: Alignment.center,
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              InkWell(
                  onTap: () {
                    Navigator.of(context).pushAndRemoveUntil(
                        MaterialPageRoute(
                            builder: (context) =>
                                QuizScreen(usrname, QuestionList.quesList3)),
                        (Route<dynamic> route) => false);
                  },
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.28,
                    width: double.infinity,
                    decoration:
                        BoxDecoration(color: Color.fromARGB(255, 231, 157, 38)),
                    child: Center(
                        child: Text(
                      "اختبار تاريخي",
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    )),
                  )),
              InkWell(
                  onTap: () {
                    Navigator.of(context).pushAndRemoveUntil(
                        MaterialPageRoute(
                            builder: (context) =>
                                QuizScreen(usrname, QuestionList.quesList1)),
                        (Route<dynamic> route) => false);
                  },
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.28,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 188, 186, 181)),
                    child: Center(
                        child: Text("اختبار رياضي",
                            style: TextStyle(
                                fontSize: 30, fontWeight: FontWeight.bold))),
                  )),
              InkWell(
                  onTap: () {
                    Navigator.of(context).pushAndRemoveUntil(
                        MaterialPageRoute(
                            builder: (context) =>
                                QuizScreen(usrname, QuestionList.quesList2)),
                        (Route<dynamic> route) => false);
                  },
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.28,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 231, 154, 212)),
                    child: Center(
                        child: Text("اختبار ديني",
                            style: TextStyle(
                                fontSize: 30, fontWeight: FontWeight.bold))),
                  ))
            ],
          ),
        ));
  }
}
