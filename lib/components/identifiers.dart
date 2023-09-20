import 'package:flutter/material.dart';

class ListIden {
  List<Icon> iconKeeper = [];

  void add(Icon icon) {
    iconKeeper.add(icon);
  }

  Icon checkIcon(int questionNumba) {
    return iconKeeper[questionNumba];
  }

  void clear() {
    iconKeeper.clear();
  }

  void remove(int nub) {
    iconKeeper.removeAt(nub);
  }
}
