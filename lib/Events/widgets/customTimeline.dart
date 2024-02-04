import 'package:flutter/material.dart';

import 'custom_cards.dart';
class CustomTimeline extends StatefulWidget {
  const CustomTimeline({super.key});

  @override
  State<CustomTimeline> createState() => _CustomTimelineState();
}

class _CustomTimelineState extends State<CustomTimeline> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 300,
          width: 200,
          child: Stack(
            children: [
              customCards(color: Colors.orangeAccent, heading: '', content: '',),

            ],
          ),
        ),
      ),
    );
  }
}
