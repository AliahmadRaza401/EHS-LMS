import 'package:auto_size_text/auto_size_text.dart';
import 'package:ehs_lms/widgets/auth_bg.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'login.dart';

class SelectRole extends StatefulWidget {
  SelectRole({Key? key}) : super(key: key);

  @override
  _SelectRoleState createState() => _SelectRoleState();
}

class _SelectRoleState extends State<SelectRole> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          authBg(context),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * .86,
                    height: MediaQuery.of(context).size.height * .34,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(36.0),
                      gradient: RadialGradient(
                        radius: 0.9,
                        colors: [
                          Color(0xff23FFFF).withOpacity(0.68),
                          Color(0xff2D91A5).withOpacity(0.68),
                        ],
                      ),
                    ),
                    padding: EdgeInsets.symmetric(
                      vertical: MediaQuery.of(context).size.height * .04,
                      horizontal: MediaQuery.of(context).size.width * .14,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        loginPattern(
                          context,
                          "assets/images/student_auth_icon.png",
                          "Student",
                        ),
                        Divider(
                          color: Colors.white,
                        ),
                        loginPattern(
                          context,
                          "assets/images/teacher_auth_icon.png",
                          "Teacher",
                        ),
                        Divider(
                          color: Colors.white,
                        ),
                        loginPattern(
                          context,
                          "assets/images/parent_auth_icon.png",
                          "Parents",
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

Widget loginPattern(BuildContext context, String typeIcon, type) {
  return GestureDetector(
    onTap: () {
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => Login(),
        ),
      );
    },
    child: Padding(
      padding: EdgeInsets.symmetric(vertical: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Image.asset(
                typeIcon,
                color: Colors.white,
                width: 22.0,
                height: 22.0,
              ),
            ],
          ),
          Column(
            children: [
              AutoSizeText(
                "Sign in as $type",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 22.0,
                ),
              ),
            ],
          ),
          Column(
            children: [
              Image.asset(
                "assets/images/next_auth.png",
                color: Colors.white,
                width: 18.0,
                height: 18.0,
              ),
            ],
          ),
        ],
      ),
    ),
  );
}
