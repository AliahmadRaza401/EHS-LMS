import 'package:auto_size_text/auto_size_text.dart';
import 'package:ehs_lms/widgets/selectRoleBg.dart';
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
          selectRoleBg(context),
          Padding(
            padding: EdgeInsets.only(
              top: MediaQuery.of(context).size.height * .4,
              bottom: MediaQuery.of(context).size.height * .02,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * .86,
                      height: MediaQuery.of(context).size.height * .34,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(36.0),
                        border: Border.all(
                          color: Colors.white,
                          width: 1.6,
                        ),
                        gradient: RadialGradient(
                          radius: 0.86,
                          colors: [
                            Color(0xff23FFFF),
                            Color(0xff6EB7C6),
                          ],
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(.4),
                            spreadRadius: 2,
                            blurRadius: 6,
                            offset: Offset(0, 3),
                          ),
                        ],
                      ),
                      padding: EdgeInsets.symmetric(
                        vertical: MediaQuery.of(context).size.height * .04,
                        horizontal: MediaQuery.of(context).size.width * .12,
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    AutoSizeText(
                      "Version 1.0 @ Copyright",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16.0,
                      ),
                      maxLines: 1,
                    ),
                  ],
                ),
              ],
            ),
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
