import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Cardone extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Icon(
          FontAwesomeIcons.person,
          color: Colors.white,
        ),
        Text(
          'data',
          style: TextStyle(color: Colors.white),
        ),
      ],
    );
  }
}
