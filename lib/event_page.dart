import 'package:flutter/material.dart';

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
        title: Text('Divine Events'),
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
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(),
          )
        ),
      ),

    );
  }
}

class CustomIcon extends StatelessWidget {
   CustomIcon({
    super.key,
    required this.icon,
  });
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return IconButton(onPressed: (){
    },icon: Icon(icon , size: 24,));
  }
}
