import 'package:daycare/Screens/GetStarted/Wizards/checkbox.dart';
import 'package:daycare/Screens/GetStarted/Wizards/dropdown.dart';
import 'package:daycare/main.dart';
import 'package:flutter/material.dart';

class FormsScreen extends StatelessWidget {
  const FormsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
        body: Column(children: <Widget>[
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          GestureDetector(
            child: Image.asset("assets/home.png", width: 20),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => MyApp()));
            },
          ),
          Image.asset("assets/logo.png", width: 180, height: size.height * 0.2),
        ],
      ),
      SizedBox(height: size.height * 0.02),
      DropDownComponent(
          category: "Select Category",
          valueToChoose: ["Center-Based", "Home-Based", "School-Based"]),
      DropDownComponent(
          category: "Select License Status",
          valueToChoose: ["Licensed", "Not Licensed"]),
      DropDownComponent(
          category: "Select Financial Support",
          valueToChoose: ["Accepts Subsidies", "Does Not Accept Subsidies"]),
      DropDownComponent(category: "Select Space Availability", valueToChoose: [
        "Has Available Space",
        "Currently Full",
        "Unavailable"
      ]),
      // TODO These elements should be in screen3 page just in case it needs more forms
      MultiSelectComponent(
          category: 'Select Age Groups',
          fruits: ["Infants", "Toddlers", "Preschool", "School-Aged"]),
      MultiSelectComponent(category: 'Select Day\'s Offering Care', fruits: [
        "Sunday",
        "Monday",
        "Tuesday",
        "Wednesday",
        "Thursday",
        "Friday",
        "Saturday"
      ]),
      MultiSelectComponent(category: 'Select Time Slots', fruits: ["AM", "PM"]),
    ]));
  }
}
