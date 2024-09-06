import 'dart:developer';

import 'package:flutter/material.dart';

class NewExpens extends StatefulWidget {
  const NewExpens({super.key});

  @override
  State<NewExpens> createState() => _NewExpensState();
}

class _NewExpensState extends State<NewExpens> {
  final TextEditingController _TitleConteoler = TextEditingController();
  @override
  void dispose() {
    super.dispose();
    _TitleConteoler.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(17.0),
      child: Column(
        children: [
          TextField(
            controller: _TitleConteoler,
            maxLength: 30,
            decoration: const InputDecoration(
              label: Text(
                'Title',
              ),
            ),
          ),
          Row(
            children: [
              ElevatedButton(
                onPressed: () {
                  log(_TitleConteoler.text);
                },
                child: const Text(
                  'Save Expanse',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
