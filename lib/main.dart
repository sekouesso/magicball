import 'package:flutter/material.dart';
import 'package:magicball/constant.dart';
import 'dart:math';

void main() {
  runApp(const BallePage());
}

class BallePage extends StatefulWidget {
  const BallePage({Key? key}) : super(key: key);

  @override
  State<BallePage> createState() => _BallePageState();
}

class _BallePageState extends State<BallePage> {
  int balleNumber = 1;
  void randomgenerator() {
    balleNumber = Random().nextInt(5) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: kAppbarBg,
        appBar: AppBar(
          backgroundColor: kAppbarBg,
          title: const Center(
            child: Text(
              'Ask me anything',
              style: TextStyle(
                fontFamily: 'Grypen',
                fontSize: 50,
              ),
            ),
          ),
        ),
        body: Center(
          child: TextButton(
            onPressed: () {
              setState(() {
                randomgenerator();
                debugPrint('$balleNumber');
              });
            },
            child: Image(
              image: AssetImage('images/ball$balleNumber.png'),
            ),
          ),
        ),
      ),
    );
  }
}
