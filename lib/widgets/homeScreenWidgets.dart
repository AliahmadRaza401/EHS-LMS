import 'dart:ui' as ui;

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import 'home_container.dart';

Widget widgetArea(BuildContext context) {
  return Container(
    width: MediaQuery.of(context).size.width * .9,
    height: MediaQuery.of(context).size.height * .54,
    child: ListView(
      children: [
        Wrap(
          direction: Axis.horizontal,
          spacing: MediaQuery.of(context).size.width * .03,
          alignment: WrapAlignment.center,
          runSpacing: MediaQuery.of(context).size.width * .03,
          children: [
            homeScreenContainer(
              context,
              "assets/images/lms.png",
              "LMS",
              "View Report Cards",
            ),
            homeScreenContainer(
              context,
              "assets/images/social_learning.png",
              "Social Learning",
              "Social Discussions",
            ),
            homeScreenContainer(
              context,
              "assets/images/report_card.png",
              "Report Cards",
              "View Report Cards",
            ),
            homeScreenContainer(
              context,
              "assets/images/attendance.png",
              "Attendance",
              "View Attendance",
            ),
            homeScreenContainer(
              context,
              "assets/images/health_records.png",
              "Health Records",
              "View History",
            ),
            homeScreenContainer(
              context,
              "assets/images/module.png",
              "Modules",
              "Core Modules",
            ),
            homeScreenContainer(
              context,
              "assets/images/calendar.png",
              "Calendar",
              "View Events\nView Class Schedules",
            ),
            homeScreenContainer(
              context,
              "assets/images/notice_board.png",
              "Notice Board",
              "View Notices",
            ),
            homeScreenContainer(
              context,
              "assets/images/activities.png",
              "Activities",
              "Activities",
            ),
            homeScreenContainer(
              context,
              "assets/images/learning_module.png",
              "Learning Module",
              "Learning Management System",
            ),
            homeScreenContainer(
              context,
              "assets/images/add.png",
              "Add",
              "",
            ),
          ],
        ),
      ],
    ),
  );
}

currentDate() {
  List months = [
    'January',
    'February',
    'March',
    'April',
    'May',
    'June',
    'July',
    'August',
    'September',
    'October',
    'November',
    'December'
  ];
  var date = new DateTime.now();
  var currentMon = date.month;
  var currentDay = date.day;
  return AutoSizeText(
    '$currentDay' + " " + months[currentMon - 1],
    style: TextStyle(
      color: Colors.white,
      fontSize: 16.0,
      fontWeight: FontWeight.w700,
      fontFamily: "Segoe UI",
    ),
    maxLines: 1,
  );
}

class HeaderCustomPaint extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width * 1, size.height * 1.1);
    path_0.cubicTo(
      size.width * 1,
      size.height * 1.1,
      size.width * .8,
      size.height * .9,
      size.width * .6,
      size.height * .9,
    );
    path_0.cubicTo(
      size.width * .2,
      size.height * .9,
      0,
      size.height * 1.4,
      0,
      size.height * 1.4,
    );
    path_0.lineTo(0, 0);
    path_0.lineTo(size.width * 1, 0);
    path_0.close();

    Paint paint0Fill = Paint()..style = PaintingStyle.fill;
    paint0Fill.shader = ui.Gradient.linear(
      Offset(
        size.width * 1,
        size.height * 0.3,
      ),
      Offset(
        size.width * 1,
        size.height * 1.2,
      ),
      [
        Color(0xff003c48).withOpacity(1),
        Color(0xff1ef9f9).withOpacity(1),
      ],
      [0, 1],
    );
    canvas.drawPath(path_0, paint0Fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class BottomContainerCustomPaint extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(0, size.height * -.06);
    path_0.cubicTo(
      0,
      size.height * -.06,
      size.width * .16,
      size.height * .03,
      size.width * .4,
      size.height * .02,
    );
    path_0.cubicTo(
      size.width * .72,
      size.height * .01,
      size.width * 1,
      size.height * -.26,
      size.width * 1,
      size.height * -.4,
    );
    path_0.lineTo(
      size.width * 1,
      size.height * 1,
    );
    path_0.lineTo(
      0,
      size.height * 1,
    );
    path_0.close();

    Paint paint0Fill = Paint()..style = PaintingStyle.fill;
    paint0Fill.shader = ui.Gradient.linear(
      Offset(
        size.width * 1,
        size.height * -.3,
      ),
      Offset(
        size.width * 1,
        size.height * 1,
      ),
      [
        Color(0xff23ffff).withOpacity(1),
        Color(0xff003c48).withOpacity(1),
      ],
      [0, 1],
    );
    canvas.drawPath(path_0, paint0Fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
