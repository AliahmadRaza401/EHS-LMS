import 'dart:ui' as ui;

import 'package:flutter/material.dart';

Widget nav(BuildContext context) {
  return CustomPaint(
    painter: RPSCustomPainter(),
    child: Container(
      width: MediaQuery.of(context).size.width * 1,
      height: MediaQuery.of(context).size.height * .06,
      // decoration: BoxDecoration(
      //   gradient: LinearGradient(
      //     begin: Alignment.topCenter,
      //     end: Alignment.bottomCenter,
      //     colors: [
      //       Color(0xff7DD1E2),
      //       Color(0xff375C63),
      //     ],
      //   ),
      // ),
    ),
  );
}

class BottomNav extends StatefulWidget {
  const BottomNav({Key? key}) : super(key: key);

  @override
  _BottomNavState createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: nav(context),
    );
  }
}

class RPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width * 0.004614119, size.height * 0.05259381);
    path_0.cubicTo(size.width * 0.009443175, size.height * -0.004075251,
        size.width * 0.01932323, 0, size.width * 0.01932323, 0);
    path_0.lineTo(size.width * 0.4131611, 0);
    path_0.cubicTo(
        size.width * 0.4131611,
        0,
        size.width * 0.4272908,
        size.height * -0.01345602,
        size.width * 0.4297299,
        size.height * 0.1288189);
    path_0.cubicTo(
        size.width * 0.4335380,
        size.height * 0.3659781,
        size.width * 0.4482915,
        size.height * 0.8941973,
        size.width * 0.5023666,
        size.height * 0.8834324);
    path_0.cubicTo(
        size.width * 0.5558787,
        size.height * 0.8727701,
        size.width * 0.5710878,
        size.height * 0.3667213,
        size.width * 0.5754356,
        size.height * 0.1176697);
    path_0.cubicTo(
        size.width * 0.5781106,
        size.height * -0.01155936,
        size.width * 0.5903877,
        size.height * 0.00002563051,
        size.width * 0.5903877,
        size.height * 0.00002563051);
    path_0.lineTo(size.width * 0.9762589, size.height * 0.00002563051);
    path_0.cubicTo(
        size.width * 0.9762589,
        size.height * 0.00002563051,
        size.width * 0.9891738,
        size.height * -0.009047570,
        size.width * 0.9950892,
        size.height * 0.05774554);
    path_0.cubicTo(
        size.width * 1.001005,
        size.height * 0.1245387,
        size.width * 0.9999206,
        size.height * 0.2671724,
        size.width * 0.9999206,
        size.height * 0.2671724);
    path_0.lineTo(size.width * 0.9999206, size.height * 1.2);
    path_0.lineTo(0, size.height * 1.2);
    path_0.lineTo(0, size.height * 0.2267019);
    path_0.cubicTo(
        0,
        size.height * 0.2267019,
        size.width * -0.0002172725,
        size.height * 0.1092629,
        size.width * 0.004614119,
        size.height * 0.05259381);
    path_0.close();

    Paint paint0Fill = Paint()..style = PaintingStyle.fill;
    paint0Fill.shader = ui.Gradient.linear(
      Offset(size.width * 0.5, 0),
      Offset(size.width * 0.5, size.height * 0.9),
      [
        Color(0xff7DD1E2),
        Color(0xff375C63),
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

// import 'dart:ui';
//
// import 'package:ehs_lms/Screens/app_Screens/home.dart';
// import 'package:flutter/material.dart';
// import 'package:navigation_action_bar/navigation_action_bar.dart';
//
// class BottomNav extends StatefulWidget {
//   const BottomNav({Key? key}) : super(key: key);
//
//   @override
//   _BottomNavState createState() => _BottomNavState();
// }
//
// class _BottomNavState extends State<BottomNav> {
//   double currentIndex = 0;
//   double upIndex = 0;
//   bool main = true;
//
//   final mainWidget = [
//     HomeScreen(),
//     Text('Index 1: Events'),
//     Text('Index 2: Profile'),
//     Text('Index 3: Events'),
//     Text('Index 4: Profile'),
//     Text('Index 5: Menu'),
//     Text('Index 6: Events'),
//     Text('Index 3: Profile'),
//     Text('Index 4: Menu'),
//     Text('Dont remove this is the just use for fill length'),
//   ];
//   final upWidget = [
//     Container(
//         color: Colors.green,
//         width: 500,
//         height: 900,
//         child: Text('Index 1: upWidget ++++++++++++++++++++++++++++')),
//     Text('Index 2: upWidget'),
//     Text('Index 3: upWidget'),
//     Text('Index 4: upWidget'),
//     Text('Dont remove this is the just use for fill length'),
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       bottomNavigationBar: NavigationActionBar(
//         context: context,
//         accentColor: Color(0xff6EB7C6),
//         scaffoldColor: Color(0xff7DC3E2),
//         backgroundColor: Color(0xff6EB7C6),
//         //  Color(0xff7DD1E2),
//         //     Color(0xff7DC3E2),
//         index: 0,
//         subItems: [
//           NavBarItem(
//             iconData: Icons.attach_file,
//             size: 25,
//           ),
//           NavBarItem(
//               iconData: Icons.photo,
//               size: 35,
//               selectedColor: Color(0xff23FFFF),
//               unselectedColor: Colors.white),
//           NavBarItem(
//               iconData: Icons.camera_alt,
//               size: 35,
//               selectedColor: Color(0xff23FFFF),
//               unselectedColor: Colors.white),
//           NavBarItem(
//               iconData: Icons.attach_file,
//               size: 35,
//               selectedColor: Color(0xff23FFFF),
//               unselectedColor: Colors.white),
//         ],
//         mainIndex: 3,
//         items: [
//           NavBarItem(
//               iconData: Icons.home,
//               size: 35,
//               selectedColor: Color(0xff23FFFF),
//               unselectedColor: Colors.white),
//           NavBarItem(
//               iconData: Icons.list,
//               size: 35,
//               selectedColor: Color(0xff23FFFF),
//               unselectedColor: Colors.white),
//           NavBarItem(
//               iconData: Icons.compare_arrows,
//               size: 35,
//               selectedColor: Color(0xff23FFFF),
//               unselectedColor: Colors.white),
//           NavBarItem(
//               iconData: Icons.keyboard_arrow_up_outlined,
//               size: 40,
//               selectedColor: Color(0xff23FFFF),
//               unselectedColor: Colors.white),
//           NavBarItem(
//               iconData: Icons.call_merge,
//               size: 35,
//               selectedColor: Color(0xff23FFFF),
//               unselectedColor: Colors.white),
//           NavBarItem(
//               iconData: Icons.person,
//               size: 35,
//               selectedColor: Color(0xff23FFFF),
//               unselectedColor: Colors.white),
//           NavBarItem(
//               iconData: Icons.person,
//               size: 35,
//               selectedColor: Color(0xff23FFFF),
//               unselectedColor: Colors.white),
//         ],
//         onTap: (index) {
//           if (index >= 3.0 && index <= 3.9) {
//             setState(() {
//               upIndex = index;
//               main = false;
//             });
//             print("UpIndex : ${upIndex.toString().substring(2, 3)}");
//           } else {
//             setState(() {
//               currentIndex = index;
//               main = true;
//             });
//           }
//         },
//       ),
//       body: Container(
//         height: MediaQuery.of(context).size.height,
//         width: MediaQuery.of(context).size.width,
//         child: Center(
//           child: main == true
//               ? mainWidget
//                   .elementAt(int.parse(currentIndex.toString().substring(0, 1)))
//               : upWidget
//                   .elementAt(int.parse(upIndex.toString().substring(2, 3))),
//         ),
//       ),
//     );
//   }
// }
