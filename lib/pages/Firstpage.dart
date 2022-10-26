import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:janda/calculator_brain.dart';
import 'package:janda/cards/bottomcontainer.dart';
import 'package:janda/cards/card2.dart';
import 'package:janda/cards/card3.dart';
import 'package:janda/constants/constant.dart';
import 'package:janda/cards/container.dart';
import 'package:janda/cards/containercontent.dart';
import 'package:janda/cards/contentstwo.dart';
import 'package:janda/pages/resultpage.dart';

enum Gender {
  male,
  female,
}

class Firstpage extends StatefulWidget {
  @override
  State<Firstpage> createState() => _FirstpageState();
}

class _FirstpageState extends State<Firstpage> {
  int height = 60;
  int weight = 16;

  Gender? selectedGender;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'BMI CALCULATOR',
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Row(children: <Widget>[
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedGender = Gender.male;
                      });
                    },
                    child: Cardcontainer(
                      color: selectedGender == Gender.male
                          ? activecardcolor
                          : inactivecolor,
                      cardchild: Iconcontent(
                        FontAwesomeIcons.mars,
                        'MALE',
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 10.0,
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedGender = Gender.female;
                      });
                    },
                    child: Cardcontainer(
                      color: selectedGender == Gender.female
                          ? activecardcolor
                          : inactivecolor,
                      cardchild: Iconcontent(
                        FontAwesomeIcons.venus,
                        'FEMALE',
                      ),
                    ),
                  ),
                ),
              ]),
              const SizedBox(
                height: 10.0,
              ),
              Expanded(
                flex: 5,
                child: Cardcontainer(
                  cardchild: Content2(),
                  color: inactivecolor,
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: Cardcontainer(
                      cardchild: card2(),
                      color: inactivecolor,
                    ),
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Expanded(
                    child: Cardcontainer(
                      cardchild: card3(),
                      color: inactivecolor,
                    ),
                  ),
                ],
              ),
              BottomContainer(
                inputText: 'CALCULATE YOUR BMI',
                onTap: () {
                  CalcBrain calulatorbrain =
                      CalcBrain(height: height, weight: weight);

                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ResultPage(
                        bmiResult: calulatorbrain.calculateBmi(),
                        interpretation: calulatorbrain.getInterpretation(),
                        resultText: calulatorbrain.getResult(),
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
