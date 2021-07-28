import 'package:auto_size_text/auto_size_text.dart';
import 'package:ehs_lms/widgets/homeScreenWidgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget Header(BuildContext context) {
  return Container(
    width: MediaQuery.of(context).size.width * 1,
    height: MediaQuery.of(context).size.height * 0.17,
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
    child: Padding(
      padding: EdgeInsets.only(
        top: MediaQuery.of(context).size.height * .036,
        left: MediaQuery.of(context).size.width * .03,
        right: MediaQuery.of(context).size.width * .07,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/logo.png',
                height: MediaQuery.of(context).size.height * .1,
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Row(
                        children: [
                          AutoSizeText(
                            "Hey, John doe",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                              fontFamily: "Segoe UI",
                            ),
                            maxLines: 1,
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          currentDate(),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 25,
                  ),
                  Column(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * .12,
                        height: MediaQuery.of(context).size.width * .12,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50.0),
                          border: Border.all(
                            color: Color(0xffFFF5F5),
                            width: 1.0,
                          ),
                        ),
                        child: Image.asset(
                          'assets/images/dp.png',
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    ),
  );
}
