import 'package:flutter/material.dart';
class MyTranaction extends StatelessWidget {
  final String tranactionName;
  final String money ;
  final String expenseOrIncome;
  MyTranaction({Key? key, required this.tranactionName, required this.money, required this.expenseOrIncome}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(5),
      child: Container(
        padding: EdgeInsets.all(10),
        height: 50,
        color: Colors.blue[50],
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(Icons.shopping_cart),
              Text(tranactionName),


              Text((expenseOrIncome == "expense" ? "-" : "+") + money+ "SR" ,style: TextStyle(color: (expenseOrIncome == 'expense' ? Colors.red : Colors.green)),),
            ],
          ),

        ),

      ),
    );
  }
}
