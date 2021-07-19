import 'package:auto_size_text/auto_size_text.dart';
import 'package:ehs_lms/Screens/Authentications/verifyEmail.dart';
import 'package:ehs_lms/widgets/auth_bg.dart';
import 'package:flutter/material.dart';

final email = TextEditingController();
final _formKey = GlobalKey<FormState>();

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  _ForgotPasswordState createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          auth_bg(context),
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
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * .86,
                  height: MediaQuery.of(context).size.height * .4,
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
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Forgot Password",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 23.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
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
                                "Enter the email address associated with your account",
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
                            child: emailBar(context),
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
                                      builder: (context) => VerifyEmail(),
                                    ),
                                  );
                                },
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        AutoSizeText(
                                          "Send Code",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 16.0,
                                          ),
                                          maxLines: 1,
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      width: 20.0,
                                    ),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Image.asset(
                                          "assets/images/send_code_icon.png",
                                          color: Colors.white,
                                          width: 24.0,
                                          height: 24.0,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                style: OutlinedButton.styleFrom(
                                  side: BorderSide(
                                    color: Color(0xff1EB2A6),
                                  ),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(9.0),
                                    ),
                                  ),
                                  backgroundColor: Color(0xff1EB2A6),
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
          ],
        ),
      ),
    ),
  );
}

//email widget
Widget emailBar(BuildContext context) {
  return Container(
    width: MediaQuery.of(context).size.width * 1,
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(9),
    ),
    child: TextFormField(
      initialValue: null,
      autocorrect: true,
      controller: email,
      validator: (query) {
        if (query!.isEmpty) {
          return 'Search Some Advice!';
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
        contentPadding: EdgeInsets.symmetric(vertical: 22.0, horizontal: 20.0),
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
        hintText: 'Email',
        hintStyle: TextStyle(
          color: Color(0xffaeaeae),
          fontSize: 15.0,
        ),
        suffixIcon: Icon(
          Icons.mail_outline_rounded,
          color: Color(0xffaeaeae),
        ),
      ),
    ),
  );
}
