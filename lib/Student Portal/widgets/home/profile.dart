import 'package:flutter/material.dart';

Widget profile(BuildContext context) {
  return Container(
    decoration: BoxDecoration(
        color: Colors.white, borderRadius: BorderRadius.circular(10)),
    height: MediaQuery.of(context).size.height * 0.32,
    width: MediaQuery.of(context).size.width * .96,
    child: Column(
      children: [
        Row(
          children: [
            Icon(
              Icons.person,
              color: Color(0xff6EB7C6),
              size: 50,
            ),
            Text(
              "Profile",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff606368)),
            ),
            Text("(Student)", style: TextStyle(color: Color(0xff606368)))
          ],
        ),
        Row(
          children: [
            Container(
              color: Color(0xffEEF1F2),
              padding: EdgeInsets.all(10),
              width: MediaQuery.of(context).size.width * 0.48,
              height: MediaQuery.of(context).size.height * 0.19,
              child: Column(
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                          backgroundImage: AssetImage('assets/images/dp.png')),
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        "John doe",
                        style: TextStyle(color: Color(0xff606163)),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      Text(
                        "Academic Details",
                        style: TextStyle(fontSize: 17),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      Text(
                        "First Name: John",
                        style: TextStyle(fontSize: 13),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      Text(
                        "Last Name: doe",
                        style: TextStyle(fontSize: 13),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      Text(
                        "Admission no: 123456",
                        style: TextStyle(fontSize: 13),
                      )
                    ],
                  )
                ],
              ),
            ),
            Column(
              children: [
                Container(
                  color: Color(0xffB8D7E2),
                  width: MediaQuery.of(context).size.width * 0.48,
                  height: MediaQuery.of(context).size.height * 0.05,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Product support"),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  color: Color(0xffD1F0FB),
                  width: MediaQuery.of(context).size.width * 0.48,
                  height: MediaQuery.of(context).size.height * 0.14,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(Icons.wb_sunny,
                              size: 20, color: Color(0xff707070)),
                          SizedBox(width: 10),
                          Text(
                            "Knowldege Base",
                            style: TextStyle(
                                color: Color(0xff707070), fontSize: 15),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(Icons.call, size: 20, color: Color(0xff707070)),
                          SizedBox(width: 10),
                          Text(
                            "Contact Support",
                            style: TextStyle(
                                color: Color(0xff707070), fontSize: 15),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(Icons.settings,
                              size: 20, color: Color(0xff707070)),
                          SizedBox(width: 10),
                          Text(
                            "Personal Settings",
                            style: TextStyle(
                                color: Color(0xff707070), fontSize: 15),
                          )
                        ],
                      ),
                    ],
                  ),
                )
              ],
            )
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  primary: Color(0xff6EB7C6),
                  shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(8.0),
                  ),
                ),
                child: Row(
                  children: [
                    Icon(Icons.person),
                    SizedBox(
                      width: 10,
                    ),
                    Text("My Profile",
                        style: TextStyle(fontWeight: FontWeight.bold))
                  ],
                )),
            ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  primary: Color(0xff6EB7C6),
                  padding: EdgeInsets.only(left: 30, right: 30),
                  shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(8.0),
                  ),
                ),
                child: Row(
                  children: [
                    Icon(Icons.logout_rounded),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Logout",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )
                  ],
                )),
          ],
        ),
      ],
    ),
  );
}
