import 'package:auto_size_text/auto_size_text.dart';
import 'package:ehs_lms/widgets/homeScreenNoticeBoardContainer.dart';
import 'package:ehs_lms/widgets/homeScreenWidgets.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool barSize = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          homeBg(context),
          homeArea(context),
        ],
      ),
      // bottomNavigationBar: bottomNavigation(context),
    );
  }

// Widget bottomNavigation(BuildContext context) {
//   return ClipPath(
//     clipper: OvalTopBorderClipper(),
//     child: Container(
//       height: barSize == false
//           ? MediaQuery.of(context).size.height * .09
//           : MediaQuery.of(context).size.height * .16,
//       width: MediaQuery.of(context).size.width * 1,
//       decoration: BoxDecoration(
//         gradient: RadialGradient(
//           center: Alignment(0.0, -0.9),
//           radius: 4,
//           colors: [
//             Color(0xff23FFFF),
//             Color(0xff27555E),
//           ],
//           stops: <double>[0.0, 0.9],
//         ),
//       ),
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: [
//           Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               GestureDetector(
//                 onTap: () {
//                   // barSize = true;
//                   setState(() {
//                     barSize = !barSize;
//                   });
//                 },
//                 child: Image.asset(
//                   "assets/images/nav_button.png",
//                   color: Colors.white,
//                   width: MediaQuery.of(context).size.width * .22,
//                 ),
//               ),
//             ],
//           ),
//           barSize == false
//               ? Row(
//                   children: [
//                     SizedBox(
//                       height: MediaQuery.of(context).size.height * .072,
//                       width: MediaQuery.of(context).size.width * 1,
//                       child: ListView(
//                         scrollDirection: Axis.horizontal,
//                         children: [
//                           Padding(
//                             padding: EdgeInsets.symmetric(
//                               horizontal:
//                                   MediaQuery.of(context).size.width * .04,
//                             ),
//                             child: Image.asset(
//                               "assets/images/lms.png",
//                               color: Colors.white,
//                               scale: 3.0,
//                             ),
//                           ),
//                           Padding(
//                             padding: EdgeInsets.symmetric(
//                               horizontal:
//                                   MediaQuery.of(context).size.width * .04,
//                             ),
//                             child: Image.asset(
//                               "assets/images/lms.png",
//                               color: Colors.white,
//                               scale: 3.0,
//                             ),
//                           ),
//                           Padding(
//                             padding: EdgeInsets.symmetric(
//                               horizontal:
//                                   MediaQuery.of(context).size.width * .04,
//                             ),
//                             child: Image.asset(
//                               "assets/images/lms.png",
//                               color: Colors.white,
//                               scale: 3.0,
//                             ),
//                           ),
//                           Padding(
//                             padding: EdgeInsets.symmetric(
//                               horizontal:
//                                   MediaQuery.of(context).size.width * .04,
//                             ),
//                             child: Image.asset(
//                               "assets/images/lms.png",
//                               color: Colors.white,
//                               scale: 3.0,
//                             ),
//                           ),
//                           Padding(
//                             padding: EdgeInsets.symmetric(
//                               horizontal:
//                                   MediaQuery.of(context).size.width * .04,
//                             ),
//                             child: Image.asset(
//                               "assets/images/lms.png",
//                               color: Colors.white,
//                               scale: 3.0,
//                             ),
//                           ),
//                           Padding(
//                             padding: EdgeInsets.symmetric(
//                               horizontal:
//                                   MediaQuery.of(context).size.width * .04,
//                             ),
//                             child: Image.asset(
//                               "assets/images/lms.png",
//                               color: Colors.white,
//                               scale: 3.0,
//                             ),
//                           ),
//                           Padding(
//                             padding: EdgeInsets.symmetric(
//                               horizontal:
//                                   MediaQuery.of(context).size.width * .04,
//                             ),
//                             child: Image.asset(
//                               "assets/images/lms.png",
//                               color: Colors.white,
//                               scale: 3.0,
//                             ),
//                           ),
//                           Padding(
//                             padding: EdgeInsets.symmetric(
//                               horizontal:
//                                   MediaQuery.of(context).size.width * .04,
//                             ),
//                             child: Image.asset(
//                               "assets/images/lms.png",
//                               color: Colors.white,
//                               scale: 3.0,
//                             ),
//                           ),
//                           Padding(
//                             padding: EdgeInsets.symmetric(
//                               horizontal:
//                                   MediaQuery.of(context).size.width * .04,
//                             ),
//                             child: Image.asset(
//                               "assets/images/lms.png",
//                               color: Colors.white,
//                               scale: 3.0,
//                             ),
//                           ),
//                           Padding(
//                             padding: EdgeInsets.symmetric(
//                               horizontal:
//                                   MediaQuery.of(context).size.width * .04,
//                             ),
//                             child: Image.asset(
//                               "assets/images/lms.png",
//                               color: Colors.white,
//                               scale: 3.0,
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ],
//                 )
//               : Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     SizedBox(
//                       height: MediaQuery.of(context).size.height * .12,
//                       width: MediaQuery.of(context).size.width * .9,
//                       child: Wrap(
//                         direction: Axis.horizontal,
//                         runAlignment: WrapAlignment.start,
//                         runSpacing: MediaQuery.of(context).size.height * .02,
//                         spacing: MediaQuery.of(context).size.width * .06,
//                         children: [
//                           Image.asset(
//                             "assets/images/lms.png",
//                             color: Colors.white,
//                             scale: 2.6,
//                           ),
//                           Image.asset(
//                             "assets/images/lms.png",
//                             color: Colors.white,
//                             scale: 2.6,
//                           ),
//                           Image.asset(
//                             "assets/images/lms.png",
//                             color: Colors.white,
//                             scale: 2.6,
//                           ),
//                           Image.asset(
//                             "assets/images/lms.png",
//                             color: Colors.white,
//                             scale: 2.6,
//                           ),
//                           Image.asset(
//                             "assets/images/lms.png",
//                             color: Colors.white,
//                             scale: 2.6,
//                           ),
//                           Image.asset(
//                             "assets/images/lms.png",
//                             color: Colors.white,
//                             scale: 2.6,
//                           ),
//                           Image.asset(
//                             "assets/images/lms.png",
//                             color: Colors.white,
//                             scale: 2.6,
//                           ),
//                           Image.asset(
//                             "assets/images/lms.png",
//                             color: Colors.white,
//                             scale: 2.6,
//                           ),
//                           Image.asset(
//                             "assets/images/lms.png",
//                             color: Colors.white,
//                             scale: 2.6,
//                           ),
//                           Image.asset(
//                             "assets/images/lms.png",
//                             color: Colors.white,
//                             scale: 2.6,
//                           ),
//                           Image.asset(
//                             "assets/images/lms.png",
//                             color: Colors.white,
//                             scale: 2.6,
//                           ),
//                         ],
//                       ),
//                     ),
//                   ],
//                 ),
//         ],
//       ),
//     ),
//   );
// }
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
        top: MediaQuery.of(context).size.height * .12,
        bottom: MediaQuery.of(context).size.height * .33,
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
        Row(
          children: [
            homeHeader(context),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            homeBottomContainer(context),
          ],
        ),
      ],
    ),
  );
}

