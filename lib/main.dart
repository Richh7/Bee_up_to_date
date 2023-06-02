import 'package:flutter/material.dart';
import 'my_home.dart';


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
        useMaterial3: true,
        primaryColor: Colors.white, //for background app when close
        backgroundColor: Colors.white,
        bottomNavigationBarTheme: BottomNavigationBarThemeData(backgroundColor: Colors.amber[100]),
        iconTheme: const IconThemeData(color: Colors.black, size: 35),
        textTheme: const TextTheme(
          subtitle1: TextStyle(fontSize: 28.0),
          bodyText1: TextStyle(fontSize: 18.0),
          button: TextStyle(fontSize: 20.0),
        ),
      ),
      home: const MyHome(),
    );
  }
}
