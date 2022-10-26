import 'package:flutter/material.dart';
import 'package:expense_tracker/modules/Home/home-screen.dart';
import 'package:expense_tracker/modules/Profile/profile-screen.dart';
import 'package:expense_tracker/modules/charts/charts-screen.dart';

class HomeLayout extends StatefulWidget {
  const HomeLayout({super.key});

  @override
  State<HomeLayout> createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> {
  int currentIndex = 0;
  List<Widget> screens = [
    HomeScreen(),
    ChartScreen(),
    ProfileScreen(),
  ];

  List<String> titles = [
    "Home page",
    "Charts page",
    "Profile page",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(titles[currentIndex]),
      ),
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: currentIndex,
          onTap: (value) => setState(() {
                currentIndex = value;
              }), //يعلمني انا  قاعده اضغط على ايش
          // ignore: prefer_const_literals_to_create_immutables
          items: [
            // need icon and label
            // ignore: prefer_const_constructors
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.add_chart), label: 'Chart'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
          ]),
    );
  }
}
