import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:janda/cards/Roundiconbutton.dart';
import 'package:janda/constants/constant.dart';

class card2 extends StatefulWidget {
  @override
  State<card2> createState() => _card2State();
}

class _card2State extends State<card2> {
  int weight = 76;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'WEIGHT',
          style: textstyle,
        ),
        Text(
          weight.toString(),
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
                  weight--;
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
                  weight++;
                });
              },
            ),
          ],
        )
      ],
    );
  }
}
