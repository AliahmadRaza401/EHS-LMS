import 'package:flutter/material.dart';

Widget changePasswordBg(BuildContext context) {
  return SingleChildScrollView(
    child: Stack(
      children: [
        Container(
          width: MediaQuery.of(context).size.width * 1,
          height: MediaQuery.of(context).size.height * 1,
          decoration: BoxDecoration(
            gradient: RadialGradient(
              center: Alignment(0.0, -0.7),
              radius: 0.7,
              colors: [
                Color(0xffffffff),
                Color(0xff6EB7C6),
              ],
              stops: <double>[0.0, 0.9],
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Row(
                children: [
                  Image.asset(
                    'assets/images/login_bg.png',
                    width: MediaQuery.of(context).size.width * 1,
                    height: MediaQuery.of(context).size.height * .62,
                    fit: BoxFit.fitWidth,
                  ),
                ],
              ),
            ],
          ),
        ),
        Image.asset(
          "assets/images/passwordChange_bg.png",
          width: MediaQuery.of(context).size.width * 1,
          height: MediaQuery.of(context).size.height * 1,
          fit: BoxFit.fill,
        ),
      ],
    ),
  );
}
