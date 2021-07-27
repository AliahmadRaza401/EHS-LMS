import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';

Widget bottomNavigation(BuildContext context) {
  return ClipPath(
    clipper: OvalTopBorderClipper(),
    child: Container(
      height: MediaQuery.of(context).size.height * .09,
      width: MediaQuery.of(context).size.width * 1,
      decoration: BoxDecoration(
        gradient: RadialGradient(
          center: Alignment(0.0, -0.9),
          radius: 4,
          colors: [
            Color(0xff23FFFF),
            Color(0xff27555E),
          ],
          stops: <double>[0.0, 0.9],
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/images/nav_button.png",
                color: Colors.white,
                width: MediaQuery.of(context).size.width * .22,
              ),
            ],
          ),
          Row(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * .072,
                width: MediaQuery.of(context).size.width * 1,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: MediaQuery.of(context).size.width * .04,
                      ),
                      child: Image.asset(
                        "assets/images/lms.png",
                        color: Colors.white,
                        scale: 3.0,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: MediaQuery.of(context).size.width * .04,
                      ),
                      child: Image.asset(
                        "assets/images/lms.png",
                        color: Colors.white,
                        scale: 3.0,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: MediaQuery.of(context).size.width * .04,
                      ),
                      child: Image.asset(
                        "assets/images/lms.png",
                        color: Colors.white,
                        scale: 3.0,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: MediaQuery.of(context).size.width * .04,
                      ),
                      child: Image.asset(
                        "assets/images/lms.png",
                        color: Colors.white,
                        scale: 3.0,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: MediaQuery.of(context).size.width * .04,
                      ),
                      child: Image.asset(
                        "assets/images/lms.png",
                        color: Colors.white,
                        scale: 3.0,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: MediaQuery.of(context).size.width * .04,
                      ),
                      child: Image.asset(
                        "assets/images/lms.png",
                        color: Colors.white,
                        scale: 3.0,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: MediaQuery.of(context).size.width * .04,
                      ),
                      child: Image.asset(
                        "assets/images/lms.png",
                        color: Colors.white,
                        scale: 3.0,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: MediaQuery.of(context).size.width * .04,
                      ),
                      child: Image.asset(
                        "assets/images/lms.png",
                        color: Colors.white,
                        scale: 3.0,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: MediaQuery.of(context).size.width * .04,
                      ),
                      child: Image.asset(
                        "assets/images/lms.png",
                        color: Colors.white,
                        scale: 3.0,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: MediaQuery.of(context).size.width * .04,
                      ),
                      child: Image.asset(
                        "assets/images/lms.png",
                        color: Colors.white,
                        scale: 3.0,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    ),
  );
}
