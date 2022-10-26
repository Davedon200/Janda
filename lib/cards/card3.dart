import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:janda/cards/Roundiconbutton.dart';
import 'package:janda/constants/constant.dart';

class card3 extends StatefulWidget {
  @override
  State<card3> createState() => _card3State();
}

class _card3State extends State<card3> {
  int age = 16;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'AGE',
          style: textstyle,
        ),
        Text(
          age.toString(),
          style: numberstyle,
        ),
        SizedBox(
          height: 20.0,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RoundIconButton(
              icon: FontAwesomeIcons.minus,
              onPressed: () {
                setState(() {
                  age--;
                });
              },
            ),
            SizedBox(
              width: 10.0,
            ),
            RoundIconButton(
              icon: FontAwesomeIcons.plus,
              onPressed: () {
                setState(() {
                  age++;
                });
              },
            ),
          ],
        )
      ],
    );
  }
}
