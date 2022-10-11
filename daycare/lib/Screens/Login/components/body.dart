import 'package:daycare/Screens/Login/components/already_have_an_account_checkt.dart';
import 'package:daycare/Screens/Login/components/background.dart';
import 'package:daycare/Screens/Login/components/or_divider.dart';
import 'package:daycare/Screens/Login/components/rounded_input_field.dart';
import 'package:daycare/Screens/Login/components/rounded_password_field.dart';
import 'package:daycare/Screens/Login/components/social_icon.dart';
import 'package:daycare/Screens/Register/register.screen.dart';
import 'package:daycare/Screens/Welcome/components/rounded_button.dart';
import 'package:daycare/constant.dart';
import 'package:daycare/main.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);

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
          SizedBox(height: size.height * 0.03),
          Image.asset(
            "assets/children2.png",
            height: size.height * 0.2,
          ),
          SizedBox(height: size.height * 0.03),
          RoundedInputField(
              hintText: "Enter your email", onChanged: (value) {}),
          RoundedPasswordField(onChanged: (value) {}),
          RoundedButton(
            text: "Login",
            press: () {},
            buttonColor: kPrimaryColor2,
          ),
          SizedBox(height: size.height * 0.03),
          AlreadyHaveAnAccountCheck(
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
          ),
          OrDivider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SocialIcon(
                iconPic: "assets/facebook.png",
                press: () {},
              ),
              SocialIcon(
                iconPic: "assets/google.png",
                press: () {},
              ),
            ],
          )
        ],
      ),
    );
  }
}
