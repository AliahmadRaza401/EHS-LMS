import 'package:ehs_lms/Screens/app_Screens/Navbar/sideNav/sideNav_small.dart';
import 'package:ehs_lms/widgets/header.dart';
import 'package:flutter/material.dart';

class Dummy extends StatefulWidget {
  const Dummy({Key? key}) : super(key: key);

  @override
  _DummyState createState() => _DummyState();
}

class _DummyState extends State<Dummy> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: RadialGradient(
            center: Alignment(-0.76, -0.8),
            radius: 0.4,
            colors: [
              Color(0xffffffff),
              Color(0xff6EB7C6),
            ],
            stops: <double>[0.0, 1.0],
          ),
        ),
        child: Column(
          children: [
            Row(
              children: [
                Header(context),
              ],
            ),
            body(),
          ],
        ),
      ),
    );
  }

  Widget body() {
    return Container(
      width: MediaQuery.of(context).size.width * .97,
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 30),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30), topRight: Radius.circular(30)),
              color: Color(0xff558D98),
            ),
            child: Row(
              children: [
                Column(
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.home,
                          color: Colors.white,
                          size: 20,
                        ),
                        Text(
                          "Home",
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  width: 20,
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.supervised_user_circle_rounded,
                          color: Colors.white,
                          size: 20,
                        ),
                        Text(
                          "Profile",
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  width: 20,
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.social_distance,
                          color: Colors.white,
                          size: 20,
                        ),
                        Text(
                          "Social Learning",
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            child: Row(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * .1,
                  height: MediaQuery.of(context).size.height * .68,
                  child: SideNavSmall(),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * .87,
                  height: MediaQuery.of(context).size.height * .68,
                  child: content(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget content() {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * 0.02, ),
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 10),
            width: MediaQuery.of(context).size.width * .83,
            height: MediaQuery.of(context).size.height * .048,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Colors.white.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(0, 3), // changes position of shadow
                ),
              ],
            ),
            child: TextField(
              decoration: InputDecoration(
                suffixIcon: Icon(Icons.search),
                border: OutlineInputBorder(),
                hintText: 'search for text(case sensitive)',
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * .62,
            child: ListView(
              children: <Widget>[
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 45,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6),
                        border: Border.all(color: Colors.grey),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  CircleAvatar(
                                    radius: 15,
                                    child: Icon(
                                      Icons.done,
                                      color: Colors.white,
                                    ),
                                    backgroundColor: Color(0xffAEAEAE),
                                  ),
                                ],
                              ),
                              SizedBox(width: 7),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [Text("General Discussion")],
                              ),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.arrow_forward,
                                color: Color(0xff6EB7C6),
                                size: 40,
                              )
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
                SizedBox(height: 4),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 45,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6),
                        border: Border.all(color: Color(0xff707070)),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  CircleAvatar(
                                      radius: 15,
                                      child: Icon(
                                        Icons.done,
                                        color: Colors.white,
                                      ),
                                      backgroundColor: Color(0xffAEAEAE)),
                                ],
                              ),
                              SizedBox(width: 7),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "ENG4U: Grade 12 English",
                                    style: TextStyle(fontSize: 15),
                                  ),
                                  Text(
                                    "Grade 12",
                                    style: TextStyle(color: Color(0xff6EB7C6)),
                                  )
                                ],
                              ),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.arrow_forward,
                                color: Color(0xff6EB7C6),
                                size: 40,
                              )
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
                SizedBox(height: 4),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 45,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6),
                        border: Border.all(color: Color(0xff707070)),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  CircleAvatar(
                                      radius: 15,
                                      child: Icon(
                                        Icons.done,
                                        color: Colors.white,
                                      ),
                                      backgroundColor: Color(0xffAEAEAE)),
                                ],
                              ),
                              SizedBox(width: 7),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "MHF4U: Advanced Fucntions, Grade",
                                    style: TextStyle(fontSize: 13),
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        " University Preparation",
                                        style: TextStyle(fontSize: 13),
                                      ),
                                      Text(
                                        "Class 2021",
                                        style:
                                            TextStyle(color: Color(0xff6EB7C6)),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.arrow_forward,
                                color: Color(0xff6EB7C6),
                                size: 40,
                              )
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
                SizedBox(height: 4),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 45,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6),
                        border: Border.all(color: Color(0xff707070)),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  CircleAvatar(
                                      radius: 15,
                                      child: Icon(
                                        Icons.done,
                                        color: Colors.white,
                                      ),
                                      backgroundColor: Color(0xffAEAEAE)),
                                ],
                              ),
                              SizedBox(width: 7),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "SPH4U: Grade 12, Physics University",
                                    style: TextStyle(fontSize: 13),
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        " Preparation",
                                        style: TextStyle(fontSize: 13),
                                      ),
                                      Text(
                                        "Class 2021-Grade 12",
                                        style:
                                            TextStyle(color: Color(0xff6EB7C6)),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.arrow_forward,
                                color: Color(0xff6EB7C6),
                                size: 40,
                              )
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
                SizedBox(height: 4),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 45,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6),
                        border: Border.all(color: Color(0xff707070)),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  CircleAvatar(
                                      radius: 15,
                                      child: Icon(
                                        Icons.done,
                                        color: Colors.white,
                                      ),
                                      backgroundColor: Color(0xffAEAEAE)),
                                ],
                              ),
                              SizedBox(width: 7),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "MHF4U: Advanced Fucntions, Grade",
                                    style: TextStyle(fontSize: 13),
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        " University Preparation",
                                        style: TextStyle(fontSize: 13),
                                      ),
                                      Text(
                                        "Class 2021",
                                        style:
                                            TextStyle(color: Color(0xff6EB7C6)),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.arrow_forward,
                                color: Color(0xff6EB7C6),
                                size: 40,
                              )
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
                SizedBox(height: 4),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 45,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6),
                        border: Border.all(color: Color(0xff707070)),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  CircleAvatar(
                                      radius: 15,
                                      child: Icon(
                                        Icons.done,
                                        color: Colors.white,
                                      ),
                                      backgroundColor: Color(0xffAEAEAE)),
                                ],
                              ),
                              SizedBox(width: 7),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "MCV4U: Calculus and Vectors",
                                    style: TextStyle(fontSize: 13),
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        "Class 2021-Grade 12",
                                        style:
                                            TextStyle(color: Color(0xff6EB7C6)),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.arrow_forward,
                                color: Color(0xff6EB7C6),
                                size: 40,
                              )
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 4,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 45,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6),
                        border: Border.all(color: Color(0xff707070)),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  CircleAvatar(
                                      radius: 15,
                                      child: Icon(
                                        Icons.done,
                                        color: Colors.white,
                                      ),
                                      backgroundColor: Color(0xffAEAEAE)),
                                ],
                              ),
                              SizedBox(width: 7),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "ENG4U: Grade 12 English",
                                    style: TextStyle(fontSize: 15),
                                  ),
                                  Text(
                                    "Grade 12",
                                    style: TextStyle(color: Color(0xff6EB7C6)),
                                  )
                                ],
                              ),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.arrow_forward,
                                color: Color(0xff6EB7C6),
                                size: 40,
                              )
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
                SizedBox(height: 4),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 45,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6),
                        border: Border.all(color: Color(0xff707070)),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  CircleAvatar(
                                      radius: 15,
                                      child: Icon(
                                        Icons.done,
                                        color: Colors.white,
                                      ),
                                      backgroundColor: Color(0xffAEAEAE)),
                                ],
                              ),
                              SizedBox(width: 7),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "ENG4U: Grade 12 English",
                                    style: TextStyle(fontSize: 15),
                                  ),
                                  Text(
                                    "Grade 12",
                                    style: TextStyle(color: Color(0xff6EB7C6)),
                                  )
                                ],
                              ),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.arrow_forward,
                                color: Color(0xff6EB7C6),
                                size: 40,
                              )
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
                SizedBox(height: 4),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 45,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6),
                        border: Border.all(color: Color(0xff707070)),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  CircleAvatar(
                                      radius: 15,
                                      child: Icon(
                                        Icons.done,
                                        color: Colors.white,
                                      ),
                                      backgroundColor: Color(0xffAEAEAE)),
                                ],
                              ),
                              SizedBox(width: 7),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "ENG4U: Grade 12 English",
                                    style: TextStyle(fontSize: 15),
                                  ),
                                  Text(
                                    "Grade 12",
                                    style: TextStyle(color: Color(0xff6EB7C6)),
                                  )
                                ],
                              ),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.arrow_forward,
                                color: Color(0xff6EB7C6),
                                size: 40,
                              )
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
                SizedBox(height: 4),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 45,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6),
                        border: Border.all(color: Color(0xff707070)),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  CircleAvatar(
                                      radius: 15,
                                      child: Icon(
                                        Icons.done,
                                        color: Colors.white,
                                      ),
                                      backgroundColor: Color(0xffAEAEAE)),
                                ],
                              ),
                              SizedBox(width: 7),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "ENG4U: Grade 12 English",
                                    style: TextStyle(fontSize: 15),
                                  ),
                                  Text(
                                    "Grade 12",
                                    style: TextStyle(color: Color(0xff6EB7C6)),
                                  )
                                ],
                              ),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.arrow_forward,
                                color: Color(0xff6EB7C6),
                                size: 40,
                              )
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
                SizedBox(height: 4),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 45,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6),
                        border: Border.all(color: Color(0xff707070)),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  CircleAvatar(
                                      radius: 15,
                                      child: Icon(
                                        Icons.done,
                                        color: Colors.white,
                                      ),
                                      backgroundColor: Color(0xffAEAEAE)),
                                ],
                              ),
                              SizedBox(width: 7),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "ENG4U: Grade 12 English",
                                    style: TextStyle(fontSize: 15),
                                  ),
                                  Text(
                                    "Grade 12",
                                    style: TextStyle(color: Color(0xff6EB7C6)),
                                  )
                                ],
                              ),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.arrow_forward,
                                color: Color(0xff6EB7C6),
                                size: 40,
                              )
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
                SizedBox(height: 4),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 45,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6),
                        border: Border.all(color: Color(0xff707070)),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  CircleAvatar(
                                      radius: 15,
                                      child: Icon(
                                        Icons.done,
                                        color: Colors.white,
                                      ),
                                      backgroundColor: Color(0xffAEAEAE)),
                                ],
                              ),
                              SizedBox(width: 7),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "ENG4U: Grade 12 English",
                                    style: TextStyle(fontSize: 15),
                                  ),
                                  Text(
                                    "Grade 12",
                                    style: TextStyle(color: Color(0xff6EB7C6)),
                                  )
                                ],
                              ),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.arrow_forward,
                                color: Color(0xff6EB7C6),
                                size: 40,
                              )
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
                SizedBox(height: 4),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 45,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6),
                        border: Border.all(color: Color(0xff707070)),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  CircleAvatar(
                                      radius: 15,
                                      child: Icon(
                                        Icons.done,
                                        color: Colors.white,
                                      ),
                                      backgroundColor: Color(0xffAEAEAE)),
                                ],
                              ),
                              SizedBox(width: 7),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "ENG4U: Grade 12 English",
                                    style: TextStyle(fontSize: 15),
                                  ),
                                  Text(
                                    "Grade 12",
                                    style: TextStyle(color: Color(0xff6EB7C6)),
                                  )
                                ],
                              ),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.arrow_forward,
                                color: Color(0xff6EB7C6),
                                size: 40,
                              )
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
                SizedBox(height: 4),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 45,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6),
                        border: Border.all(color: Color(0xff707070)),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  CircleAvatar(
                                      radius: 15,
                                      child: Icon(
                                        Icons.done,
                                        color: Colors.white,
                                      ),
                                      backgroundColor: Color(0xffAEAEAE)),
                                ],
                              ),
                              SizedBox(width: 7),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "ENG4U: Grade 12 English",
                                    style: TextStyle(fontSize: 15),
                                  ),
                                  Text(
                                    "Grade 12",
                                    style: TextStyle(color: Color(0xff6EB7C6)),
                                  )
                                ],
                              ),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.arrow_forward,
                                color: Color(0xff6EB7C6),
                                size: 40,
                              )
                            ],
                          )
                        ],
                      ),
                    )
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
