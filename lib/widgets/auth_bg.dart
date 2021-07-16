import 'package:flutter/cupertino.dart';

Widget auth_bg(BuildContext context) {
  return Container(
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
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: EdgeInsets.only(
            top: MediaQuery.of(context).size.height * .04,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/logo.png',
                height: MediaQuery.of(context).size.height * .24,
              ),
            ],
          ),
        ),
        Row(
          children: [
            Image.asset(
              'assets/images/auth_bg.png',
              width: MediaQuery.of(context).size.width * 1,
              height: MediaQuery.of(context).size.height * .62,
              fit: BoxFit.fitWidth,
            ),
          ],
        ),
      ],
    ),
  );
}
