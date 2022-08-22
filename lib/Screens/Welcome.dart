import 'package:flutter/material.dart';
import 'package:quizz_app/Quiz.dart';
import 'package:quizz_app/Result.dart';
import 'package:quizz_app/Screens/CategoryScreen.dart';
import 'package:quizz_app/Screens/QuizScreen.dart';
import 'package:quizz_app/main.dart';

class Welcome extends StatefulWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  final _formKey = GlobalKey<FormState>();
  final myController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Welcome to Quiz App!")),
      body: Align(
        alignment: Alignment.center,
        child: Container(
          // margin: EdgeInsets.only(bottom: 1),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "Kindly, Enter your Name:",
                style: TextStyle(
                  fontSize: 18,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                  width: 300,
                  height: 250,
                  child: Form(
                    key: _formKey,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: TextFormField(
                            controller: myController,
                            validator: (value) {
                              if (value!.isNotEmpty && value.length <= 3) {
                                return " Name must be more than 3 characters!";
                              } else if (value.isEmpty) {
                                return "Please enter your name";
                              }
                              return null;
                            },
                            // cursorColor: Colors.amber,
                            maxLength: 20,
                            decoration: const InputDecoration(
                                hintText: "Enter your name",
                                border: OutlineInputBorder()),
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        TextButton(
                          style: ButtonStyle(),
                          onPressed: () {
                            if (!_formKey.currentState!.validate()) {
                              return;
                            } else {
                              // showDialog(
                              //     context: context,
                              //     builder: (context) {
                              //       return AlertDialog(
                              //         // Retrieve the text that the user has entered by using the
                              //         // TextEditingController.
                              //         content:
                              //             Text("Hello ${myController.text}"),
                              //       );
                              //     });

                              Navigator.of(context).pushAndRemoveUntil(
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          CategoryScreen(myController.text)),
                                  (Route<dynamic> route) => false);
                            }
                          },
                          child: Text(
                            'Log in',
                            style: TextStyle(fontSize: 18),
                          ),
                        ),
                      ],
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
