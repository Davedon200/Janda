import 'package:flutter/material.dart';
import 'package:janda/constants/constant.dart';

class Iconcontent extends StatelessWidget {
  final IconData icon;
  final String label;

  Iconcontent(this.icon, this.label);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          color: maincolor,
          size: 80.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          label,
          style: textstyle,
        ),
      ],
    );
  }
}
