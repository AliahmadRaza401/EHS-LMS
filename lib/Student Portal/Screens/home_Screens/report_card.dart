import 'package:flutter/material.dart';

class ReportCard extends StatefulWidget {
  ReportCard({Key? key}) : super(key: key);

  @override
  _ReportCardState createState() => _ReportCardState();
}

class _ReportCardState extends State<ReportCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("Report Card"),
    );
  }
}
