import 'dart:ui';

import 'package:ehs_lms/Screens/app_Screens/home.dart';
import 'package:flutter/material.dart';
import 'package:navigation_action_bar/navigation_action_bar.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({Key? key}) : super(key: key);

  @override
  _BottomNavState createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  double currentIndex = 0;

  final _widgetOptions = [
    HomeScreen(),
    Text('Index 2: Events'),
    Text('Index 3: Profile'),
    Text('Index 2: Events'),
    Text('Index 3: Profile'),
    Text('Index 4: Menu'),
    Text('Index 2: Events'),
    Text('Index 3: Profile'),
    Text('Index 4: Menu'),
    Text('Dont remove this is the just use for fill length'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationActionBar(
        context: context,
        accentColor: Color(0xff6EB7C6),
        scaffoldColor: Color(0xff7DC3E2),
        backgroundColor: Color(0xff6EB7C6),
        //  Color(0xff7DD1E2),
        //     Color(0xff7DC3E2),
        index: 0,
        subItems: [
          NavBarItem(
            iconData: Icons.attach_file,
            size: 25,
          ),
          NavBarItem(
              iconData: Icons.photo,
              size: 35,
              selectedColor: Color(0xff23FFFF),
              unselectedColor: Colors.white),
          NavBarItem(
              iconData: Icons.camera_alt,
              size: 35,
              selectedColor: Color(0xff23FFFF),
              unselectedColor: Colors.white),
          NavBarItem(
              iconData: Icons.attach_file,
              size: 35,
              selectedColor: Color(0xff23FFFF),
              unselectedColor: Colors.white),
        ],
        mainIndex: 3,
        items: [
          NavBarItem(
              iconData: Icons.home,
              size: 35,
              selectedColor: Color(0xff23FFFF),
              unselectedColor: Colors.white),
          NavBarItem(
              iconData: Icons.list,
              size: 35,
              selectedColor: Color(0xff23FFFF),
              unselectedColor: Colors.white),
          NavBarItem(
              iconData: Icons.compare_arrows,
              size: 35,
              selectedColor: Color(0xff23FFFF),
              unselectedColor: Colors.white),
          NavBarItem(
              iconData: Icons.keyboard_arrow_up_outlined,
              size: 40,
              selectedColor: Color(0xff23FFFF),
              unselectedColor: Colors.white),
          NavBarItem(
              iconData: Icons.call_merge,
              size: 35,
              selectedColor: Color(0xff23FFFF),
              unselectedColor: Colors.white),
          NavBarItem(
              iconData: Icons.person,
              size: 35,
              selectedColor: Color(0xff23FFFF),
              unselectedColor: Colors.white),
          NavBarItem(
              iconData: Icons.person,
              size: 35,
              selectedColor: Color(0xff23FFFF),
              unselectedColor: Colors.white),
        ],
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Center(
          child: _widgetOptions
              .elementAt(int.parse(currentIndex.toString().substring(0, 1))),
        ),
      ),
    );
  }
}
