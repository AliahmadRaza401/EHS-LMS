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
      backgroundColor: Colors.green,
      body: Column(
        children: [
          Row(
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * 1,
                height: MediaQuery.of(context).size.height * .2,
                child: ColoredBox(
                  color: Colors.amber,
                ),
              ),
            ],
          ),
          Row(
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * .14,
                height: MediaQuery.of(context).size.height * .8,
                child: ColoredBox(
                  color: Colors.pink,
                  // child: Column(
                  //   children: [],
                  // ),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * .86,
                height: MediaQuery.of(context).size.height * .8,
                child: ColoredBox(
                  color: Colors.blue,
                  // child: Column(
                  //   children: [],
                  // ),
                ),
              ),
            ],
          ),
          Row(
            children: [],
          ),
        ],
      ),
    );
  }
}
