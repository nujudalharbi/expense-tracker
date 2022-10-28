import 'dart:ui';
import 'package:intl/intl.dart';
import 'package:custom_date_range_picker/custom_date_range_picker.dart';
// import 'DatePicker/custom_calendar.dart';
// import 'DatePicker/custom_date_range_picker.dart';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class MyGoals extends StatefulWidget {
  const MyGoals({super.key});

  @override
  State<MyGoals> createState() => _MyGoalsState();
}

var myController1 = TextEditingController();
String? GoalName;

var myController2 = TextEditingController();
String? saving_amount;

var myController3 = TextEditingController();
String? monthly_amount;

class _MyGoalsState extends State<MyGoals> {
  DateTime? startDate;
  DateTime? endDate;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        elevation: 1,
        title: Text(
          'Goal',
          style: TextStyle(
              // fontSize: 15,
              color: Color.fromRGBO(0, 71, 147, 1),
              fontWeight: FontWeight.bold),
        ),
        // leading: BackButton(
        //   onPressed: () {},
        //   color: Color.fromRGBO(0, 71, 147, 1),
        // ),
      ),
      body: Container(
        padding: EdgeInsets.all(35),
        child: Column(children: [
          Row(
            children: [
              Text(
                "Goal name ",
                style: TextStyle(
                  fontSize: 25,
                  color: Color.fromRGBO(0, 71, 147, 1),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          Container(
            // color: Colors.amberAccent,
            // alignment: Alignment.center,
            //  padding: EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextField(
                  controller: myController1,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color.fromRGBO(217, 227, 239, 1),
                    border: OutlineInputBorder(),
                    hintText: 'Enter your goal',
                  ),
                ),
                SizedBox(height: 10),
//////////////////

                ///
                Text(
                  'Choose a date Range',
                  style: TextStyle(
                      fontSize: 20,
                      color: Color.fromRGBO(0, 71, 147, 1),
                      fontWeight: FontWeight.bold),
                ),

                Container(
                    alignment: Alignment.center,
                    //   color: Colors.amberAccent,
                    child: Column(
                      children: [
                        const SizedBox(height: 10),
                        TextButton(
                          onPressed: () {
                            showCustomDateRangePicker(
                              context,
                              dismissible: true,
                              minimumDate: DateTime.now(),
                              maximumDate:
                                  DateTime.now().add(const Duration(days: 30)),
                              endDate: endDate,
                              startDate: startDate,
                              onApplyClick: (start, end) {
                                setState(() {
                                  endDate = end;
                                  startDate = start;
                                });
                              },
                              onCancelClick: () {
                                setState(() {
                                  endDate = null;
                                  startDate = null;
                                });
                              },
                            );
                          },
                          // tooltip: 'choose date Rangellll',
                          child: Icon(Icons.calendar_month,
                              color: Color.fromRGBO(0, 71, 147, 1)),
                        ),
                        SizedBox(height: 10),
                        Text(
                          '${startDate != null ? DateFormat("dd, MMM").format(startDate!) : '-'} / ${endDate != null ? DateFormat("dd, MMM").format(endDate!) : '-'}',
                          style: const TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 18,
                            color: Color.fromRGBO(0, 71, 147, 1),
                          ),
                        ),
                      ],
                    )),
/////////////////
                SizedBox(height: 10),

                Text(
                  "Saving amount",
                  style: TextStyle(
                    fontSize: 20,
                    color: Color.fromRGBO(0, 71, 147, 1),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10),
                TextField(
                  controller: myController2,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color.fromRGBO(217, 227, 239, 1),
                    border: InputBorder.none,
                    hintText: 'Enter your amount',
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  "Monthly cut",
                  style: TextStyle(
                    fontSize: 20,
                    color: Color.fromRGBO(0, 71, 147, 1),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10),
                TextField(
                  controller: myController3,
                  decoration: InputDecoration(
                    //   filled: true,
                    fillColor: Color.fromRGBO(217, 227, 239, 1),
                    border: OutlineInputBorder(),
                    hintText: 'Enter your amount',
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  "Note",
                  style: TextStyle(
                    fontSize: 20,
                    color: Color.fromRGBO(0, 71, 147, 1),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10),
                TextField(
                  cursorHeight: 20,
                  style: TextStyle(height: 5),
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color.fromRGBO(217, 227, 239, 1),
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Color.fromRGBO(0, 71, 147, 1),
                    minimumSize: const Size.fromHeight(50),
                  ),
                  onPressed: () {
                    setState(() {
                      print(myController1.text);
                      print(myController2.text);
                      print(myController3.text);
                    });
                  },
                  child: Text(
                    'Save',
                    style: TextStyle(fontSize: 25),
                  ),
                ),
              ],
            ),
          )
        ]),
      ),
    );
  }
}
