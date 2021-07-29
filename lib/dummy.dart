import 'package:ehs_lms/Screens/app_Screens/Navbar/sideNav/sideNav_small.dart';
import 'package:ehs_lms/widgets/header.dart';
import 'package:flutter/material.dart';

class Dummy extends StatefulWidget {
  const Dummy({Key? key}) : super(key: key);

  @override
  _DummyState createState() => _DummyState();
}

class _DummyState extends State<Dummy> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: RadialGradient(
            center: Alignment(-0.76, -0.1),
            radius: 1.1,
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
                Header(context),
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
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 30),
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
                  width: 20,
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.supervised_user_circle_rounded,
                          color: Colors.white,
                          size: 20,
                        ),
                        Text(
                          "Profile",
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  width: 20,
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.social_distance,
                          color: Colors.white,
                          size: 20,
                        ),
                        Text(
                          "Social Learning",
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
      //  Row(
      //   children: [
      //     SizedBox(
      //       width: MediaQuery.of(context).size.width * .16,
      //       height: MediaQuery.of(context).size.height * .8,
      //       child: SideNavSmall(),
      //     ),
      //     SizedBox(
      //       width: MediaQuery.of(context).size.width * .74,
      //       height: MediaQuery.of(context).size.height * .8,
      //       child: ColoredBox(
      //         color: Colors.blue,
      //         // child: Column(
      //         //   children: [],
      //         // ),
      //       ),
      //     ),
      //   ],
      // ),
    );
  }
}
