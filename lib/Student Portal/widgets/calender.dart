import 'dart:convert';
import 'package:ehs_lms/Student%20Portal/widgets/home/homeScreenWidgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
// import 'package:syncfusion_flutter_calendar/calendar.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Calendar extends StatefulWidget {
  @override
  _CalendarState createState() => _CalendarState();
}

class _CalendarState extends State<Calendar> {
  late CalendarController _controller;
  late Map<DateTime, List<dynamic>> _events;
  late List<dynamic> _selectedEvents;
  late TextEditingController _eventController;
  late SharedPreferences prefs;

  @override
  void initState() {
    super.initState();
    _controller = CalendarController();
    _eventController = TextEditingController();
    _events = {};
    _selectedEvents = [];
    prefsData();
  }

  prefsData() async {
    prefs = await SharedPreferences.getInstance();
    setState(() {
      _events = Map<DateTime, List<dynamic>>.from(
          decodeMap(json.decode(prefs.getString("events") ?? "{}")));
    });
  }

  Map<String, dynamic> encodeMap(Map<DateTime, dynamic> map) {
    Map<String, dynamic> newMap = {};
    map.forEach((key, value) {
      newMap[key.toString()] = map[key];
    });
    return newMap;
  }

  Map<DateTime, dynamic> decodeMap(Map<String, dynamic> map) {
    Map<DateTime, dynamic> newMap = {};
    map.forEach((key, value) {
      newMap[DateTime.parse(key)] = map[key];
    });
    return newMap;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        vertical: MediaQuery.of(context).size.height * 0.02,
      ),
      padding: EdgeInsets.only(bottom: 15),
      width: MediaQuery.of(context).size.width * 0.84,
      decoration: BoxDecoration(
        color: Color(0xffB5D6D3),
        borderRadius: BorderRadius.only(
          topLeft: const Radius.circular(10.0),
          topRight: const Radius.circular(10.0),
          bottomLeft: const Radius.circular(10.0),
          bottomRight: const Radius.circular(10.0),
        ), //
      ),
      child: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width * 0.8,
            color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  color: Color(0xffB5D6D3),
                  padding: EdgeInsets.symmetric(
                    vertical: MediaQuery.of(context).size.height * 0.01,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          currentDate(Colors.white, 20.0),
                        ],
                      ),
                      Column(
                        children: [
                          ElevatedButton(
                            onPressed: showAddDialog,
                            child: Text('add Event'),
                            style: ElevatedButton.styleFrom(
                              primary: Color(0xff558D98),
                              shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.circular(8), // <-- Radius
                              ),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                TableCalendar(
                  events: _events,
                  initialCalendarFormat: CalendarFormat.week,
                  calendarStyle: CalendarStyle(
                      canEventMarkersOverflow: true,
                      todayColor: Color(0xff558D98),
                      selectedColor: Theme.of(context).primaryColor,
                      todayStyle: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18.0,
                          color: Colors.white)),
                  headerStyle: HeaderStyle(
                    centerHeaderTitle: true,
                    formatButtonDecoration: BoxDecoration(
                      color: Color(0xff558D98),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    formatButtonTextStyle: TextStyle(color: Colors.white),
                    formatButtonShowsNext: false,
                  ),
                  startingDayOfWeek: StartingDayOfWeek.monday,
                  onDaySelected: (date, events, holidays) {
                    setState(() {
                      _selectedEvents = events as List;
                    });
                  },
                  builders: CalendarBuilders(
                    selectedDayBuilder: (context, date, events) => Container(
                        margin: const EdgeInsets.all(4.0),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: Theme.of(context).primaryColor,
                            borderRadius: BorderRadius.circular(10.0)),
                        child: Text(
                          date.day.toString(),
                          style: TextStyle(color: Colors.white),
                        )),
                    todayDayBuilder: (context, date, events) => Container(
                        margin: const EdgeInsets.all(4.0),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: Color(0xff558D98),
                            borderRadius: BorderRadius.circular(10.0)),
                        child: Text(
                          date.day.toString(),
                          style: TextStyle(color: Colors.white),
                        )),
                  ),
                  calendarController: _controller,
                  endDay: null,
                  startDay: null,
                ),
                // ..._selectedEvents.map((event) => Padding(
                //       padding: const EdgeInsets.all(8.0),
                //       child: GestureDetector(

                //         child: Container(
                //           height: MediaQuery.of(context).size.height * 0.05,
                //           width: MediaQuery.of(context).size.width * 0.7,
                //           padding:
                //               EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                //           decoration: BoxDecoration(
                //               borderRadius: BorderRadius.circular(7),
                //               color: Color(0xff558D98),
                //               border: Border.all(color: Color(0xff558D98))),
                //           child: Row(
                //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //             crossAxisAlignment: CrossAxisAlignment.center,
                //             children: [
                //               Expanded(
                //                 child: Column(
                //                   children: [
                //                     Flexible(
                //                       fit: FlexFit.loose,
                //                       child: Text(
                //                         event,
                //                         maxLines: 2,
                //                         softWrap: false,
                //                         overflow: TextOverflow.fade,
                //                         style: TextStyle(
                //                             color: Colors.white,
                //                             fontWeight: FontWeight.bold,
                //                             fontSize: 16),
                //                       ),
                //                     ),
                //                   ],
                //                 ),
                //               ),
                //               Column(
                //                 children: [
                //                   GestureDetector(
                //                       onTap: () {
                //                         _selectedEvents.remove(event);
                //                       },
                //                       child: Icon(
                //                         Icons.delete,
                //                         color: Colors.red,
                //                       )),
                //                 ],
                //               ),
                //             ],
                //           ),
                //         ),
                //       ),
                //     )
                // ),
                myEvents()
              ],
            ),
          ),
        ],
      ),
    );
  }

  showAddDialog() async {
    await showDialog(
        context: context,
        builder: (context) => AlertDialog(
              backgroundColor: Colors.white,
              title: Text("Add Events"),
              content: TextField(
                controller: _eventController,
              ),
              actions: <Widget>[
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xff558D98),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8), // <-- Radius
                    ),
                  ),
                  child: Text(
                    "Save",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  onPressed: () {
                    if (_eventController.text.isEmpty) return;
                    setState(() {
                      if (_events[_controller.selectedDay] != null) {
                        _events[_controller.selectedDay]!
                            .add(_eventController.text);
                      } else {
                        _events[_controller.selectedDay] = [
                          _eventController.text
                        ];
                      }
                      prefs.setString(
                          "events", json.encode(encodeMap(_events)));
                      _eventController.clear();
                      Navigator.pop(context);
                    });
                  },
                )
              ],
            ));
  }

  Widget myEvents() {
    return SizedBox(
      height: 130,
      child: Container(
          child: ListView.builder(
        itemCount: _selectedEvents.length,
        itemBuilder: (context, index) {
          return Dismissible(
            background: stackBehindDismiss(),
            key: ObjectKey(_selectedEvents[index]),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(7),
                  color: Color(0xff558D98),
                  border: Border.all(color: Color(0xff558D98))),
              margin: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.height * 0.02,
                vertical: MediaQuery.of(context).size.width * 0.01,
              ),
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              child: Text(
                _selectedEvents[index],
                style: TextStyle(color: Colors.white, fontSize: 15),
              ),
            ),
            onDismissed: (direction) {
              var item = _selectedEvents.elementAt(index);
              //To delete
              deleteItem(index);
              //To show a snackbar with the UNDO button
              // Scaffold.of(context).showSnackBar(SnackBar(
              //     content: Text("Item deleted"),
              //     action: SnackBarAction(
              //         label: "UNDO",
              //         onPressed: () {
              //           //To undo deletion
              //           undoDeletion(index, item);
              //         })));
            },
          );
        },
      )),
    );
  }

  Widget stackBehindDismiss() {
    return Container(
      alignment: Alignment.centerRight,
      padding: EdgeInsets.only(right: 20.0),
      color: Colors.red,
      child: Icon(
        Icons.delete,
        color: Colors.white,
      ),
    );
  }

  void deleteItem(index) {
    /*
    By implementing this method, it ensures that upon being dismissed from our widget tree, 
    the item is removed from our list of items and our list is updated, hence
    preventing the "Dismissed widget still in widget tree error" when we reload.
    */
    setState(() {
      _selectedEvents.removeAt(index);
    });
  }

  void undoDeletion(index, item) {
    /*
    This method accepts the parameters index and item and re-inserts the {item} at
    index {index}
    */
    setState(() {
      _selectedEvents.insert(index, item);
    });
  }
}
