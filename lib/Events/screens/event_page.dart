import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:project1/Events/widgets/customTimeline.dart';

import '../widgets/custom_icon.dart';


class Events extends StatefulWidget {
  const Events({super.key});

  @override
  State<Events> createState() => _EventsState();
}

class _EventsState extends State<Events> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Divine Events', style: GoogleFonts.junge(
          fontSize: 24
        ),),
        leading: Row(
          children: [
            IconButton(
              icon: Icon(Icons.menu_sharp),  // Replace 'icon1' with the actual icon you want
              onPressed: () {
                // Handle the first icon tap
              },
            ),
          ],
        ),
        actions: [
          CustomIcon(icon: Icons.play_circle_outline_sharp),
          CustomIcon(icon: Icons.audiotrack_rounded),

        ],
      ),
      body: CustomTimeline(),

    );
  }
}
