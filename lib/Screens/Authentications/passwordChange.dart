import 'package:auto_size_text/auto_size_text.dart';
import 'package:ehs_lms/Screens/app_Screens/home.dart';
import 'package:ehs_lms/widgets/changePassword_bg.dart';
import 'package:flutter/material.dart';

final _formKey = GlobalKey<FormState>();
final password = TextEditingController();
final cPassword = TextEditingController();

class PasswordChange extends StatefulWidget {
  const PasswordChange({Key? key}) : super(key: key);

  @override
  _PasswordChangeState createState() => _PasswordChangeState();
}

class _PasswordChangeState extends State<PasswordChange> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          changePasswordBg(context),
          centerContainer(context),
        ],
      ),
    );
  }
}

Widget centerContainer(BuildContext context) {
  return Center(
    child: SingleChildScrollView(
      child: Form(
        key: _formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(
                top: MediaQuery.of(context).size.height * .04,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/logo.png',
                    color: Colors.white,
                    height: MediaQuery.of(context).size.height * .24,
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: MediaQuery.of(context).size.height * .04,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  AutoSizeText(
                    "Reset Password",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                    ),
                    maxLines: 1,
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: MediaQuery.of(context).size.height * .06,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * .86,
                    height: MediaQuery.of(context).size.height * .34,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(36.0),
                      gradient: RadialGradient(
                        radius: .8,
                        colors: [
                          Color(0xffB6DBE3).withOpacity(0.8),
                          Color(0xff2D91A5).withOpacity(0.8),
                        ],
                      ),
                      border: Border.all(
                        color: Colors.white,
                        width: 1.4,
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
                      vertical: MediaQuery.of(context).size.height * .03,
                      horizontal: MediaQuery.of(context).size.width * .12,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Row(
                          children: [
                            Flexible(
                              child: passwordBar(context, password),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Flexible(
                              child: passwordBar(context, cPassword),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Flexible(
                              child: Padding(
                                padding: EdgeInsets.only(bottom: 10.0),
                                child: AutoSizeText(
                                  "",
                                  style: TextStyle(
                                    color: Color(0xffC91818),
                                    fontSize: 15.0,
                                  ),
                                  maxLines: 1,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Flexible(
                              child: Container(
                                width: MediaQuery.of(context).size.width * 1,
                                height: 50.0,
                                child: OutlinedButton(
                                  onPressed: () {
                                    Navigator.of(context).push(
                                      MaterialPageRoute(
                                        builder: (context) => HomeScreen(),
                                      ),
                                    );
                                  },
                                  child: AutoSizeText(
                                    "Confirm",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16.0,
                                    ),
                                    maxLines: 1,
                                  ),
                                  style: OutlinedButton.styleFrom(
                                    side: BorderSide(
                                      color: Color(0xff707070),
                                    ),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(50.0),
                                      ),
                                    ),
                                    backgroundColor:
                                        Color(0xff14514D).withOpacity(.55),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: MediaQuery.of(context).size.height * .18,
              ),
              child: Row(
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
            ),
          ],
        ),
      ),
    ),
  );
}

//password widget
Widget passwordBar(BuildContext context, TextEditingController pass) {
  return Container(
    width: MediaQuery.of(context).size.width * 1,
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(9),
    ),
    child: TextFormField(
      initialValue: null,
      autocorrect: true,
      controller: pass,
      validator: (query) {
        if (query!.isEmpty) {
          return 'Error';
        } else {
          return null;
        }
      },
      autovalidateMode: AutovalidateMode.onUserInteraction,
      keyboardAppearance: Brightness.dark,
      keyboardType: TextInputType.name,
      style: TextStyle(
        color: Color(0xffaeaeae),
        fontSize: 15.0,
        decoration: TextDecoration.none,
      ),
      textInputAction: TextInputAction.next,
      cursorColor: Colors.white,
      cursorWidth: 2.0,
      cursorHeight: 26.0,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 20.0),
        errorStyle: TextStyle(
          fontSize: 15.0,
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white, width: 2.0),
          borderRadius: BorderRadius.circular(9.0),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white, width: 2.0),
          borderRadius: BorderRadius.circular(9.0),
        ),
        border: InputBorder.none,
        hintText: 'Password',
        hintStyle: TextStyle(
          color: Color(0xffaeaeae),
          fontSize: 15.0,
        ),
        suffixIcon: Image.asset(
          "assets/images/confirm_password_icon.png",
          color: Color(0xffaeaeae),
          width: 12.0,
          height: 12.0,
          scale: 2.0,
        ),
      ),
    ),
  );
}
