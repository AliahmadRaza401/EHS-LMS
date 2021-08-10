import 'package:ehs_lms/Student%20Portal/Screens/app_Screens/Navbar/sideNav/flip_drawer_small.dart';
import 'package:ehs_lms/Student%20Portal/widgets/header.dart';
import 'package:expansion_tile_card/expansion_tile_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';

class Assesment extends StatefulWidget {
  Assesment({Key? key}) : super(key: key);

  @override
  _AssesmentState createState() => _AssesmentState();
}

class _AssesmentState extends State<Assesment> {
  final GlobalKey<ExpansionTileCardState> card1 = new GlobalKey();
  final GlobalKey<ExpansionTileCardState> card2 = new GlobalKey();
  final GlobalKey<ExpansionTileCardState> card3 = new GlobalKey();
  final GlobalKey<ExpansionTileCardState> card4 = new GlobalKey();
  final GlobalKey<ExpansionTileCardState> card5 = new GlobalKey();
  final GlobalKey<ExpansionTileCardState> card6 = new GlobalKey();
  final GlobalKey<ExpansionTileCardState> card7 = new GlobalKey();
  final GlobalKey<ExpansionTileCardState> card8 = new GlobalKey();
  final GlobalKey<ExpansionTileCardState> card9 = new GlobalKey();
  final GlobalKey<ExpansionTileCardState> card10 = new GlobalKey();
  final GlobalKey<ExpansionTileCardState> card11 = new GlobalKey();
  final GlobalKey<ExpansionTileCardState> card12 = new GlobalKey();

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
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width * 0.87,
              height: MediaQuery.of(context).size.height * 0.68,
              padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: ListView(
                children: [
                  _myClipPath(),
                  SizedBox(
                    height: 10,
                  ),
                  _mytextContainer(),
                  _asseCon("Scale Type", "Percentage"),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.015,
                  ),
                  _asseCon("Count in Overall", "Yes"),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.015,
                  ),
                  _asseCon("Points", "Max - 15, Passing - 9"),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.015,
                  ),
                  _asseCon("Start Date", "2021-03-02"),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.015,
                  ),
                  _asseCon("End Date", "2021-03-09"),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.015,
                  ),
                  _asseCon("Assessment Submission",
                      "Not Submitted. Submission end date is crossed"),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.015,
                  ),
                  _myexpansionTile1(),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.015,
                  ),
                  _myexpansionTile2(),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.015,
                  ),
                  _myexpansionTile3(),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.015,
                  ),
                  _myexpansionTile4(),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.015,
                  ),
                  _myexpansionTile5(),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.015,
                  ),
                  _myexpansionTile6(),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.015,
                  ),
                  _myexpansionTile7(),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.015,
                  ),
                  _myexpansionTile8(),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.015,
                  ),
                  _myexpansionTile9(),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.015,
                  ),
                  _myexpansionTile10(),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.015,
                  ),
                  _myexpansionTile11(),
                ],
              ),
            ),
          ],
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
                  Image.asset(
                    'assets/contentImages/assign.png',
                    color: Colors.white,
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),
                  SizedBox(
                    width: 2,
                  ),
                  Text("Assesment",
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

  _myClipPath() {
    return ClipPath(
      clipper: OvalBottomBorderClipper(),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(10), topLeft: Radius.circular(10)),
          color: Color(0xff6EB7C6),
        ),
        height: MediaQuery.of(context).size.height * 0.080,
        child: Center(
          child: Text(
            "Logo_Google Project",
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w300,
                fontSize: 19.0),
          ),
        ),
      ),
    );
  }

  _mytextContainer() {
    return Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            Text(
              "Created on 2021-02-26 2:51, ",
              style: TextStyle(
                  color: Color(
                    0xff6EB7C6,
                  ),
                  fontSize: 12.0),
            ),
            Text(
              "Last Update 2021-02-26 2:51",
              style: TextStyle(
                  color: Color(
                    0xff6EB7C6,
                  ),
                  fontSize: 12.0),
            ),
          ],
        ),
        Text(
            "This is the assignment for practical connection unit, please download the file and read the instruction carefully. You are expected to submit the the assignment before the due day. Late submission will result in mark reduction."),
        TextButton.icon(
          onPressed: () {},
          icon: Image.asset(
            "assets/contentImages/Icon awesome-download@2x.png",
            height: 20,
            width: 20,
          ),
          label: Text("Download Assesment",
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff6EB7C6))),
        ),
      ],
    );
  }

  _asseCon(String textOut, String textIn) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.055,
      width: MediaQuery.of(context).size.width * 0.90,
      decoration: BoxDecoration(
          border: Border.all(width: 0.2),
          borderRadius: BorderRadius.circular(10)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(10), topLeft: Radius.circular(10)),
              color: Color(0xff6EB7C6),
            ),
            padding: EdgeInsets.fromLTRB(15, 2, 0, 0),
            width: double.maxFinite,
            height: MediaQuery.of(context).size.height * 0.025,
            // decoration: BoxDecoration(
            //   borderRadius: BorderRadius.only(
            //     topLeft: Radius.circular(10),
            //   ),
            // ),

            child: Text(
              textOut,
              style: TextStyle(color: Colors.white),
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(15, 2, 0, 0),
            height: MediaQuery.of(context).size.height * 0.025,
            width: MediaQuery.of(context).size.width * 0.90,
            child: Text(textIn),
          )
        ],
      ),
    );
  }

