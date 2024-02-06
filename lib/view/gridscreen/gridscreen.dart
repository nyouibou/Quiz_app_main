// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:quiz_model/view/quizscreen/codingquizsc/codequizscreen.dart';
import 'package:quiz_model/view/quizscreen/flutterquiz/flutterquiz.dart';
import 'package:quiz_model/view/quizscreen/question_screen.dart';
import 'package:quiz_model/view/quizscreen/sciencequiz/sciencequiz.dart';

class Gridscreen extends StatefulWidget {
  const Gridscreen({super.key});

  @override
  State<Gridscreen> createState() => _GridscreenState();
}

class _GridscreenState extends State<Gridscreen> {
  int selectedindex = 0;
  var services = [
    "Science",
    "Flutter",
    "Code",
    "Sports",
  ];
  var images = [
    "assets/a1.png",
    "assets/a2.png",
    "assets/a3.png",
    "assets/a4.png",
  ];
  final pages = [
    ScienceQuiz_screen(),
    FlutterQuiz_screen(),
    CodeQuiz_screen(),
    Question_screen()
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: services.length,
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                selectedindex = 0;
              });
            },
            child: Card(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Image.asset(
                      images[index],
                      height: 150,
                      width: 200,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(20),
                    child: Text(
                      services[index],
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.black),
                    ),
                  ),
                ],
              ),
            ),
          );
        });
  }
}
