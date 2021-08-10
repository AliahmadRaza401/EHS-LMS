import 'package:ehs_lms/Student%20Portal/Screens/app_Screens/Navbar/sideNav/flip_drawer_small.dart';
import 'package:ehs_lms/Student%20Portal/widgets/header.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ReportGrade extends StatefulWidget {
  ReportGrade({Key? key}) : super(key: key);

  @override
  _ReportGradeState createState() => _ReportGradeState();
}

class _ReportGradeState extends State<ReportGrade> {
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
            Row(
              children: [
                header(context),
              ],
            ),
            body(),
          ],
        ),
      ),
    );
  }

  Widget body() {
    return Container(
      width: MediaQuery.of(context).size.width * .97,
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
                          color: Colors.white,
                          height: MediaQuery.of(context).size.height * 0.02,
                        ),
                        Text(
                          " Learning Management System",
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          subHeader(),
          Container(
            child: Row(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * .1,
                  height: MediaQuery.of(context).size.height * .63,
                  child: FlipDrawerSmall(),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * .87,
                  height: MediaQuery.of(context).size.height * .63,
                  child: content(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget content() {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(bottomRight: Radius.circular(10))),
      child: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Container(
                color: Color(0xff6EB7C6),
                width: double.infinity,
                padding: EdgeInsets.symmetric(
                  vertical: MediaQuery.of(context).size.height * 0.02,
                  horizontal: MediaQuery.of(context).size.width * 0.02,
                ),
                //height: MediaQuery.of(context).size.height * 0.10,
                child: Text(
                  "FINANCIAL ACCOUNTING PRINCIPLES",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(
                    horizontal: MediaQuery.of(context).size.width * .03,
                    vertical: MediaQuery.of(context).size.height * .02),
                child: Column(
                  children: [
                    _textWidget("Assignment for testWeight", "0%"),
                    Divider(),
                    _buttonWidget(),
                    Divider(),
                    _textWidget("Assessment for testWeight", "0%"),
                    Divider(),
                    _buttonWidget(),
                    Divider(),
                    _textWidget("Assessment of Learning", "0%"),
                    Divider(),
                    _buttonWidget(),
                    Divider(),
                    _textWidget("Assessment As Learning", "0%"),
                    Divider(),
                    _buttonWidget(),
                    Divider(),
                    _textWidget("Mid-Term Weight", "0%"),
                    Divider(),
                    _buttonWidget(),
                    Divider(),
                    _textWidget("Final Exam Weight", "0%"),
                    Divider(),
                    _buttonWidget(),
                    Divider(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget subHeader() {
    return Container(
      color: Color(0xff6EB7C6),
      width: MediaQuery.of(context).size.width * .97,
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
                    width: 10,
                  ),
                  Image.asset(
                    'assets/images/lms.png',
                    color: Colors.white,
                    height: MediaQuery.of(context).size.height * 0.03,
                  ),
                  SizedBox(
                    width: 2,
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
                    width: MediaQuery.of(context).size.width * .01,
                  ),
                  // Image.asset(
                  //   'assets/contentImages/qmark.png',
                  //   color: Colors.white,
                  //   height: MediaQuery.of(context).size.height * 0.02,
                  // ),
                  Icon(
                    Icons.file_copy,
                    color: Colors.white,
                    size: 20,
                  ),
                  SizedBox(
                    width: 2,
                  ),
                  Text("ReportGrade",
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
    );
  }

  _textWidget(String text1, text2) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            "Assesment Category: $text1",
            style: TextStyle(fontSize: 13.0),
          ),
          Text(
            "= $text2",
            style: TextStyle(fontSize: 13.0),
          ),
        ],
      ),
    );
  }

  _buttonWidget() {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          ElevatedButton(
            child: Text('0 Assessment'),
            onPressed: () {
              print('Pressed');
            },
            style: ButtonStyle(
              // foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
              backgroundColor:
                  MaterialStateProperty.all<Color>(Color(0xff96D7E5)),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
              ),
            ),
          ),
          ElevatedButton(
            child: Text("Teacher's Comments"),
            onPressed: () => _myDailog(),
            style: ButtonStyle(
              // foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
              backgroundColor:
                  MaterialStateProperty.all<Color>(Color(0xffD4D4D4)),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  _myDailog() {
    return showDialog(
      context: context,
      builder: (ctxt) => new AlertDialog(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              child: Row(
                children: [
                  Icon(
                    Icons.person,
                    color: Color(0xff6EB7C6),
                  ),
                  // CircleAvatar(
                  //   backgroundColor: Colors.transparent,
                  //   child: Image.asset("assets/Icon awesome-user-alt@2x.png"),
                  // ),
                  Text(
                    "Tecaher'a Comment",
                    style: TextStyle(fontSize: 9, fontWeight: FontWeight.w300),
                  ),
                ],
              ),
            ),
            GestureDetector(
                child: Container(
                  width: 30,
                  height: 30,
                  decoration: BoxDecoration(
                      color: Color(0xff6EB7C6),
                      borderRadius: BorderRadius.circular(50)),
                  child: Icon(
                    Icons.close,
                    color: Colors.white,
                  ),
                ),
                onTap: () {
                  Navigator.pop(context);
                })
          ],
        ),
        content: Container(
          width: double.maxFinite,
          height: MediaQuery.of(context).size.width * 0.30,
          color: Color(0xffF0F2F3),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              _dailogText(
                  "*tackles classroom assignments, tasks, and group work in an organized manner."),
              _dailogText("*uses class time wisely."),
              _dailogText(
                  "*arrives on time for school (and/or class) every day."),
              _dailogText("*is well-prepared for class each day."),
              _dailogText(
                  "*works at an appropriate pace, neither too quickly or slowly."),
              _dailogText("*completes assignments in the time allotted"),
            ],
          ),
        ),
      ),
    );
  }

  _dailogText(String dailogtext) {
    return Text(
      dailogtext,
      style: TextStyle(
          color: Color(0xff606368), fontSize: 8.5, fontWeight: FontWeight.w400),
    );
  }
}
