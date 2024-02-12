// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import "package:flutter/material.dart";
import "package:quiz_model/utils/colorconstant.dart";
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
        title: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Hi John',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 25),
            ),
            Text(
              'Lets make this day more productive',
              style:
                  TextStyle(color: Colorconstants.myCustomwhite, fontSize: 14),
            )
          ],
        ),
        backgroundColor: Colors.black,
        actions: [
          CircleAvatar(
            radius: 20,
            backgroundColor: Colors.white,
            child: Icon(
              Icons.person,
              color: Colors.black,
            ),
          ),
          SizedBox(width: 16),
        ],
      ),
      body: getBodyWidget(),
    );
  }

  getBodyWidget() {
    return Gridscreen();
  }
}
