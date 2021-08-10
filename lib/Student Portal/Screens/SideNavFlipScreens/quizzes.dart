import 'package:ehs_lms/Student%20Portal/Screens/app_Screens/Navbar/sideNav/flip_drawer_small.dart';
import 'package:ehs_lms/Student%20Portal/widgets/header.dart';
import 'package:expansion_tile_card/expansion_tile_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Quizzes extends StatefulWidget {
  Quizzes({Key? key}) : super(key: key);

  @override
  _QuizzesState createState() => _QuizzesState();
}

class _QuizzesState extends State<Quizzes> {
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
          child: StackOver(),
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
                    width: MediaQuery.of(context).size.width * .01,
                  ),
                  Image.asset(
                    'assets/contentImages/qmark.png',
                    color: Colors.white,
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),
                  SizedBox(
                    width: 2,
                  ),
                  Text("Quizzes",
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
}

//tab bar class
class StackOver extends StatefulWidget {
  @override
  _StackOverState createState() => _StackOverState();
}

class _StackOverState extends State<StackOver>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.87,
      height: MediaQuery.of(context).size.height * 0.68,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.040,
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            child: TabBar(
              controller: _tabController,
              indicator: BoxDecoration(color: Colors.cyan[500]),
              labelColor: Colors.cyan[900],
              unselectedLabelColor: Colors.black38,
              tabs: [
                Tab(
                  text: 'Overview',
                ),
                Tab(
                  text: 'Start Quiz',
                ),
                Tab(
                  text: 'Result',
                ),
              ],
            ),
          ),
          // tab bar view here
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: [
                QuizOverView(),
                StartQuiz(),
                Result(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

//Quiz OverView

class QuizOverView extends StatefulWidget {
  QuizOverView({Key? key}) : super(key: key);

  @override
  _QuizOverViewState createState() => _QuizOverViewState();
}

class _QuizOverViewState extends State<QuizOverView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.87,
      height: MediaQuery.of(context).size.height * 0.68,
      margin: EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        border: Border.all(color: Colors.white70),
      ),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            _QuizContainer("elements of art part 2(Quiz Archived)"),
            _QuizContainer("PRINCIPALS(Quiz Archived)"),
            _QuizContainer("Art History Renaissance(Quiz Archived)"),
            _QuizContainer("Realism and Emotionalism(Quiz Archived)"),
            _QuizContainer("Data Sciences(Quiz Archived)"),
            _QuizContainer("Machine Learning(Quiz Archived)"),
          ],
        ),
      ),
    );
  }

  _QuizContainer(String quiztype) {
    return GestureDetector(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.fromLTRB(5.0, 2, 5.0, 2),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(quiztype),
                // Container(
                //   child: Image.asset(
                //       "assets/contentImages/Icon awesome-angle-up@2x.png"),
                // )
              ],
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.10,
            color: Color(0xffB1D8E0),
            child: Stack(
              children: [
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Container(
                        width: MediaQuery.of(context).size.width * 0.15,
                        height: MediaQuery.of(context).size.height * 0.15,
                        decoration: new BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                            //borderRadius: BorderRadius.all(Radius.circular(50)),
                            border: Border.all(color: Color(0xff1EB2A6))),
                        child: Stack(
                          children: [
                            Positioned(
                              top: 11,
                              left: 50.0,
                              right: 1.0,
                              child: Container(
                                height: 25,
                                width: 25,
                                decoration: BoxDecoration(
                                  color: Color(0xff1EB2A6),
                                  shape: BoxShape.circle,
                                ),
                              ),
                            ),
                            Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Questions",
                                    style: TextStyle(
                                        color: Colors.cyan,
                                        fontSize: 10,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  Text(
                                    "5",
                                    style: TextStyle(
                                        color: Colors.cyan,
                                        fontSize: 10,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.15,
                        height: MediaQuery.of(context).size.height * 0.15,
                        decoration: new BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                            border: Border.all(color: Colors.green)),
                        child: Stack(children: [
                          Positioned(
                            top: 11,
                            left: 50.0,
                            right: 1.0,
                            child: Container(
                              height: 25,
                              width: 25,
                              decoration: BoxDecoration(
                                color: Colors.green,
                                shape: BoxShape.circle,
                              ),
                            ),
                          ),
                          Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Marks",
                                  style: TextStyle(
                                      color: Colors.green,
                                      fontSize: 10,
                                      fontWeight: FontWeight.w500),
                                ),
                                Text(
                                  "5",
                                  style: TextStyle(
                                      color: Colors.green,
                                      fontSize: 10,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                          ),
                        ]),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.15,
                        height: MediaQuery.of(context).size.height * 0.15,
                        decoration: new BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                            border: Border.all(color: Colors.blue)),
                        child: Stack(children: [
                          Positioned(
                            top: 11,
                            left: 50.0,
                            right: 1.0,
                            child: Container(
                              height: 25,
                              width: 25,
                              decoration: BoxDecoration(
                                color: Colors.blue,
                                shape: BoxShape.circle,
                              ),
                            ),
                          ),
                          Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Time Limit",
                                  style: TextStyle(
                                      color: Colors.blue,
                                      fontSize: 10,
                                      fontWeight: FontWeight.w500),
                                ),
                                Text(
                                  "No",
                                  style: TextStyle(
                                      color: Colors.blue,
                                      fontSize: 10,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                          ),
                        ]),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.15,
                        height: MediaQuery.of(context).size.height * 0.15,
                        decoration: new BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                            border: Border.all(color: Colors.red)),
                        child: Stack(children: [
                          Positioned(
                            top: 11,
                            left: 50.0,
                            right: 1.0,
                            child: Container(
                              height: 25,
                              width: 25,
                              decoration: BoxDecoration(
                                color: Colors.red,
                                shape: BoxShape.circle,
                              ),
                            ),
                          ),
                          Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "Negative\nMarking",
                                  style: TextStyle(
                                      color: Colors.red,
                                      fontSize: 10,
                                      fontWeight: FontWeight.w500),
                                ),
                                Text(
                                  "No",
                                  style: TextStyle(
                                      color: Colors.red,
                                      fontSize: 10,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                          ),
                        ]),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.04,
            color: Color(0xff6EB7C6),
            child: Center(
              child: Text(
                "View More",
                style: TextStyle(color: Colors.white, fontSize: 14.0),
              ),
            ),
          )
        ],
      ),
    );
  }
}

