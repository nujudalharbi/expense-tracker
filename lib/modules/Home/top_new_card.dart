
import 'package:flutter/material.dart';

class TopNewCard extends StatelessWidget {
  final String balance;
  final String saving ;
  final String spent ;
  TopNewCard({Key? key, required this.balance, required this.saving, required this.spent}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(

        height: 200,
        color: Colors.blue[50],
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              " b a l an c e",
              style: TextStyle(color: Colors.black, fontSize: 20),
            ),
            Text(
              balance,
              style: TextStyle(color: Colors.blue, fontSize: 20),
            ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Icon(Icons.arrow_upward),
                Column(
                  children: [
                    Text("saving"),
                    Text(saving  ,style: TextStyle(color: Colors.green, fontSize: 20),),
                  ],
                ),
              ],
            ),
            Row(
              children: [
                Icon(Icons.arrow_downward),
                Column(
                  children: [
                    Text("spent"),
                    Text(spent ,  style: TextStyle(color: Colors.red, fontSize: 20),),
                  ],
                ),
              ],
            )
          ],
        ),
  ],
        ),
      ),
    );
  }
}

