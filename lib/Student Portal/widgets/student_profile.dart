import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:expansion_tile_card/expansion_tile_card.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';

class StudentProfile extends StatefulWidget {
  StudentProfile({Key? key}) : super(key: key);

  @override
  _StudentProfileState createState() => _StudentProfileState();
}

class _StudentProfileState extends State<StudentProfile> {
  final GlobalKey<ExpansionTileCardState> cardA = new GlobalKey();
  final GlobalKey<ExpansionTileCardState> cardB = new GlobalKey();
  final GlobalKey<ExpansionTileCardState> cardC = new GlobalKey();
  final GlobalKey<ExpansionTileCardState> cardD = new GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.symmetric(
            vertical: MediaQuery.of(context).size.height * 0.01,
            horizontal: MediaQuery.of(context).size.width * 0.02),
        // height: MediaQuery.of(context).size.height * 0.80,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15.0),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 1,
              blurRadius: 3,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  _buttonWidget(
                    "Edit Profile",
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  _buttonWidget(
                    "Edit Credetials",
                  ),
                  SizedBox(
                    width: 20,
                  ),
                ],
              ),
              Container(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20.0, vertical: 20.0),
                        child: ExpansionTileCard(
                          
                          baseColor: Colors.grey[4000],
                          key: cardA,
                          leading: ConstrainedBox(
                            constraints: BoxConstraints(
                              minWidth: 30,
                              minHeight: 30,
                              maxWidth: 50,
                              maxHeight: 50,
                            ),
                            child: Image.asset(
                              "assets/images/presentation.jpeg",
                              height: MediaQuery.of(context).size.height * 0.03,
                            ),
                          ),
                          title: Text(
                            "Academic Details",
                            style: TextStyle(color: Color(0xff6EB7C6)),
                          ),
                          children: <Widget>[
                            Container(
                              color: Color(0xffCFF6F4),
                              width: double.infinity,
                              child: Column(
                                children: <Widget>[
                                  SizedBox(height: 10),
                                  Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: <Widget>[
                                          Row(
                                            children: [
                                              Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: <Widget>[
                                                  _boldtext("first name:"),
                                                  _boldtext("last name:"),
                                                  _boldtext("admission no:"),
                                                ],
                                              )
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: <Widget>[
                                                  _normaltext("John"),
                                                  _normaltext("doe"),
                                                  _normaltext("12345678"),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 10),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      //Personal information tile
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20.0, vertical: 20.0),
                        child: ExpansionTileCard(
                          baseColor: Colors.grey[4000],
                          //  expandedColor: Color(0xffCFF6F4),
                          key: cardB,
                          leading: ConstrainedBox(
                            constraints: BoxConstraints(
                              minWidth: 44,
                              minHeight: 44,
                              maxWidth: 50,
                              maxHeight: 50,
                            ),
                            child: Image.asset(
                              "assets/images/info.png",
                              height: MediaQuery.of(context).size.height * 0.03,
                            ),
                          ),
                          title: Text(
                            "Personal information",
                            style: TextStyle(color: Color(0xff6EB7C6)),
                          ),
                          children: <Widget>[
                            Container(
                              color: Color(0xffCFF6F4),
                              width: double.infinity,
                              //height: MediaQuery.of(context).size.height * 0.0,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  SizedBox(height: 10),
                                  Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: <Widget>[
                                          Row(
                                            children: [
                                              Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: <Widget>[
                                                  _boldtext("student email:"),
                                                  _boldtext("date of birth:"),
                                                  _boldtext("age:"),
                                                  _boldtext("student contact:"),
                                                  _boldtext("gender:"),
                                                  _boldtext("blood group:"),
                                                ],
                                              )
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: <Widget>[
                                                  _normaltext(
                                                      "hello@gmail.com"),
                                                  _normaltext("2007-03-04"),
                                                  _normaltext(
                                                      "16 years & 3 months"),
                                                  _normaltext("03001664649"),
                                                  _normaltext("male"),
                                                  _normaltext("O Neg"),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 10),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      //Additional Details
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20.0, vertical: 20.0),
                        child: ExpansionTileCard(
                        baseColor: Colors.grey[4000],
                          //  expandedColor: Color(0xffCFF6F4),
                          key: cardC,
                          leading: ConstrainedBox(
                            constraints: BoxConstraints(
                              minWidth: 44,
                              minHeight: 44,
                              maxWidth: 50,
                              maxHeight: 50,
                            ),
                            child: Image.asset(
                              "assets/images/folder.png",
                              height: MediaQuery.of(context).size.height * 0.03,
                            ),
                          ),
                          title: Text(
                            "Additional Details",
                            style: TextStyle(color: Color(0xff6EB7C6)),
                          ),
                          children: <Widget>[
                            Container(
                              color: Color(0xffCFF6F4),
                              width: double.infinity,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  SizedBox(height: 10),
                                  Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: <Widget>[
                                          Row(
                                            children: [
                                              Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: <Widget>[
                                                  _boldtext("address:"),
                                                  _boldtext("zip code:"),
                                                  _boldtext("state:"),
                                                  _boldtext("country:"),
                                                  _boldtext("father name:"),
                                                  _boldtext("mother name:"),
                                                  _boldtext("parent contact:"),
                                                  _boldtext("parent email:"),
                                                ],
                                              )
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: <Widget>[
                                                  _normaltext(
                                                      "ABC street Lahore"),
                                                  _normaltext("54500"),
                                                  _normaltext("punjab"),
                                                  _normaltext("Pakistan"),
                                                  _normaltext("Nadeem Ahmad"),
                                                  _normaltext("Zareena"),
                                                  _normaltext("03122949494"),
                                                  _normaltext(
                                                      "testing@gmail.com"),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 10),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      //Skills and social Details
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20.0, vertical: 20.0),
                        child: ExpansionTileCard(
                         baseColor: Colors.grey[4000],
                          //  expandedColor: Color(0xffCFF6F4),
                          key: cardD,
                          leading: ConstrainedBox(
                            constraints: BoxConstraints(
                              minWidth: 44,
                              minHeight: 44,
                              maxWidth: 50,
                              maxHeight: 50,
                            ),
                            child: Image.asset(
                              "assets/images/skill.png",
                              height: MediaQuery.of(context).size.height * 0.03,
                            ),
                          ),
                          title: Text(
                            "Skills and social Details",
                            style: TextStyle(color: Color(0xff6EB7C6)),
                          ),
                          children: <Widget>[
                            Container(
                              color: Color(0xffCFF6F4),
                              width: double.infinity,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  SizedBox(height: 10),
                                  Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: <Widget>[
                                          Row(
                                            children: [
                                              Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: <Widget>[
                                                  _boldtext("profile summary:"),
                                                  _boldtext("skills:"),
                                                  _boldtext("facebook link:"),
                                                  _boldtext(
                                                      "linkedin Profile link:"),
                                                ],
                                              )
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: <Widget>[
                                                  _normaltext(""),
                                                  _normaltext(""),
                                                  _normaltext(""),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 10),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  _buttonWidget(
    String text,
  ) {
    return ElevatedButton.icon(
      icon: Image.asset(
        "assets/navIcons/edit.png",
        height: 20,
        width: 20,
      ),
      label: Text(text,
          style: TextStyle(fontSize: 10.5, fontWeight: FontWeight.bold)),
      onPressed: () {
        print("Pressed");
      },
      style: ElevatedButton.styleFrom(
        primary: Color(0xff6EB7C6), // set the background color
      ),
    );
  }

  _boldtext(String boldtext) {
    return Text(
      boldtext,
      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12.0),
    );
  }

  _normaltext(String normaltext) {
    return Text(
      normaltext,
      style: TextStyle(
          fontWeight: FontWeight.normal,
          fontSize: 12.0,
          color: Color(0xff778284)),
    );
  }
}
