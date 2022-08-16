import 'dart:math';

import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  Color _color = Colors.white;
  bool blackText = false;
  static const int _duration = 500;
  static const double _brightnessLimit = 0.12;
  static const double _fontSize = 16;

  void _changeColor(){
    final red = Random().nextInt(256);
    final green = Random().nextInt(256);
    final blue = Random().nextInt(256);
    final alpha = Random().nextInt(256);
    setState(() {
      _color = Color.fromARGB(alpha, red, green, blue);
      if(_color.computeLuminance() > _brightnessLimit && !blackText){
        blackText = true;
      }
      if(_color.computeLuminance() < _brightnessLimit && blackText){
        blackText = false;
      }
    });
  }

  @override
  void initState() {
    _changeColor();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        _changeColor();
      },
      child: AnimatedContainer(
        duration: const  Duration(milliseconds: _duration),
        color: _color,
        child: Center(
          child: AnimatedDefaultTextStyle(
            duration: const Duration(milliseconds: _duration),
            style: TextStyle(
              color: blackText? Colors.black: Colors.white,
              fontSize: _fontSize,
            ),
            child: const Text("Hey there")
          ),
        ),
      ),
    );
  }
}