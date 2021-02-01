import 'package:dicer/dice_page.dart';
import 'package:dicer/widgets/button_circular.dart';
import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFF7070),
      body: SafeArea(
        child: Column(
          children: [
            Spacer(),
            Align(
              alignment: Alignment.center,
              child: Container(
                height: 200,
                width: 200,
                decoration: BoxDecoration(
                    image:
                        DecorationImage(image: AssetImage("assets/icon.png"))),
              ),
            ),
            Spacer(),
            Text(
              "How many dice you want to use?",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  fontSize: 20),
            ),
            SizedBox(
              height: 24,
            ),
            ButtonCircular(
              text: "One",
              onTap: () {
                _sendDataToDiceScreen(context, 1);
              },
            ),
            ButtonCircular(
              text: "Two",
              onTap: () {
                _sendDataToDiceScreen(context, 2);
              },
            )
          ],
        ),
      ),
    );
  }

  void _sendDataToDiceScreen(BuildContext context, int dice) {
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => DicePage(
            dice: dice,
          ),
        ));
  }
}
