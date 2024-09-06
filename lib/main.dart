import 'package:flutter/material.dart';
import 'package:qezeapp/widgets/expanses_list/expanses.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.fallback(
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: Expanses(),
    );
  }
}
