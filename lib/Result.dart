import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  int qIndx;
  final Function resetHandler;
  final int resScore;
  final usrnm;
  Result(this.qIndx, this.resetHandler, this.resScore, this.usrnm);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text("Thanks "),
              Text(
                '$usrnm ',
                style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 56, 105, 242)),
              ),
              Text("for answering this test")
            ],
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(" No more Questions! your score is "),
              Text(
                "($resScore)",
                style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 56, 105, 242)),
              )
            ],
          ),
          SizedBox(
            height: 30,
          ),
          ElevatedButton(
              onPressed: (() {
                resetHandler();
              }),
              child: Text("Reset the test"))
        ],
      ),
    );
  }
}
