import 'package:auto_size_text/auto_size_text.dart';
import 'package:ehs_lms/Screens/Authentications/passwordChange.dart';
import 'package:ehs_lms/widgets/login_bg.dart';
import 'package:flutter/material.dart';
import 'package:pinput/pin_put/pin_put.dart';

final _formKey = GlobalKey<FormState>();
final pinController = TextEditingController();
final pinFocusNode = FocusNode();

class VerifyEmail extends StatefulWidget {
  const VerifyEmail({Key? key}) : super(key: key);

  @override
  _VerifyEmailState createState() => _VerifyEmailState();
}

class _VerifyEmailState extends State<VerifyEmail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          loginBg(context),
          centerContainer(context),
        ],
      ),
    );
  }
}

Widget centerContainer(BuildContext context) {
  return SingleChildScrollView(
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
                  "Verify your Email",
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
                  width: MediaQuery.of(context).size.width * .84,
                  height: MediaQuery.of(context).size.height * .36,
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
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Flexible(
                            child: Padding(
                              padding: EdgeInsets.only(
                                top: 10.0,
                                bottom: 20.0,
                              ),
                              child: AutoSizeText(
                                "Please enter the 4 digit code sent to your email address",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16.0,
                                ),
                                textAlign: TextAlign.center,
                                maxLines: 2,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Flexible(
                            child: pinCode(),
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
                                      builder: (context) => PasswordChange(),
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
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                              top: 8.0,
                            ),
                            child: Text(
                              "Resend Code",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 13.0,
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
  );
}

Widget pinCode() {
  final BoxDecoration pinDecoration = BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(9.0),
  );

  return Padding(
    padding: EdgeInsets.symmetric(
      vertical: 10.0,
      horizontal: 20.0,
    ),
    child: PinPut(
      fieldsCount: 4,
      withCursor: true,
      textStyle: TextStyle(
        fontSize: 25.0,
        color: Color(0xffaeaeae),
      ),
      eachFieldWidth: 40.0,
      eachFieldHeight: 55.0,
      // onSubmit: (String pin) => _showSnackBar(pin),
      focusNode: pinFocusNode,
      controller: pinController,
      submittedFieldDecoration: pinDecoration,
      selectedFieldDecoration: pinDecoration,
      followingFieldDecoration: pinDecoration,
      pinAnimationType: PinAnimationType.fade,
    ),
  );
}
