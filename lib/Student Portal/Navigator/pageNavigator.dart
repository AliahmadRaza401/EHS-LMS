import 'package:ehs_lms/Student%20Portal/Screens/SideNavFlipScreens/assesment.dart';
import 'package:ehs_lms/Student%20Portal/Screens/SideNavFlipScreens/discussion.dart';
import 'package:ehs_lms/Student%20Portal/Screens/SideNavFlipScreens/flipclaas.dart';
import 'package:ehs_lms/Student%20Portal/Screens/SideNavFlipScreens/live_lecture.dart';
import 'package:ehs_lms/Student%20Portal/Screens/SideNavFlipScreens/quizzes.dart';
import 'package:ehs_lms/Student%20Portal/Screens/SideNavFlipScreens/report_grade.dart';
import 'package:ehs_lms/Student%20Portal/Screens/SideNavFlipScreens/resourses.dart';
import 'package:ehs_lms/Student%20Portal/Screens/app_Screens/home.dart';
import 'package:ehs_lms/Student%20Portal/Screens/bottomNavScreens/event_schedual.dart';
import 'package:ehs_lms/Student%20Portal/Screens/bottomNavScreens/lms.dart';
import 'package:ehs_lms/Student%20Portal/Screens/bottomNavScreens/notices.dart';
import 'package:ehs_lms/Student%20Portal/Screens/bottomNavScreens/profile.dart';
import 'package:ehs_lms/Student%20Portal/Screens/bottomNavScreens/social_learning.dart';
import 'package:ehs_lms/Student%20Portal/Screens/app_Screens/Navbar/sideNav/flip_drawer_main.dart';
import 'package:ehs_lms/Student%20Portal/Screens/home_Screens/activities.dart';
import 'package:ehs_lms/Student%20Portal/Screens/home_Screens/attendance.dart';
import 'package:ehs_lms/Student%20Portal/Screens/home_Screens/health.dart';
import 'package:ehs_lms/Student%20Portal/Screens/home_Screens/modules.dart';
import 'package:ehs_lms/Student%20Portal/Screens/home_Screens/report_card.dart';
import 'package:ehs_lms/Student%20Portal/widgets/calender.dart';
import 'package:flutter/material.dart';

class PageNavigator extends StatelessWidget {
  // const Navigator({Key? key}) : super(key: key);

  String page;
  PageNavigator({required this.page});
  @override
  Widget build(BuildContext context) {
    Widget child;

    if (page == "home") {
      child = HomeScreen();
    } else if (page == "social_learning") {
      child = SocialLearning();
    } else if (page == "lms") {
      child = LMS();
    } else if (page == "notice_board") {
      child = Notices();
    } else if (page == "userProfile") {
      child = Profile();
    } else if (page == "eventSchedule") {
      child = EventSchedual();
    } else if (page == "flipDrawer") {
      child = FlipDrawer();
    } else if (page == "flipClass") {
      child = FlipClass();
    } else if (page == "discussion") {
      child = Discussion();
    } else if (page == "assesment") {
      child = Assesment();
    } else if (page == "quizzes") {
      child = Quizzes();
    } else if (page == "resourses") {
      child = Resourses();
    } else if (page == "liveLecture") {
      child = LiveLacture();
    } else if (page == "reportGrade") {
      child = ReportGrade();
    } else if (page == "activities") {
      child = Activities();
    } else if (page == "attendance") {
      child = Attendance();
    } else if (page == "health") {
      child = Health();
    } else if (page == "modules") {
      child = Modules();
    } else if (page == "report_card") {
      child = ReportCard();
    } else {
      child = HomeScreen();
    }

    return Container(
      child: child,
    );
  }
}
