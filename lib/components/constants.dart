import 'package:flutter/material.dart';

const kTextFieldDecoration = InputDecoration(
  hintText: 'Enter your Name',
  contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.lightBlueAccent, width: 1.0),
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.lightBlueAccent, width: 2.0),
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
);
const kBox = SizedBox(
  height: 20,
);

const kLabelTextStyle = TextStyle(
  fontFamily: 'SourceSansPro',
  fontSize: 20.0,
  color: Color(0xFF848694),
);
const kResultTextStyle = TextStyle(
  fontFamily: 'SourceSansPro',
  fontSize: 22.0,
  color: Colors.white,
  // color: Color(0xFF848694),
  fontWeight: FontWeight.bold,
);
const kLabelHomeTextStyle = TextStyle(
    fontSize: 25.0,
    fontFamily: 'SourceSansPro',
    fontWeight: FontWeight.bold,
    color: Colors.white);
const kResultNumberStyle = TextStyle(
    fontSize: 100.0, fontWeight: FontWeight.bold, color: Colors.brown);
const kActiveCardColor = Colors.blueAccent;
const kInactiveCardColor = Color(0xFF090C22);
const kSizedBox = SizedBox(
  height: 25,
);
const kReviewTextStyle = TextStyle(
  fontSize: 18.0,
);
