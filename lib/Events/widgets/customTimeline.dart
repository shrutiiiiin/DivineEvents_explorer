import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 14),
        child: Column(
          children: [
            Center(
              child: Text(
                'Scared Timeline', style: GoogleFonts.juliusSansOne(
                fontSize: 28
              ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
