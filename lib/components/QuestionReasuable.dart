import 'package:flutter/material.dart';

class QReuseableCard extends StatelessWidget {
  QReuseableCard({
    required this.cardChild,
  });
  final Widget cardChild;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      width: MediaQuery.of(context).size.width,
      height: 200.0,
      margin: const EdgeInsets.only(top: 10.0),
      decoration: BoxDecoration(
        color: const Color(0xFF090C22),
        // I changed the circular radius from 10 to 5
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }
}
