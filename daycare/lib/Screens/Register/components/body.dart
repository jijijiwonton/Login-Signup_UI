import 'package:daycare/Screens/Login/components/already_have_an_account_checkt.dart';
import 'package:daycare/Screens/Login/components/rounded_input_field.dart';
import 'package:daycare/Screens/Login/components/rounded_password_field.dart';
import 'package:daycare/Screens/Login/login_screen.dart';
import 'package:daycare/Screens/Register/components/background.dart';
import 'package:daycare/Screens/Welcome/components/rounded_button.dart';
import 'package:daycare/constant.dart';
import 'package:daycare/main.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              GestureDetector(
                child: Image.asset("assets/home.png", width: 20),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => MyApp()));
                },
              ),
              Image.asset("assets/logo.png",
                  width: 180, height: size.height * 0.2),
            ],
          ),
          Image.asset(
            "assets/children3.png",
            height: size.width * 0.2,
          ),
          RoundedInputField(
              hintText: "Enter your email", onChanged: (value) {}),
          RoundedPasswordField(onChanged: (value) {}),
          RoundedInputField(
              hintText: "Enter your first name", onChanged: (value) {}),
          RoundedInputField(
              hintText: "Enter your last name", onChanged: (value) {}),
          RoundedButton(
              text: "Register", press: () {}, buttonColor: kPrimaryColor2),
          AlreadyHaveAnAccountCheck(
            login: false,
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return LoginScreen();
                  },
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
