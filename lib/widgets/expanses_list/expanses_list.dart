import 'package:flutter/material.dart';
import 'package:qezeapp/models/expanse.dart';
import 'package:qezeapp/widgets/expanses_list/expanses_item.dart';

class ExpansesList extends StatelessWidget {
  const ExpansesList({
    super.key,
    required this.expenses,
  });

  final List<Expanse> expenses;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: expenses.length,
      itemBuilder: (context, index) => ExpansesItem(
        expense: expenses[index],
      ),
    );
  }
}
