import 'package:ehs_lms/Student%20Portal/widgets/header.dart';
import 'package:flutter/material.dart';

class FlipDrawer extends StatefulWidget {
  const FlipDrawer({Key? key}) : super(key: key);

  @override
  _FlipDrawerState createState() => _FlipDrawerState();
}

class _FlipDrawerState extends State<FlipDrawer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      child: Column(
        children: [
          header(context),
          Container(
            padding: EdgeInsets.all(6),
            decoration: BoxDecoration(
                color: Color(0xff81D3E3),
                borderRadius: BorderRadius.circular(20)),
            height: MediaQuery.of(context).size.height * 0.8,
            child: Column(
              children: [
                Container(
                  color: Color(0xff6EB7C6),
                  width: MediaQuery.of(context).size.width * 1,
                  height: MediaQuery.of(context).size.height * 0.06,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(
                        Icons.flourescent,
                        size: 40,
                        color: Colors.white,
                      ),
                      Text(
                        "Learning Management System",
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.white,
                        ),
                      ),
                      Icon(
                        Icons.library_add,
                        size: 40,
                        color: Colors.white,
                      ),
                      Text("Flip Class",
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                          )),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  color: Color(0xff81D3E3),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Column(
                            children: [
                              flip(context, 'assets/contentImages/flip.png',
                                  "Flip Class"),
                            ],
                          ),
                          SizedBox(
                            width: 180,
                          ),
                          Column(
                            children: [
                              Icon(
                                Icons.menu,
                                color: Colors.white,
                                size: 50,
                              )
                            ],
                          )
                        ],
                      ),
                      Divider(
                        color: Colors.white,
                        thickness: 1,
                        indent: 42,
                        endIndent: 50,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      flip(context, 'assets/contentImages/discussion.png',
                          "Discussion"),
                      SizedBox(
                        height: 5,
                      ),
                      Divider(
                        color: Colors.white,
                        thickness: 1,
                        indent: 42,
                        endIndent: 50,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      flip(context, 'assets/contentImages/assign.png',
                          "Assesment"),
                      SizedBox(
                        height: 5,
                      ),
                      Divider(
                        color: Colors.white,
                        thickness: 1,
                        indent: 42,
                        endIndent: 50,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      flip(
                          context, 'assets/contentImages/qmark.png', "Quizzes"),
                      SizedBox(
                        height: 5,
                      ),
                      Divider(
                        color: Colors.white,
                        thickness: 1,
                        indent: 42,
                        endIndent: 50,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      flip(context, 'assets/contentImages/download.png',
                          "Resourses"),
                      SizedBox(
                        height: 5,
                      ),
                      Divider(
                        color: Colors.white,
                        thickness: 1,
                        indent: 42,
                        endIndent: 50,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      flip(context, 'assets/contentImages/live.png',
                          "Live Lecture"),
                      SizedBox(
                        height: 5,
                      ),
                      Divider(
                        color: Colors.white,
                        thickness: 1,
                        indent: 42,
                        endIndent: 50,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    ));
  }
}

Widget flip(BuildContext context, String img, String txt) {
  return Row(
    children: [
      Image.asset(
        img,
        height: MediaQuery.of(context).size.height * 0.05,
        width: MediaQuery.of(context).size.width * 0.08,
      ),
      SizedBox(
        width: 15,
      ),
      Text(txt,
          style: TextStyle(
            fontSize: 23,
            color: Colors.white,
          ))
    ],
  );
}
