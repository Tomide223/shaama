import 'package:flutter/material.dart';

class ReuseableCard extends StatelessWidget {
  ReuseableCard({required this.colour, this.cardChild, this.onPress});
  final Color colour;
  final Widget? cardChild;
  final void Function()? onPress;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: cardChild,
        // I changed the width( unchanged) and the height(from 200 - 100)  also the border radius (10 - 5) of this card
        width: 180.0,
        height: 130.0,

        margin: EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          color: Colors.black38,
          borderRadius: BorderRadius.circular(25.0),
          border:
              Border.all(color: colour, width: 2.5, style: BorderStyle.solid),
        ),
      ),
    );
  }
}
