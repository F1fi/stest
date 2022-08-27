import 'package:flutter/material.dart';
import 'package:solidtest/widgets/home.dart';

void main() {
  runApp(const Main());
}

/// Main widget
class Main extends StatelessWidget {
  /// Constructor
  const Main({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',
      home: SafeArea(
        child: Scaffold(
          // appBar: AppBar()s,
          body: Home()
        )
      ),
    );
  }
}

