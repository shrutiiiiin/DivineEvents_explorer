import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'custom_cards.dart';

import 'custom_cards.dart';
class CustomTimeline extends StatefulWidget {
  const CustomTimeline({super.key});

  @override
  State<CustomTimeline> createState() => _CustomTimelineState();
}

class _CustomTimelineState extends State<CustomTimeline> {
  late PageController _pageController;
  int _currentPage = 0;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _pageController = PageController(initialPage:_currentPage, viewportFraction: 0.8 );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _pageController.dispose();
  }
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

          Padding(
            padding: const EdgeInsets.symmetric(vertical: 30),
            child: AspectRatio(
              aspectRatio: 0.98989,
              child: PageView.builder(
                itemCount: EventList.length,
                  physics: const ClampingScrollPhysics(),
                  controller: _pageController,
                  itemBuilder: (context, index){
                return customCards(heading: EventList[index].heading, content: EventList[index].content);
              }),
            ),
          )],
        ),
      ),
    );
  }
}




