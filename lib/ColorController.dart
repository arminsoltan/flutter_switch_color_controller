import 'package:flutter/material.dart';

class ColorController extends ChangeNotifier {
  Color color;
  ColorController(this.color);

  void changeColor(Color newColor) {
    color = newColor;
    notifyListeners();
  }
}
