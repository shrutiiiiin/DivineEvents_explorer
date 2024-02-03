import 'package:flutter/material.dart';
import 'package:project1/event_page.dart';
import 'package:project1/splash.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: splash(),
    );
  }
}
