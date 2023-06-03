import 'package:flutter/material.dart';
import 'my_home.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bee up to date',
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: Colors.amber,
      ),
      home: const MyHome(),
    );
  }
}