//Start quiz class
class StartQuiz extends StatefulWidget {
  @override
  _ExpansionTileCardDemoState createState() => _ExpansionTileCardDemoState();
}

class _ExpansionTileCardDemoState extends State<StartQuiz> {
  final GlobalKey<ExpansionTileCardState> cardA = new GlobalKey();
  final GlobalKey<ExpansionTileCardState> cardB = new GlobalKey();
  final GlobalKey<ExpansionTileCardState> cardC = new GlobalKey();
  final GlobalKey<ExpansionTileCardState> cardD = new GlobalKey();
  final GlobalKey<ExpansionTileCardState> forbutton = new GlobalKey();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Container(
            //width: MediaQuery.of(context).size.width * 0.90,
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
            child: Column(
              children: <Widget>[
                Column(
                  children: [
                    Text(
                        "Multiple Choice- Students are allowed to choose one out of many.\nExample:\nStudents have to select one out of 3 options here,"),
                    Column(
                      children: [
                        Row(
                          children: [
                            Text("that is Option makred with"),
                            SizedBox(
                              width: 5,
                            ),
                            Container(
                              width: 25,
                              height: 25,
                              decoration: new BoxDecoration(
                                  color: Colors.red,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(50)),
                                  border: Border.all(color: Colors.red)),
                              child: Center(
                                child: Icon(
                                  Icons.check,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text("are mandotory."),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 20.0, vertical: 1.0),
            child: ExpansionTileCard(
              baseColor: Color(0xff6EB7C6),
              expandedColor: Colors.white70,
              key: cardA,
              leading: Container(
                width: 30,
                height: 30,
                decoration: new BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.all(Radius.circular(50)),
                    border: Border.all(color: Colors.red)),
                child: Center(
                  child: Icon(
                    Icons.check,
                    color: Colors.white,
                  ),
                ),
              ),
              title: Text("Question#1 (Click to expand)"),
              children: <Widget>[
                Divider(
                  thickness: 1.0,
                  height: 1.0,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16.0,
                      vertical: 8.0,
                    ),
                    child: Container(
                      child: Column(
                        children: <Widget>[
                          Text(
                            "Who is Considered as the father of modern Science?",
                            style: TextStyle(
                              fontSize: 16.0,
                            ),
                          ),
                          MyRadioButton(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              ElevatedButton(
                                child: Text('Submit Answer'),
                                style: ElevatedButton.styleFrom(
                                  primary: Color(0xff6EB7C6),
                                ),
                                onPressed: () {
                                  print('Pressed');
                                },
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
            child: ExpansionTileCard(
              baseColor: Color(0xff6EB7C6),
              expandedColor: Colors.white70,
              key: cardB,
              leading: Container(
                width: 30,
                height: 30,
                decoration: new BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.all(Radius.circular(50)),
                    border: Border.all(color: Colors.red)),
                child: Center(
                  child: Icon(
                    Icons.check,
                    color: Colors.white,
                  ),
                ),
              ),
              title: Text("Question#2 (Click to expand)"),
              children: <Widget>[
                Divider(
                  thickness: 1.0,
                  height: 1.0,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16.0,
                      vertical: 8.0,
                    ),
                    child: Container(
                      child: Column(
                        children: <Widget>[
                          Text(
                            "Upload a document on moon study.Students need to upload a file in any of the available drive, CD Drive, Flash Drive Etc.",
                            style: TextStyle(
                              fontSize: 16.0,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              ElevatedButton(
                                child: Text('Upload File'),
                                style: ElevatedButton.styleFrom(
                                  primary: Color(0xff6EB7C6),
                                ),
                                onPressed: () {},
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 20.0, vertical: 2.0),
            child: ExpansionTileCard(
              baseColor: Color(0xff6EB7C6),
              expandedColor: Colors.white70,
              key: cardC,
              leading: Container(
                width: 30,
                height: 30,
                decoration: new BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(50)),
                    border: Border.all(color: Colors.white)),
                child: Center(
                  child: Icon(
                    Icons.check,
                    color: Colors.cyan[200],
                  ),
                ),
              ),
              title: Text("Question#3"),
              children: <Widget>[
                Divider(
                  thickness: 1.0,
                  height: 1.0,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16.0,
                      vertical: 8.0,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
            child: ExpansionTileCard(
              baseColor: Color(0xff6EB7C6),
              expandedColor: Colors.white70,
              key: cardD,
              leading: Container(
                width: 30,
                height: 30,
                decoration: new BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(50)),
                    border: Border.all(color: Colors.white)),
                child: Center(
                  child: Icon(
                    Icons.check,
                    color: Colors.cyan[200],
                  ),
                ),
              ),
              title: Text("Question#4"),
              children: <Widget>[
                Divider(
                  thickness: 1.0,
                  height: 1.0,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16.0,
                      vertical: 8.0,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

//This is the class for radio button
enum answers { Galileo, Newton, Einstein }

/// This is the stateful widget that the main application instantiates.
class MyRadioButton extends StatefulWidget {
  const MyRadioButton({Key? key}) : super(key: key);

  @override
  State<MyRadioButton> createState() => _MyStatefulWidgetState();
}

/// This is the private State class that goes with MyRadioButton.
class _MyStatefulWidgetState extends State<MyRadioButton> {
  answers? _character = answers.Galileo;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        ListTile(
          title: const Text('Galileo'),
          leading: Radio<answers>(
            value: answers.Galileo,
            groupValue: _character,
            onChanged: (answers? value) {
              setState(() {
                _character = value;
              });
            },
          ),
        ),
        ListTile(
          title: const Text('Newton'),
          leading: Radio<answers>(
            value: answers.Newton,
            groupValue: _character,
            onChanged: (answers? value) {
              setState(() {
                _character = value;
              });
            },
          ),
        ),
        ListTile(
          title: const Text('Einstein'),
          leading: Radio<answers>(
            value: answers.Einstein,
            groupValue: _character,
            onChanged: (answers? value) {
              setState(() {
                _character = value;
              });
            },
          ),
        ),
      ],
    );
  }
}

//Result
class Result extends StatelessWidget {
  const Result({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.86,
      height: MediaQuery.of(context).size.height * 0.67,
      margin: EdgeInsets.only(left: 30, top: 50, right: 30, bottom: 50),
      child: Image.asset("assets/contentImages/result.jpeg"),
    );
  }

  _boldText(String data) {
    return Text(
      data,
      style: TextStyle(
          fontSize: 12.0, fontWeight: FontWeight.bold, color: Colors.black),
    );
  }

  _normalText(String normalData) {
    return Text(
      normalData,
      style: TextStyle(
          fontSize: 12.0, fontWeight: FontWeight.normal, color: Colors.black),
    );
  }
}
