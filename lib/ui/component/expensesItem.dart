import 'package:flutter/material.dart';


import '../../data/model/exoenses_model.dart';


Widget expensesItem(Expenses expenses, BuildContext context) {
  return Container(
    padding: EdgeInsets.all(16),
    color: Color.fromARGB(255, 241, 237, 231),
    child: GridTile(
        child: Row(
          //mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(
              expenses.icon!,
              //color: Color.fromRGBO(0, 71, 147, 1),
              color: expenses.color!,
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              "${expenses.typeExpenses}",
              style: TextStyle(fontSize: 15),
              //textAlign: TextAlign.center,
            ),
          ],
        ),
        footer: Container(
            alignment: Alignment.bottomLeft,
            child: IconButton(
                onPressed: () {
                  print("you click");
                  showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                        title: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              expenses.icon!,
                              //color: Color.fromRGBO(0, 71, 147, 1),
                              color: expenses.color!,
                            ),
                            SizedBox(width: 10),
                            Text("${expenses.typeExpenses}"),
                            SizedBox(height: 10),
                          ],
                        ),
                        content: TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: 'Enter a search term',
                          ),
                        ),
                        actions: [
                          Container(
                            color: Color.fromRGBO(0, 71, 147, 1),
                            alignment: Alignment.center,
                            child: ElevatedButton(
                                style: ButtonStyle(
                                  backgroundColor:
                                  MaterialStatePropertyAll<Color>(
                                      Color.fromRGBO(0, 71, 147, 1)),
                                ),
                                onPressed: () {},
                                child: Text("Save")),
                          )
                        ],
                      ));
                },
                icon: Icon(Icons.add)))),
  );
}

