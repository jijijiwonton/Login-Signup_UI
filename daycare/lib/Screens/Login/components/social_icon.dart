import 'package:daycare/constant.dart';
import 'package:flutter/material.dart';

class SocialIcon extends StatelessWidget {
  final String iconPic;
  final VoidCallback press;
  const SocialIcon({
    Key? key,
    required this.iconPic,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 10),
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          border: Border.all(
            width: 2,
            color: kPrimaryLightColor2,
          ),
          shape: BoxShape.circle,
        ),
        child: Image.asset(
          iconPic,
          height: 20,
          width: 20,
        ),
      ),
    );
  }
}
