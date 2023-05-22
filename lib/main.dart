import 'package:flutter/material.dart';
import 'package:flutter_name_generator/screens/home.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Name Generator',
      theme: ThemeData(
        backgroundColor: Colors.blueAccent,
        indicatorColor: Colors.blueAccent,
        fontFamily: 'Pangolin' ,
      ),
      home: Home(),
    );
  }
}
