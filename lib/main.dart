import 'package:flutter/material.dart';
import 'home.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bee up to date',
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      home: const MyHome(title: 'Bee up to date'),
    );
  }
}
