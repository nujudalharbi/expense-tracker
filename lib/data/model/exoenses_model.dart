import 'package:flutter/material.dart';

class Expenses {
  int? id;
  String? typeExpenses;
  IconData? icon;
  dynamic? color;
  VoidCallback? onItemClick;
  double? amount;

  Expenses({
    required this.id,
    required this.typeExpenses,
    required this.icon,
    required this.color,
    this.onItemClick,
    this.amount,
  });
}
