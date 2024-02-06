// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import "dart:html";

import "package:flutter/material.dart";
import "package:quiz_model/view/gridscreen/gridscreen.dart";

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text(
          'My Quiz',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
        backgroundColor: Colors.blue,
      ),
      body: getBodyWidget(),
    );
  }

  getBodyWidget() {
    return Gridscreen();
  }
}
