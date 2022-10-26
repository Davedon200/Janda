import 'package:flutter/material.dart';
import 'package:janda/constants/constant.dart';

class RoundIconButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback onPressed;

  RoundIconButton({
    required this.icon,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(
        icon,
        size: 30.0,
        color: maincolor,
      ),
      onPressed: onPressed,
      shape: CircleBorder(),
      fillColor: Color(0xff212747),
      elevation: 0.0,
      constraints: BoxConstraints.tightFor(width: 56.0, height: 56.0),
    );
  }
}
