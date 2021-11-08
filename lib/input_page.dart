import 'package:bmi_calculator/reuseable_card.dart';
import 'package:bmi_calculator/icon_content.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


const bottomContainerColor = Colors.redAccent;
const bottomContainerHeight = 30.0;
const activeCardColor = Colors.redAccent;
const inactiveCardColor = Color(0xFF1D1E33);
const labelTextStyle = TextStyle(
  fontSize: 18.0,
  color: Color(0xFF8D8E98),
);

enum Gender{
  male,
  female,
  none
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleCardColor = inactiveCardColor;
  Color femaleCardColor = inactiveCardColor;
  Gender selectedGender = Gender.none;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('BMI CALCULATOR')),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
              child: Row(
            children: <Widget>[
              Expanded(
                child: GestureDetector(
                  onTap: (){
                    setState(() {
                      selectedGender = Gender.male;
                    });
                  },
                  child: reuseablecard(
                    colour: selectedGender == Gender.male ? activeCardColor : inactiveCardColor,
                    cardChild: iconContent(gender: 'Male', genderIcon: FontAwesomeIcons.mars,),
                  ),
                ),
              ),
              Expanded(
                child: GestureDetector(
                  onTap: (){
                    setState(() {
                      selectedGender = Gender.female;
                    });
                  },
                  child: reuseablecard(
                    colour: selectedGender == Gender.female ? activeCardColor : inactiveCardColor,
                    cardChild: iconContent(gender: 'Female',genderIcon: FontAwesomeIcons.venus),
                  ),
                ),
              ),
            ],
          )),
          // Expanded(
          //   child: reuseablecard(
          //     activeCardColor,
          //   ),
          // ),
          // Expanded(
          //     child: Row(
          //   children: <Widget>[
          //     Expanded(
          //       child: reuseablecard(
          //         activeCardColor,
          //       ),
          //     ),
          //     Expanded(
          //       child: reuseablecard(
          //         activeCardColor,
          //       ),
          //     ),
          //   ],
          // )),
          Container(
            color: bottomContainerColor,
            margin: EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: bottomContainerHeight,
          )
        ],
      ),
    );
  }
}


