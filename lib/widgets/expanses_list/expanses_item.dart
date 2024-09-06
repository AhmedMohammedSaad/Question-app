import 'package:flutter/material.dart';
import 'package:qezeapp/models/expanse.dart';

class ExpansesItem extends StatelessWidget {
  const ExpansesItem({super.key, required this.expense});
  final Expanse expense;
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
        child: Column(
          children: [
            Text(
              expense.title,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
            ),
            const SizedBox(
              height: 9,
            ),
            Row(
              children: [
                Text(
                  "\$${expense.amount.toStringAsFixed(2)}",
                  style: const TextStyle(
                    fontSize: 20,
                  ),
                ),
                Spacer(),
                Row(
                  children: [
                    Icon(Icons.date_range),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(expense.formatteDate)
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
