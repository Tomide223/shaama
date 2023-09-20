import 'package:flutter/material.dart';

MaterialButton buildMaterialButton(
    {required IconData person, void Function()? onPressed}) {
  return MaterialButton(
    child: Icon(
      person,
      size: 37,
    ),
    onPressed: onPressed,
  );
}
