import 'package:ehs_lms/Student%20Portal/Screens/app_Screens/Navbar/bottomNav/bottomNav.dart';
import 'package:ehs_lms/Student%20Portal/widgets/header.dart';
import 'package:flutter/material.dart';

class FlipDrawer extends StatefulWidget {
  @override
  _FlipDrawerState createState() => _FlipDrawerState();
}

class _FlipDrawerState extends State<FlipDrawer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: BoxDecoration(
        gradient: RadialGradient(
          center: Alignment(-0.76, -0.8),
          radius: 0.4,
          colors: [
            Color(0xffffffff),
            Color(0xff6EB7C6),
          ],
          stops: <double>[0.0, 1.0],
        ),
      ),
      child: Column(
        children: [
          header(context),
          body(),
        ],
      ),
    ));
  }

  Widget body() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 5),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(
              vertical: MediaQuery.of(context).size.height * .02,
              horizontal: MediaQuery.of(context).size.width * .06,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30), topRight: Radius.circular(30)),
              color: Color(0xff558D98),
            ),
            child: Row(
              children: [
                Column(
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.home,
                          color: Colors.white,
                          size: 20,
                        ),
                        Text(
                          "Home",
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * .06,
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        Image.asset(
                          'assets/images/lms.png',
                          height: MediaQuery.of(context).size.height * .025,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "Learning Management System",
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
                color: Color(0xff81D3E3),
                borderRadius: BorderRadius.circular(20)),
            height: MediaQuery.of(context).size.height * 0.68,
            child: Column(
              children: [
                Container(
                  color: Color(0xff6EB7C6),
                  // width: MediaQuery.of(context).size.width * 1,
                  height: MediaQuery.of(context).size.height * 0.06,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            children: [
                              SizedBox(
                                width: 20,
                              ),
                              Image.asset(
                                'assets/images/lms.png',
                                color: Colors.white,
                                height:
                                    MediaQuery.of(context).size.height * 0.03,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                "Learning Management System",
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            children: [
                              SizedBox(
                                width: 10,
                              ),
                              Image.asset(
                                'assets/contentImages/flip.png',
                                color: Colors.white,
                                height:
                                    MediaQuery.of(context).size.height * 0.02,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text("Flip Class",
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.white,
                                  )),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                  color: Color(0xff81D3E3),
                  child: Column(
                    children: [
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                flip(context, 'assets/contentImages/flip.png',
                                    "Flip Class", "flipClass"),
                              ],
                            ),
                            Column(
                              children: [
                                IconButton(
                                  onPressed: () {
                                    Navigator.of(context).push(
                                        MaterialPageRoute(
                                            builder: (context) => BottomNav(
                                                currentPage: "flipClass")));
                                  },
                                  icon: Icon(
                                    Icons.menu,
                                    color: Colors.white,
                                    size: 50,
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
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
                          "Discussion", "discussion"),
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
                          "Assesment", "assesment"),
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
                      flip(context, 'assets/contentImages/qmark.png', "Quizzes",
                          "quizzes"),
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
                          "Resourses", "resourses"),
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
                          "Live Lecture", "liveLecture"),
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
    );
  }
}

Widget flip(BuildContext context, String img, String txt, String goTo) {
  return GestureDetector(
    onTap: () {
      Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => BottomNav(currentPage: goTo)));
    },
    child: Row(
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
    ),
  );
}
