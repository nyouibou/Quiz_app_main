// ignore_for_file: prefer_const_constructors, camel_case_types

import 'package:flutter/material.dart';
import 'package:quiz_model/utils/colorconst.dart';
import 'package:quiz_model/view/quizscreen/codingquizsc/codequizscreen.dart';

class Result_screen extends StatelessWidget {
  final int count;
  //const Result_screen({super.key});
  Result_screen({required this.count});

  @override
  Widget build(BuildContext context) {
    int totalQn = 10;
    double percentage = (count / totalQn) * 100;

    return Scaffold(
      backgroundColor: Color_const.mycustomblack,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Congrats!",
              style: TextStyle(fontSize: 25, color: Color_const.mycustomwhite),
            ),
            Text("${percentage.toStringAsFixed(0)}%score",
                style:
                    TextStyle(fontSize: 25, color: Color_const.mycustomgreen)),
            InkWell(
              onTap: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CodeQuiz_screen(),
                    ));
              },
              child: Container(
                height: 60,
                width: 210,
                decoration: BoxDecoration(
                    color: Color_const.mycustomorange,
                    borderRadius: BorderRadius.circular(30),
                    border:
                        Border.all(width: 5, color: Color_const.mycustomwhite)),
                child: Center(
                    child: Text(
                  "Restart",
                  style:
                      TextStyle(fontSize: 30, color: Color_const.mycustomwhite),
                )),
              ),
            )
          ],
        ),
      ),
    );
  }
}
