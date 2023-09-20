import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:shaama/components/quiz_brainOne.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:shaama/components/quizBrainSecond.dart';

class DropButton {
  String? selectedValue;
  String? namePage;
  QuizBrain quizBrainA = QuizBrain();
  QuizBrainSecond quizBrainSecond = QuizBrainSecond();
  String? gttt;
  void Function()? hhhh;
  List<String> items = [
    'Home',
    'First Quarter',
    'Second Quarter',
    'Third Quarter',
    'YAYA Quarter',
    'Fourth Quarter',
  ];

  //
  // namePunc() {
  //   return gttt;
  // }
  //
  // nameYunc(Object tyt) {
  //   tyt
  // }

  Widget dropMe(BuildContext context, Function adaptive) {
    return DropdownButtonHideUnderline(
      child: DropdownButton2(
        isExpanded: true,
        hint: Row(
          children: const [
            Icon(
              FontAwesomeIcons.list,
              // Icons.list,
              size: 24,
              color: Colors.white,
            ),
          ],
        ),

        items: items
            .map((item) => DropdownMenuItem<String>(
                  value: item,
                  child: Text(
                    item,
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                ))
            .toList(),
        value: selectedValue,
        onChanged: (value) {
          // selectedValue = value as String;
          if (value == 'Home') {
            Navigator.pushNamed(context, 'aa');
            adaptive();
          } else if (value == 'First Quarter') {
            namePage = 'First Quarter';
            gttt = quizBrainA.getQuestionText();
            Navigator.pushNamed(context, 'ab');
            adaptive();
          } else if (value == 'Second Quarter') {
            Navigator.pushNamed(context, 'ab');
            namePage = 'Second Quarter';

            // hhhh = quizBrainSecond.nextQuestion;
            adaptive();
          } else if (value == 'Third Quarter') {
            Navigator.pushNamed(context, 'ab');
            adaptive();
          } else if (value == 'YAYA Quarter') {
            Navigator.pushNamed(context, 'ab');
            adaptive();
          } else if (value == 'Fourth Quarter') {
            Navigator.pushNamed(context, 'ab');
          } else {}
        },

        iconSize: 6,
        iconEnabledColor: Colors.white,
        iconDisabledColor: Colors.white,
        buttonHeight: 50,
        buttonWidth: 60,
        buttonPadding: const EdgeInsets.only(left: 14, right: 14),
        buttonDecoration: const BoxDecoration(
          color: Colors.indigoAccent,
        ),
        buttonElevation: 0,

        itemHeight: 40,
        itemPadding: const EdgeInsets.only(left: 14, right: 14),
        dropdownMaxHeight: 200,
        // i changed this from 200 to 12o
        dropdownWidth: 160,
        dropdownPadding: null,
        dropdownDecoration: BoxDecoration(
          borderRadius: BorderRadius.circular(14),
          color: Colors.blueAccent,
        ),
        dropdownElevation: 8,
        scrollbarRadius: const Radius.circular(40),
        scrollbarThickness: 6,
        scrollbarAlwaysShow: true,
        offset: const Offset(-20, 0),
      ),
    );
  }
}
