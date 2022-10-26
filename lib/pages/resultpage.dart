import 'package:flutter/material.dart';
import 'package:janda/cards/bottomcontainer.dart';
import 'package:janda/cards/container.dart';
import 'package:janda/constants/constant.dart';

class ResultPage extends StatelessWidget {
  ResultPage(
      {required this.bmiResult,
      required this.interpretation,
      required this.resultText});

  final String bmiResult;
  final String resultText;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          const Expanded(
            child: Padding(
              padding: EdgeInsets.all(15.0),
              child: Text(
                'YOUR RESULT',
                style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                    color: maincolor),
              ),
            ),
          ),
          SizedBox(
            height: 30.0,
          ),
          Expanded(
            flex: 5,
            child: Cardcontainer(
                cardchild: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        resultText,
                        style: ResultTextStyle,
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        bmiResult.toString(),
                        style: TextStyle(
                          fontSize: 100.0,
                          fontWeight: FontWeight.bold,
                          color: maincolor,
                        ),
                      ),
                      Text(
                        interpretation,
                        style: BodyTextStyle,
                      ),
                    ]),
                color: inactivecolor),
          ),
          BottomContainer(
            inputText: 'RE-CALCULATE',
            onTap: () {
              Navigator.pop(context);
            },
          )
        ],
      ),
    );
  }
}
