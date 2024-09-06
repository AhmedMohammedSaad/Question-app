// import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';
import 'package:intl/intl.dart';

const uuid = Uuid();
final dateformat = DateFormat.yMd();

enum Category {
  fode,
  shopping,
  communications,
  travel,
  word,
}

//  const CategoryIcons = {
//   Category.fode: Icon(Icons.lunch_dining),
//   Category.travel: Icon(Icons.flight_takeoff),
//   Category.shopping: Icon(Icons.shopping_cart),
//   Category.word: Icon(Icons.work),
// };

class Expanse {
  final String id;
  final String title;
  final double amount;
  final DateTime date;
  final Category category;

  String get formatteDate {
    return dateformat.format(date);
  }

  Expanse({
    required this.category,
    required this.title,
    required this.amount,
    required this.date,
  }) : id = uuid.v4();
}
