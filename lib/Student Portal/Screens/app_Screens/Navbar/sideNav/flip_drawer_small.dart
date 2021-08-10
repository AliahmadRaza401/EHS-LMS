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
    late String selected;
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
          // GestureDetector(
          //   onTap: () {
          //     Navigator.of(context).push(MaterialPageRoute(
          //         builder: (context) => BottomNav(currentPage: "flipDrawer")));
          //   },
          //   child: Image.asset(
          //     'assets/contentImages/menu.png',
          //     color: Colors.white,
          //     height: 30,
          //     width: 30,
          //   ),
          // ),
          // divider(),
          // GestureDetector(
          //   onTap: () {
          //     Navigator.of(context).push(MaterialPageRoute(
          //         builder: (context) => BottomNav(currentPage: "flipClass")));
          //     setState(() {
          //       selected = "flipClass";
          //     });
          //   },
          //   child: Image.asset(
          //     'assets/contentImages/lms_files_icon.png',
          //     color: selected == "flipClass" ? Color(0xff558D98) : Colors.white,
          //     height: 30,
          //     width: 30,
          //   ),
          // ),
          // divider(),
          // GestureDetector(
          //   onTap: () {
          //     Navigator.of(context).push(MaterialPageRoute(
          //         builder: (context) => BottomNav(currentPage: "discussion")));
          //     setState(() {
          //       selected = "discussion";
          //     });
          //   },
          //   child: Image.asset(
          //     'assets/contentImages/lms_message_icon.png',
          //     color:
          //         selected == "discussion" ? Color(0xff558D98) : Colors.white,
          //     height: 30,
          //     width: 30,
          //   ),
          // ),
          // divider(),
          // GestureDetector(
          //   onTap: () {
          //     Navigator.of(context).push(MaterialPageRoute(
          //         builder: (context) => BottomNav(currentPage: "assesment")));
          //     setState(() {
          //       selected = "assesment";
          //     });
          //   },
          //   child: Image.asset(
          //     'assets/contentImages/lms_status_icon.png',
          //     color: selected == "assesment" ? Color(0xff558D98) : Colors.white,
          //     height: 30,
          //     width: 30,
          //   ),
          // ),
          // divider(),
          // GestureDetector(
          //   onTap: () {
          //     Navigator.of(context).push(MaterialPageRoute(
          //         builder: (context) => BottomNav(currentPage: "quizzes")));
          //     setState(() {
          //       selected = "quizzes";
          //     });
          //   },
          //   child: Image.asset(
          //     'assets/contentImages/lms_faq_icon.png',
          //     color: selected == "quizzes" ? Color(0xff558D98) : Colors.white,
          //     height: 30,
          //     width: 30,
          //   ),
          // ),
          // divider(),
          // GestureDetector(
          //   onTap: () {
          //     Navigator.of(context).push(MaterialPageRoute(
          //         builder: (context) => BottomNav(currentPage: "resourses")));
          //     setState(() {
          //       selected = "resourses";
          //     });
          //   },
          //   child: Image.asset(
          //     'assets/contentImages/lms_download_icon.png',
          //     color: selected == "resourses" ? Color(0xff558D98) : Colors.white,
          //     height: 30,
          //     width: 30,
          //   ),
          // ),
          // divider(),
          // GestureDetector(
          //   onTap: () {
          //     Navigator.of(context).push(MaterialPageRoute(
          //         builder: (context) => BottomNav(currentPage: "liveLecture")));
          //     setState(() {
          //       selected = "liveLecture";
          //     });
          //   },
          //   child: Image.asset(
          //     'assets/contentImages/lms_video_icon.png',
          //     color:
          //         selected == "liveLecture" ? Color(0xff558D98) : Colors.white,
          //     height: 30,
          //     width: 30,
          //   ),
          // ),

          menu("flipDrawer", 'assets/contentImages/menu.png'),
          divider(),
          menu("flipClass", 'assets/contentImages/lms_files_icon.png'),
          divider(),
          menu("discussion", 'assets/contentImages/lms_message_icon.png'),
          divider(),
          menu("assesment", 'assets/contentImages/lms_status_icon.png'),
          divider(),
          menu("quizzes", 'assets/contentImages/lms_faq_icon.png'),
          divider(),
          menu("resourses", 'assets/contentImages/lms_download_icon.png'),
          divider(),
          menu("liveLecture", 'assets/contentImages/lms_video_icon.png'),
        ],
      ),
    );
  }

  Widget menu(goTo, src) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => BottomNav(currentPage: goTo)));
      },
      child: Image.asset(
        src,
        color: Colors.white,
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
