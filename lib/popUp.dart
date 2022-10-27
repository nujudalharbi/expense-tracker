import 'dart:ui';

import 'package:flutter/material.dart';

class MyProfile extends StatefulWidget {
  const MyProfile({super.key});

  @override
  State<MyProfile> createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        elevation: 1, // الضل الي تحت الباr
      ),
      body: Container(
          child: ElevatedButton(
        // الزر الخارجي "للتجريب "
        onPressed: () {
          showDialog(
              context: context,
              builder: (context) => AlertDialog(
                    content: Container(
                        alignment: Alignment.center,
                        height: 200,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                OutlinedButton(
                                  onPressed: () {},
                                  style: OutlinedButton.styleFrom(
                                    fixedSize: Size.fromWidth(100),
                                    side: BorderSide(
                                        width: 1.0,
                                        color: Color.fromRGBO(0, 71, 147, 1)),
                                  ),
                                  child: Text(
                                    'Expenses',
                                    style: TextStyle(
                                        fontSize: 12,
                                        color: Color.fromRGBO(0, 71, 147, 1),
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                OutlinedButton(
                                  onPressed: () {},
                                  style: OutlinedButton.styleFrom(
                                    fixedSize: Size.fromWidth(100),
                                    side: BorderSide(
                                        width: 1.0,
                                        color: Color.fromRGBO(0, 71, 147, 1)),
                                  ),
                                  child: Text(
                                    'Goals',
                                    style: TextStyle(
                                        fontSize: 12,
                                        color: Color.fromRGBO(0, 71, 147, 1),
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ],
                            )
                          ],
                        )),
                  ));
        },
        child: Text('Button'),
      )),
    );
  }
}
