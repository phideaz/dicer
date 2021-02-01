import 'package:dicer/widgets/button_circular.dart';
import 'package:flutter/material.dart';
import 'dart:math';

class DicePage extends StatefulWidget {
  final int dice;

  DicePage({this.dice = 1});

  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 1, rightDiceNumber = 1;

  void changeDice() {
    leftDiceNumber = Random().nextInt(6) + 1;
    rightDiceNumber = Random().nextInt(6) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFF7070),
      body: SafeArea(
        child: Column(
          children: [
            Spacer(),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 30),
              child: Align(
                  alignment: Alignment.center,
                  child: (widget.dice == 2)
                      ? Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Expanded(
                                flex: 1,
                                child: Image.asset(
                                    "assets/dice$leftDiceNumber.png")),
                            SizedBox(
                              width: 30,
                            ),
                            Expanded(
                                flex: 1,
                                child: Image.asset(
                                    "assets/dice$rightDiceNumber.png")),
                          ],
                        )
                      : Container(
                          width: 250,
                          height: 250,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                      "assets/dice$leftDiceNumber.png"))),
                        )),
            ),
            Spacer(),
            ButtonCircular(
              text: "Roll",
              onTap: () {
                setState(() {
                  changeDice();
                });
              },
            )
          ],
        ),
      ),
    );
  }
}
