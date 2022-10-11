import 'package:daycare/constant.dart';
import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  final String text;
  final VoidCallback press;
  final Color textColor;
  final Color buttonColor;
  const RoundedButton({
    Key? key,
    required this.text,
    required this.press,
    this.textColor = Colors.white,
    required this.buttonColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
        width: size.width * 0.8,
        padding: EdgeInsets.symmetric(vertical: 10),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(29),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: buttonColor, // background
            ),
            onPressed: press,
            child: Text(text, style: TextStyle(color: textColor)),
          ),
        ));
  }
}
