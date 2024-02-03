import 'package:flutter/material.dart';
import 'package:concentric_transition/concentric_transition.dart';

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
