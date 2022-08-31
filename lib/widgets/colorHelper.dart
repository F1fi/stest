import 'dart:math';

import 'package:flutter/material.dart';

/// ColorHelper class
class ColorHelper{
  final List<Color> _colors = [Colors.white];
  Color _color = Colors.white;
  int _index = 0;

  static const double _brightnessLimit = 0.12;
  static const int _alpha = 255;

  /// get Color
  Color get color => _colors[_index];
  /// get bool BlackText
  bool get blackText => _colors[_index].computeLuminance() >= _brightnessLimit;

  void _generateColor(){
    final red = Random().nextInt(256);
    final green = Random().nextInt(256);
    final blue = Random().nextInt(256);
    _color = Color.fromARGB(_alpha, red, green, blue);
    _colors.add(_color);
    _index = _colors.length - 1;
  }

  /// updateColor by click on screen
  void updateColor(){
    if(_index == _colors.length -1){
      _generateColor();
    }else{
      _index = _index + 1;
    }
  }

  /// get previous color
  void backColor(){
    if(_index > 0)
    {
      _index = _index - 1;
    }
  }


}