//Expansion tile widget
  _myexpansionTile1() {
    return Container(
      child: ExpansionTileCard(
        baseColor: Color(0xff71B8C7),
        //expandedColor: Color(0xff71B8C7),
        key: card1,
        title: Center(
          child: Text(
            "Greet Card Project",
            style: TextStyle(
                color: Colors.white,
                fontSize: 20.0,
                fontWeight: FontWeight.w400),
          ),
        ),
      ),
    );
  }

  //Expansion tile widget
  _myexpansionTile2() {
    return Container(
      child: ExpansionTileCard(
        baseColor: Color(0xff71B8C7),
        //expandedColor: Color(0xff71B8C7),
        key: card2,
        title: Center(
          //
          child: Text(
            "Joge-e Woodcut Project",
            style: TextStyle(
                color: Colors.white,
                fontSize: 20.0,
                fontWeight: FontWeight.w400),
          ),
        ),
      ),
    );
  }

  //Expansion tile widget
  _myexpansionTile3() {
    return Container(
      child: ExpansionTileCard(
        baseColor: Color(0xff71B8C7),
        //expandedColor: Color(0xff71B8C7),
        key: card3,
        title: Center(
          //
          child: Text(
            "Japanese Shadow Figure Drawing",
            style: TextStyle(
                color: Colors.white,
                fontSize: 20.0,
                fontWeight: FontWeight.w400),
          ),
        ),
      ),
    );
  }

  //Expansion tile widget
  _myexpansionTile4() {
    return Container(
      child: ExpansionTileCard(
        baseColor: Color(0xff71B8C7),
        //expandedColor: Color(0xff71B8C7),
        key: card4,
        title: Center(
          //
          child: Text(
            "Flower Painting Project",
            style: TextStyle(
                color: Colors.white,
                fontSize: 20.0,
                fontWeight: FontWeight.w400),
          ),
        ),
      ),
    );
  }

  //Expansion tile widget
  _myexpansionTile5() {
    return Container(
      child: ExpansionTileCard(
        baseColor: Color(0xff71B8C7),
        //expandedColor: Color(0xff71B8C7),
        key: card5,
        title: Center(
          //
          child: Text(
            "Oil Pastel Project",
            style: TextStyle(
                color: Colors.white,
                fontSize: 20.0,
                fontWeight: FontWeight.w400),
          ),
        ),
      ),
    );
  }

  //Expansion tile widget
  _myexpansionTile6() {
    return Container(
      child: ExpansionTileCard(
        baseColor: Color(0xff71B8C7),
        //expandedColor: Color(0xff71B8C7),
        key: card6,
        title: Center(
          //
          child: Text(
            "Abstract Art Musical Project",
            style: TextStyle(
                color: Colors.white,
                fontSize: 20.0,
                fontWeight: FontWeight.w400),
          ),
        ),
      ),
    );
  }

  //Expansion tile widget
  _myexpansionTile7() {
    return Container(
      child: ExpansionTileCard(
        baseColor: Color(0xff71B8C7),
        //expandedColor: Color(0xff71B8C7),
        key: card7,
        title: Center(
          //
          child: Text(
            "AVI3M Midterm Assignment",
            style: TextStyle(
                color: Colors.white,
                fontSize: 20.0,
                fontWeight: FontWeight.w400),
          ),
        ),
      ),
    );
  }

  //Expansion tile widget
  _myexpansionTile8() {
    return Container(
      child: ExpansionTileCard(
        baseColor: Color(0xff71B8C7),
        //expandedColor: Color(0xff71B8C7),
        key: card8,
        title: Center(
          //
          child: Text(
            "AVI3M Unit 1_Pencil Portrait",
            style: TextStyle(
                color: Colors.white,
                fontSize: 20.0,
                fontWeight: FontWeight.w400),
          ),
        ),
      ),
    );
  }

  //Expansion tile widget
  _myexpansionTile9() {
    return Container(
      child: ExpansionTileCard(
        baseColor: Color(0xff71B8C7),
        //expandedColor: Color(0xff71B8C7),
        key: card9,
        title: Center(
          //
          child: Text(
            "Water Color Project",
            style: TextStyle(
                color: Colors.white,
                fontSize: 20.0,
                fontWeight: FontWeight.w400),
          ),
        ),
      ),
    );
  }

  //Expansion tile widget
  _myexpansionTile10() {
    return Container(
      child: ExpansionTileCard(
        baseColor: Color(0xff71B8C7),
        //expandedColor: Color(0xff71B8C7),
        key: card10,
        title: Center(
          //
          child: Text(
            "AVI3M Unit 1_Colour Pencil",
            style: TextStyle(
                color: Colors.white,
                fontSize: 20.0,
                fontWeight: FontWeight.w400),
          ),
        ),
      ),
    );
  }

  //Expansion tile widget
  _myexpansionTile11() {
    return Container(
      child: ExpansionTileCard(
        baseColor: Color(0xff71B8C7),
        //expandedColor: Color(0xff71B8C7),
        key: card11,
        title: Center(
          //
          child: Text(
            "AVI3M Unit 1_Draw Animals",
            style: TextStyle(
                color: Colors.white,
                fontSize: 20.0,
                fontWeight: FontWeight.w400),
          ),
        ),
      ),
    );
  }
}
