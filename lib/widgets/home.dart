import 'package:flutter/material.dart';
import 'package:solidtest/widgets/colorHelper.dart';

/// Home widget
class Home extends StatefulWidget {
  /// Constructor
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  final ColorHelper _colorHelper = ColorHelper();
  static const int _duration = 500;
  static const double _fontSize = 16;
  static const double _buttonMargin = 10;

  @override
  Widget build(BuildContext context) {
    return 
      Stack(
        children: [
          GestureDetector(
            onTap: (){
              setState(() => _colorHelper.updateColor());
            },
            child: 
            AnimatedContainer(
              duration: const  Duration(milliseconds: _duration),
              color: _colorHelper.color,
              child: Center(
                child: AnimatedDefaultTextStyle(
                  duration: const Duration(milliseconds: _duration),
                  style: TextStyle(
                    color: _colorHelper.blackText? Colors.black: Colors.white,
                    fontSize: _fontSize,
                  ),
                  child: const Text("Hey there"),
                ),
              ),
            ),
          ),
          Positioned(
            top: _buttonMargin,
            left: _buttonMargin,
            child: TextButton(
              onPressed: (){
                setState( () => _colorHelper.backColor());
              },
              child: const Text("Back"),
            ),
          )
        ]
      );
  }
}