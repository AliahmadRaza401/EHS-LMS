import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: RadialGradient(
            radius: 0.9,
            colors: [
              Color(0xffffffff),
              Color(0xff6EB7C6),
            ],
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/images/logo.png",
                  width: MediaQuery.of(context).size.width * 0.4,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [centerContainer()],
            ),
          ],
        ),
      ),
    );
  }

  Widget centerContainer() {
    return Container(
      width: MediaQuery.of(context).size.width * 0.7,
      height: MediaQuery.of(context).size.height * 0.4,
      decoration: BoxDecoration(
        gradient: RadialGradient(
          radius: 0.9,
          colors: [
            Color(0xff23FFFF).withOpacity(0.68),
            Color(0xff2D91A5).withOpacity(0.68),
          ],
        ),
        borderRadius: BorderRadius.circular(25),
      ),
      child: Column(
        children: [
          TextField(
            // controller: _controller,
            decoration: InputDecoration(
              hintText: "Enter a message",
              suffixIcon: Icon(Icons.clear),
            ),
          ),
          ElevatedButton(
            onPressed: () {},
            child: Text("SignIn"),
          ),
        ],
      ),
    );
  }
}
