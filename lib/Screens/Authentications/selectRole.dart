import 'package:ehs_lms/widgets/auth_bg.dart';
import 'package:flutter/material.dart';

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
          auth_bg(context),
          Column(),
        ],
      ),
    );
  }
}

// Row(
//   children: [
//     OutlinedButton(
//       onPressed: () {
//         Navigator.of(context).push(
//           MaterialPageRoute(
//             builder: (context) => Login(),
//           ),
//         );
//       },
//       child: Text("Hi"),
//     ),
//   ],
// ),
