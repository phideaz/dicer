import 'package:flutter/material.dart';

class ButtonCircular extends StatelessWidget {
  final Function onTap;
  final String text;

  ButtonCircular({this.onTap, @required this.text});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.fromLTRB(24, 0, 24, 24),
        width: double.infinity,
        height: 45,
        child: Center(
            child: Text(
          text,
          style: TextStyle(fontWeight: FontWeight.w600),
        )),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5), color: Colors.white),
      ),
    );
  }
}
