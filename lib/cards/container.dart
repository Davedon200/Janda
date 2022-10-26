import 'package:flutter/material.dart';

class Cardcontainer extends StatelessWidget {
  final Widget cardchild;
  final Color color;

  Cardcontainer({
    required this.cardchild,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardchild,
      height: 200.0,
      width: 100.0,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(15.0),
      ),
    );
  }
}
