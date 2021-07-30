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
              0xffC1EAFF,
            ),
            homeScreenContainer(
              context,
              "assets/images/social_learning.png",
              "Social Learning",
              "Social Discussions",
              0xffFFEEEE,
            ),
            homeScreenContainer(
              context,
              "assets/images/report_card.png",
              "Report Cards",
              "View Report Cards",
              0xffF4F5D2,
            ),
            homeScreenContainer(
              context,
              "assets/images/attendance.png",
              "Attendance",
              "View Attendance",
              0xffE2FFDF,
            ),
            homeScreenContainer(
              context,
              "assets/images/health_records.png",
              "Health Records",
              "View History",
              0xffC1EAFF,
            ),
            homeScreenContainer(
              context,
              "assets/images/module.png",
              "Modules",
              "Core Modules",
              0xffFFEEEE,
            ),
            homeScreenContainer(
              context,
              "assets/images/calendar.png",
              "Calendar",
              "View Events\nView Class Schedules",
              0xffF4F5D2,
            ),
            homeScreenContainer(
              context,
              "assets/images/notice_board.png",
              "Notice Board",
              "View Notices",
              0xffE2FFDF,
            ),
            homeScreenContainer(
              context,
              "assets/images/activities.png",
              "Activities",
              "Activities",
              0xffFFF0E2,
            ),
            homeScreenContainer(
              context,
              "assets/images/learning_module.png",
              "Learning Module",
              "Learning Management System",
              0xffffffff,
            ),
            homeScreenContainer(
              context,
              "assets/images/add.png",
              "Add",
              "",
              0xffffffff,
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
      fontSize: 14.0,
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
    paint0Fill.shader = ui.Gradient.radial(
      Offset(
        size.width * 0.12,
        size.height * 0.56,
      ),
      size.width * 0.3,
      [
        Color(0xffffffff).withOpacity(1),
        Color(0xff6eb7c6).withOpacity(1),
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
        Color(0xff8CD9E9).withOpacity(1),
        Color(0xff558D98).withOpacity(1),
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