Widget homeHeader(BuildContext context) {
  return CustomPaint(
    painter: HeaderCustomPaint(),
    child: Container(
      width: MediaQuery.of(context).size.width * 1,
      child: Padding(
        padding: EdgeInsets.only(
          top: MediaQuery.of(context).size.height * .036,
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
                  height: MediaQuery.of(context).size.height * .1,
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
      ),
    ),
  );
}

Widget homeBottomContainer(BuildContext context) {
  return CustomPaint(
    painter: BottomContainerCustomPaint(),
    child: Container(
      width: MediaQuery.of(context).size.width * 1,
      height: MediaQuery.of(context).size.height * .34,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(
              left: 18.0,
              right: 18.0,
              top: 10.0,
            ),
            child: Row(
              children: [
                AutoSizeText(
                  "Online Notice Board",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 26.0,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 18.0),
            child: Divider(
              color: Colors.white,
              thickness: 1.0,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * .91,
                height: MediaQuery.of(context).size.height * .27,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      bottomCard(
                        context,
                        "assets/images/activities.png",
                        "Activities",
                        "Recent Activities",
                        "assets/images/dp.png",
                        "You updated login Credentials",
                        "Credentials updated",
                        "15 July",
                        "",
                      ),
                      bottomCard(
                        context,
                        "assets/images/notice.png",
                        "Notices",
                        "Recent Notices",
                        "assets/images/dp.png",
                        "Learning Portal Demonstration Video",
                        "",
                        "22 July",
                        "www.youtube.com/video",
                      ),
                      bottomCard(
                        context,
                        "assets/images/event.png",
                        "Events",
                        "Upcoming Events",
                        "assets/images/dp.png",
                        "Elite High School Karachi Expo",
                        "",
                        "18 July",
                        "",
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    ),
  );
}
