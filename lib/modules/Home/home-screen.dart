import 'package:expense_tracker/modules/Home/top_new_card.dart';
import 'package:expense_tracker/modules/Home/transaction.dart';
import 'package:flutter/material.dart';

import 'goal.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TopNewCard(
          balance: '\$ 3333',
          saving: '\$555',
          spent: '\$5555',
        ),
        SizedBox(height: 25,),

        Container(
            child: Text("My GOAL" ,style: TextStyle(fontSize: 25 ,),)),
        SizedBox(height: 8,),


        Expanded(child:
        Container(
height: 90,
           width: 310,
           child: MyGoal(),
        ),
        ),
        SizedBox(height: 25,),
Container(

    child: Row(
  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  children: [

        Text("Recent Expenses" ,style: TextStyle(fontSize: 25),),
    Text("view all"),
  ],
)),

        SizedBox(height: 8,),
        Expanded(
          child: Container(

            color: Colors.white,
            child: Center(
              child: Column(
                children: [
                  SizedBox(
                    height: 5,
                  ),

                  Expanded(child:
                  Container(
                    height: 68,
                    width: 310,

                    child: Center(
                      child: Column(
                        children: [

                          Expanded(child: ListView.builder

                            (itemCount:5 ,

                              itemBuilder: (context , index){
                                SizedBox(height: 8);


                                return MyTranaction(tranactionName: "transactionName" , money: "money", expenseOrIncome: "income",);
                              }
                          ),
                          )
                        ],
                      ),
                    ),
                  ))
                  // MyTranaction(tranactionName: "Teaching", money: "300", expenseOrIncome: "income")

                ],
              ),
            ),
          ),
        ),
      ],


    );

  }
}
