import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget homeScreenContainer(
    BuildContext context, String image, heading, subHeading) {
  return Container(
    width: 180.0,
    height: 160.0,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(19.0),
      color: Color(0xffFFFFFF),
      boxShadow: [
        BoxShadow(
          color: Colors.black54,
          spreadRadius: 2,
          blurRadius: 6,
          offset: Offset(0, 3), // changes position of shadow
        ),
      ],
    ),
    padding: EdgeInsets.all(18.0),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              image,
              width: 60.0,
              height: 60.0,
            ),
          ],
        ),
        Row(
          children: [
            Flexible(
              child: AutoSizeText(
                heading,
                style: TextStyle(
                  color: Color(0xff14514D),
                  fontSize: 20.0,
                  fontWeight: FontWeight.w700,
                  fontFamily: "Segoe UI",
                ),
                maxLines: 1,
              ),
            ),
          ],
        ),
        Row(
          children: [
            Flexible(
              child: AutoSizeText(
                subHeading,
                style: TextStyle(
                  color: Color(0xff14514D),
                  fontSize: 13.0,
                  fontFamily: "Segoe UI",
                ),
                maxLines: 2,
              ),
            ),
          ],
        ),
      ],
    ),
  );
}
