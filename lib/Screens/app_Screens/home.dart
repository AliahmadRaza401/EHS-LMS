import 'package:auto_size_text/auto_size_text.dart';
import 'package:ehs_lms/widgets/home_container.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          homeBg(context),
          homeArea(context),
        ],
      ),
    );
  }
}

Widget homeBg(BuildContext context) {
  return SingleChildScrollView(
    child: Container(
      width: MediaQuery.of(context).size.width * 1,
      height: MediaQuery.of(context).size.height * 1,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/homeScreenBg.png"),
          fit: BoxFit.cover,
        ),
      ),
      padding: EdgeInsets.only(
        top: MediaQuery.of(context).size.height * .16,
      ),
      child: widgetArea(context),
    ),
  );
}

Widget homeArea(BuildContext context) {
  return Container(
    width: MediaQuery.of(context).size.width * 1,
    height: MediaQuery.of(context).size.height * 1,
    // color: Colors.yellow,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        homeHeader(context),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            homeContainerBottom(context),
          ],
        ),
      ],
    ),
  );
}

Widget homeHeader(BuildContext context) {
  return Container(
    width: MediaQuery.of(context).size.width * 1,
    margin: EdgeInsets.only(
      top: MediaQuery.of(context).size.height * .03,
    ),
    child: Padding(
      padding: EdgeInsets.only(

          left: MediaQuery.of(context).size.width * .03,
          right: MediaQuery.of(context).size.width * .07,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Image.asset(
                'assets/images/logo.png',
                color: Colors.white,
                height: MediaQuery.of(context).size.height * .13,
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Row(
                children: [
                  AutoSizeText(
                    "Hey, John doe",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 26.0,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Segoe UI",
                      decoration: TextDecoration.underline,
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
          Column(
            children: [
              Container(
                width: 62.0,
                height: 62.0,
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
    ),
  );
}

Widget homeContainerBottom(BuildContext context) {
  return Column(
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomPaint(
            size: Size(
              MediaQuery.of(context).size.width * 1.0,
              MediaQuery.of(context).size.height * 1,
            ),
            painter: MyPainter(),
            child: Container(
              width: MediaQuery.of(context).size.width * .9,
              height: MediaQuery.of(context).size.height * .4,
              decoration: BoxDecoration(
                color: Color(0xff6EB7C6),
              ),
            ),
          ),
        ],
      ),
    ],
  );
}

Widget widgetArea(BuildContext context) {
  return Container(
    width: MediaQuery.of(context).size.width * .9,
    height: MediaQuery.of(context).size.height * .54,
    child: ListView(
      children: [
        Wrap(
          direction: Axis.horizontal,
          spacing: 20.0,
          alignment: WrapAlignment.center,
          runSpacing: 20.0,
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
              "assets/images/ignore.png",
              "Ignore this for now",
              "View Attendance",
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
      fontSize: 19.0,
      fontWeight: FontWeight.w700,
      fontFamily: "Segoe UI",
    ),
    maxLines: 1,
  );
}

class MyPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(0, size.height * -0.06749068);
    path_0.cubicTo(
        0,
        size.height * -0.06749068,
        size.width * 0.1890467,
        size.height * 0.0008633540,
        size.width * 0.5052687,
        size.height * -0.0009906832);
    path_0.cubicTo(
        size.width * 0.8214907,
        size.height * -0.002844720,
        size.width,
        size.height * -0.07142857,
        size.width,
        size.height * -0.07142857);
    path_0.lineTo(size.width, size.height * 0.9285714);
    path_0.lineTo(0, size.height * 0.9285714);
    path_0.close();

    Paint paint_0_fill = Paint()..style = PaintingStyle.fill;
    paint_0_fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path_0, paint_0_fill);

    Path path_1 = Path();
    path_1.moveTo(0, size.height * -0.06749068);
    path_1.cubicTo(
        0,
        size.height * -0.06749068,
        size.width * 0.1890467,
        size.height * 0.0008633540,
        size.width * 0.5052687,
        size.height * -0.0009906832);
    path_1.cubicTo(
        size.width * 0.8214907,
        size.height * -0.002844720,
        size.width,
        size.height * -0.07142857,
        size.width,
        size.height * -0.07142857);
    path_1.lineTo(size.width, size.height * 0.9285714);
    path_1.lineTo(0, size.height * 0.9285714);
    path_1.close();

    Paint paint1Fill = Paint()..style = PaintingStyle.fill;
    paint1Fill.color = Color(0xff6EB7C6);
    canvas.drawPath(path_1, paint1Fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
