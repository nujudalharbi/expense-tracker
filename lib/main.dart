import 'dart:ffi';

import 'package:expense_tracker/goals_page.dart';
import 'package:flutter/material.dart';

import 'popUp.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColorLight: Color.fromRGBO(0, 71, 147, 1),
        // primarySwatch: Colors.blue,
      ),
      home: const MyGoals(),
    );
  }
}
////////////////

