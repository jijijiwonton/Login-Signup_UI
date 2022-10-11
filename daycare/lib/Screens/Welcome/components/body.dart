import 'package:daycare/Screens/GetStarted/Wizards/form_screen.dart';
import 'package:daycare/Screens/Login/login_screen.dart';
import 'package:daycare/Screens/Register/register.screen.dart';
import 'package:daycare/Screens/Welcome/components/background.dart';
import 'package:daycare/Screens/Welcome/components/rounded_button.dart';
import 'package:daycare/Screens/Welcome/components/rounded_button.dart';
import 'package:daycare/constant.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
        child: SingleChildScrollView(
      child: Column(children: <Widget>[
        Image.asset("assets/logo.png", width: 180, height: size.height * 0.2),
        Image.asset(
          "assets/children.png",
          width: 400,
          height: size.height * 0.2,
        ),
        Text(
          "Are you\nSearching\nFor\nChildcare\nFacilities\nNearby\nYou?",
          style: TextStyle(
            color: kPrimaryColor,
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.w700,
            fontFamily: 'Open Sans',
            fontSize: 30,
          ),
        ),
        SizedBox(height: size.height * 0.02),
        RoundedButton(
          text: "Login",
          press: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return LoginScreen();
            }));
          },
          buttonColor: kPrimaryColor,
        ),
        RoundedButton(
          text: "Register",
          press: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return RegisterScreen();
                },
              ),
            );
          },
          buttonColor: kPrimaryColor,
        ),
        RoundedButton(
          text: "Get Started!",
          press: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return FormsScreen();
                },
              ),
            );
          },
          buttonColor: kPrimaryColor,
        ),
      ]),
    ));
  }
}
