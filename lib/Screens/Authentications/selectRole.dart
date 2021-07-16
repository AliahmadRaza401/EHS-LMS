import 'package:ehs_lms/Screens/Authentications/login.dart';
import 'package:flutter/material.dart';

class SelectRole extends StatefulWidget {
  // SelectRole({Key? key}) : super(key: key);

  @override
  _SelectRoleState createState() => _SelectRoleState();
}

class _SelectRoleState extends State<SelectRole> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          OutlinedButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => Login(),
                ),
              );
            },
            child: Text("Hi"),
          ),
        ],
      ),
    );
  }
}
