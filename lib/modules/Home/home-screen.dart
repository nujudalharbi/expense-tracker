import 'package:expense_tracker/modules/Home/top_new_card.dart';
import 'package:flutter/material.dart';

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
          income: '\$555',
          expense: '\$5555',
        ),

      ],

    );
  }
}
