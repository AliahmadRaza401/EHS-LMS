import 'package:ehs_lms/Student%20Portal/Screens/app_Screens/Navbar/bottomNav/bottomNav.dart';
import 'package:flutter/material.dart';

class FlipDrawerSmall extends StatefulWidget {
  FlipDrawerSmall({Key? key}) : super(key: key);

  @override
  _FlipDrawerSmallState createState() => _FlipDrawerSmallState();
}

class _FlipDrawerSmallState extends State<FlipDrawerSmall> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(30),
        ),
        color: Color(0xff5EC6C0),
      ),
      child: ListView(
        scrollDirection: Axis.vertical,
        children: [
          GestureDetector(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) =>
                        BottomNav(currentPage: 'flipDrawer')));
              },
              child: menu(Colors.white, 'assets/contentImages/menu.png')),
          divider(),
          menu(Color(0xff23FFFF), 'assets/contentImages/lms_files_icon.png'),
          divider(),
          menu(Colors.white, 'assets/contentImages/lms_message_icon.png'),
          divider(),
          menu(Colors.white, 'assets/contentImages/lms_status_icon.png'),
          divider(),
          menu(Colors.white, 'assets/contentImages/lms_faq_icon.png'),
          divider(),
          menu(Colors.white, 'assets/contentImages/lms_download_icon.png'),
          divider(),
          menu(Colors.white, 'assets/contentImages/lms_video_icon.png'),
        ],
      ),
    );
  }

  Widget menu(color, src) {
    return GestureDetector(
      child: Image.asset(
        src,
        color: color,
        height: 30,
        width: 30,
      ),
    );
  }

  Widget divider() {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 8),
        child: Divider(
          height: MediaQuery.of(context).size.height * 0.03,
          color: Colors.white,
          thickness: 1.5,
        ));
  }
}
