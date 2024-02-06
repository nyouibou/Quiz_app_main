// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:quiz_model/view/homescreen/homescreen.dart';

void main() {
  runApp(Quiz());
}

class Quiz extends StatelessWidget {
  const Quiz({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Homescreen(),
    );
  }
}
