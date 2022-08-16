// ignore_for_file: public_member_api_docs

import 'package:flutter/material.dart';
import 'package:solidtest/widgets/home.dart';

void main() {
  runApp(const Main());
}

class Main extends StatelessWidget {
  const Main({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',
      home: SafeArea(
        child: Scaffold(
          body: Home()
        )
      ),
    );
  }
}

