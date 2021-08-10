import 'package:ehs_lms/Student%20Portal/widgets/header.dart';
import 'package:flutter/material.dart';

class Modules extends StatefulWidget {
  Modules({Key? key}) : super(key: key);

  @override
  _ModulesState createState() => _ModulesState();
}

class _ModulesState extends State<Modules> {
  @override
  Widget build(BuildContext context) {
    return Container(
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
            header(
              context,
            ),
            Container(
              
              child: Column(
                children: [
                  Container(
                      decoration: BoxDecoration(
                          color: Color(0xff558D98),
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(15),
                              topRight: Radius.circular(15))),
                      padding: EdgeInsets.all(10),
                      width: double.infinity,
                      height: MediaQuery.of(context).size.height * 0.065,
                      child: Row(
                        children: [
                          Icon(Icons.home, color: Colors.white),
                          SizedBox(
                              width: MediaQuery.of(context).size.width * .01),
                          Text(
                            "Home",
                            style: TextStyle(color: Colors.white),
                          ),
                          SizedBox(
                              width: MediaQuery.of(context).size.width * .05),
                          Image.asset('assets/contentImages/ModuleIcon.png'),
                          SizedBox(
                              width: MediaQuery.of(context).size.width * .02),
                          Text(
                            "Modules",
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ))
                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height *.71,
              
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Center(
                      child: Container(
                        width: double.infinity,
                        padding: EdgeInsets.all(20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: MediaQuery.of(context).size.width *.2),
                              child: Text(
                                "Academic & Learnin",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    
                                    ),
                              ),
                            ),
                            Container(
                               margin: EdgeInsets.only(left: MediaQuery.of(context).size.width *.2),
                              child: Text("Core Modules",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold)),
                            )
                          ],
                        ),
                      ),
                    ),
                    Container(
                      color: Color(0xff558D98),
                      height: MediaQuery.of(context).size.height * .07,
                      child: moduleRowImage('assets/contentImages/notification.png',
                          "Notification Board", "View Notices"),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * .07,
                      child: moduleRowImage('assets/contentImages/earth-globe.png', "Social Learning",
                          "Social Discussions"),
                    ),
                    Container(
                      color: Color(0xff558D98),
                      height: MediaQuery.of(context).size.height * .07,
                      child: moduleRowImage('assets/contentImages/sport.png', "Activities",
                          "View Activities"),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * .07,
                      child: moduleRowImage('assets/contentImages/attends.png',
                          "Attendance", "View Attendance"),
                    ),
                    Container(
                      color: Color(0xff558D98),
                      height: MediaQuery.of(context).size.height * .07,
                      child: moduleRowImage('assets/contentImages/reportcard.png',
                          "Report Cards", "View Report Cards"),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * .07,
                      child: moduleRowImage('assets/contentImages/calender.png',
                          "Calendar", "View Class Schedules \n View Events"),
                    ),
                    Container(
                      color: Color(0xff558D98),
                      height: MediaQuery.of(context).size.height * .07,
                      child: moduleRowImage('assets/contentImages/healthRecord.png',
                          "Health Records", "View History"),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * .07,
                      child:
                          moduleRowImage('assets/contentImages/logout.png', "Logout", "Logout"),
                    ),
                    Container(
                      color: Color(0xff558D98),
                      height: MediaQuery.of(context).size.height * .07,
                      child: moduleRow('', "Add-on Module", ""),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * .07,
                      child: moduleRowImage(
                          'assets/contentImages/questions.png', "Top Help Questions", ""),
                    ),
                    Container(
                      color: Color(0xff558D98),
                      height: MediaQuery.of(context).size.height * .07,
                      child: moduleRow('', "Student Dash Board", ""),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * .07,
                      child: moduleRow('', "How to Access Report Card", ""),
                    ),
                    Container(
                      color: Color(0xff558D98),
                      height: MediaQuery.of(context).size.height * .07,
                      child: moduleRow('', "How to take Quiz Test", ""),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * .07,
                      child: moduleRow('', "How to Change Credentials", ""),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      );
  }



   Widget moduleRowImage(String tileicon,String titles, String subtitle) {
    return ListTile(
      leading: Image.asset(tileicon),
      title: Text(
        titles,
        style: TextStyle(color: Colors.white, fontSize: 20),
      ),
      trailing: Text(subtitle, style: TextStyle(color: Colors.white)),
    );
  }


  Widget moduleRow(String leadings ,String titles, String subtitle) {
    return ListTile(
      leading: Text(leadings),
      title: Text(
        
        titles,
        style: TextStyle(color: Colors.white, fontSize: 20),
      ),
      trailing: Text(subtitle, style: TextStyle(color: Colors.white)),
    );
  }
}