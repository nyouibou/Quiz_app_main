// ignore_for_file: camel_case_types, prefer_const_constructors, prefer_const_literals_to_create_immutables, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:quiz_model/utils/colorconst.dart';
import 'package:quiz_model/utils/questions_db.dart';
import 'package:quiz_model/view/resultscreen/result.dart';

class Question_screen extends StatefulWidget {
  const Question_screen({super.key});

  @override
  State<Question_screen> createState() => _Question_screenState();
}

class _Question_screenState extends State<Question_screen> {
  Qustions_db questionobject = Qustions_db();
  int questionindex = 0;
  int count = 0;

  int? selectedindex;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color_const.mycustomblack,
      appBar: AppBar(
        backgroundColor: Color_const.mycustomblack,
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "${questionindex + 1}/${questionobject.sportsQuizData.length}",
              style: TextStyle(color: Color_const.mycustomblue),
            ),
          )
        ],
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: 250,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color_const.mycustomgrey),
                  child: Padding(
                    padding: const EdgeInsets.all(50.0),
                    child: Text(
                      questionobject.sportsQuizData[questionindex]["question"],
                      style: TextStyle(
                        color: Color_const.mycustomwhite,
                        fontSize: 18,
                      ),
                      textAlign: TextAlign.justify,
                    ),
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                ListView.separated(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) => InkWell(
                          onTap: () {
                            selectedindex = index;
                            if (selectedindex ==
                                questionobject.sportsQuizData[questionindex]
                                    ["answer"]) {
                              print(count);
                            }
                            //print(selectedindex);

                            setState(() {});
                          },
                          child: Container(
                            height: 50,
                            width: double.infinity,
                            decoration: BoxDecoration(
                                color: selectedanswer(index),
                                borderRadius: BorderRadius.circular(15),
                                border: Border.all(
                                    color: Color_const.mycustomgrey)),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    questionobject.sportsQuizData[questionindex]
                                        ["options"][index],
                                    style: TextStyle(
                                        color: Color_const.mycustomwhite,
                                        fontSize: 18),
                                  ),
                                  CircleAvatar(
                                    radius: 13,
                                    child: CircleAvatar(
                                      radius: 10,
                                      backgroundColor:
                                          Color_const.mycustomblack,
                                      child: answer_icons(index),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                    separatorBuilder: (context, index) => SizedBox(
                          height: 25,
                        ),
                    itemCount: 4),
                SizedBox(
                  height: 60,
                ),
                InkWell(
                  onTap: () {
                    if (selectedindex != null &&
                        selectedindex ==
                            questionobject.sportsQuizData[questionindex]
                                ["answer"]) {
                      count++;
                    }

                    selectedindex = null;
                    if (questionindex <
                        questionobject.sportsQuizData.length - 1) {
                      questionindex++;

                      setState(() {});
                    } else {
                      print("correct answer:$count");
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Result_screen(
                                    count: count,
                                  )));
                    }
                  },
                  child: Container(
                    height: 50,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Color_const.mycustomblue,
                        borderRadius: BorderRadius.circular(15)),
                    child: Center(
                        child: Text(
                      "Next",
                      style: TextStyle(color: Color_const.mycustomwhite),
                    )),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

//answer check
  Color selectedanswer(int index) {
    if (selectedindex != null &&
        index == questionobject.sportsQuizData[questionindex]["answer"]) {
      return Color_const.mycustomgreen;
    }
    if (selectedindex == index) {
      if (selectedindex ==
          questionobject.sportsQuizData[questionindex]["answer"]) {
        return Color_const.mycustomgreen;
      } else {
        return Color_const.mycustomred;
      }
    } else {
      return Color_const.mycustomgrey;
    }
  }

  //check mark

  answer_icons(int index) {
    if (selectedindex == index) {
      if (selectedindex ==
          questionobject.sportsQuizData[questionindex]["answer"]) {
        return Icon(
          Icons.done,
          size: 20,
          color: Color_const.mycustomwhite,
        );
      } else {
        return Icon(
          Icons.close,
          size: 20,
          color: Color_const.mycustomwhite,
        );
      }
    } else {
      SizedBox();
    }
  }
}
