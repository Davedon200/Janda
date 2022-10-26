import 'package:flutter/material.dart';
import 'package:janda/constants/constant.dart';

class BottomContainer extends StatelessWidget {
  String inputText;
  final VoidCallback onTap;

  BottomContainer({required this.inputText, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(
          child: Text(
            inputText,
            style: textstyle,
          ),
        ),
        height: bottomheight,
        width: double.infinity,
        color: bottomcontainercolor,
        margin: EdgeInsets.only(top: 10.0),
      ),
    );
  }
}
