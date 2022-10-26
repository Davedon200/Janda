import 'package:flutter/material.dart';
import 'package:janda/constants/constant.dart';

class Content2 extends StatefulWidget {
  const Content2({Key? key}) : super(key: key);

  @override
  State<Content2> createState() => _Content2State();
}

class _Content2State extends State<Content2> {
  int _changedvalue = 120;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'HEIGHT',
          style: LabelTextStyle,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.baseline,
          textBaseline: TextBaseline.alphabetic,
          children: [
            Text(
              _changedvalue.toString(),
              style: numberstyle,
            ),
            Text(
              'cm',
              style: TextStyle(
                  color: Color(0xffA8AEC5),
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
        SizedBox(
          height: 20.0,
        ),
        Slider(
          min: 90,
          max: 210,
          activeColor: slideactivecolor,
          inactiveColor: slideinactivecolor,
          thumbColor: thumbcolor,
          value: _changedvalue.toDouble(),
          onChanged: (double newValue) {
            setState(() {
              _changedvalue = newValue.round();
            });
          },
        )
      ],
    );
  }
}
