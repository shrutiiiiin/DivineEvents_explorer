
import 'Events/screens/event_page.dart';
import 'package:flutter/material.dart';
import 'dart:async';

class splash extends StatefulWidget {
  const splash({super.key});

  @override
  State<splash> createState() => _splashState();
}

class _splashState extends State<splash> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 3), () {
      // Navigate to the main screen after the delay
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => Events()),
      );
    });
  }
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/splash.png'),
            fit: BoxFit.cover,
          ),

        ),
      ),
    );
  }
}
