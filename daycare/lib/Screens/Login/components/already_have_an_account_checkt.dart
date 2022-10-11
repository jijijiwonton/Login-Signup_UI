import 'package:daycare/constant.dart';
import 'package:flutter/material.dart';

class AlreadyHaveAnAccountCheck extends StatelessWidget {
  final bool login;
  final VoidCallback press;

  const AlreadyHaveAnAccountCheck({
    Key? key,
    this.login = true,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          login ? "Don't have an Account ? " : "Already have an Account ? ",
          style: TextStyle(color: kPrimaryColor2),
        ),
        GestureDetector(
          onTap: press,
          child: Text(login ? "Register" : "Login",
              style: TextStyle(
                color: kPrimaryColor2,
                fontWeight: FontWeight.bold,
              )),
        )
      ],
    );
  }
}
