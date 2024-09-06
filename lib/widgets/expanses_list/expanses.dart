import 'package:flutter/material.dart';
import 'package:qezeapp/models/expanse.dart';
import 'package:qezeapp/widgets/expanses_list/expanses_list.dart';
import 'package:qezeapp/widgets/expanses_list/newExpenses.dart';

class Expanses extends StatefulWidget {
  const Expanses({super.key});

  @override
  State<Expanses> createState() => _ExpansesState();
}

class _ExpansesState extends State<Expanses> {
  final List<Expanse> expenses = [
    Expanse(
      category: Category.word,
      title: 'flutter corse',
      amount: 50,
      date: DateTime.now(),
    ),
    Expanse(
      category: Category.fode,
      title: 'Brakfast',
      amount: 29.9,
      date: DateTime.now(),
    ),
    Expanse(
      category: Category.shopping,
      title: 'computer ',
      amount: 40,
      date: DateTime.now(),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Expenses App',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              showModalBottomSheet(
                context: context,
                builder: (c) => const NewExpens(),
              );
            },
            icon: const Icon(Icons.add),
          ),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: ExpansesList(expenses: expenses),
          ),
        ],
      ),
    );
  }
}
