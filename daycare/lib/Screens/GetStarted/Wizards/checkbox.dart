import 'package:flutter/material.dart';
import 'package:multiselect/multiselect.dart';

class MultiSelectComponent extends StatefulWidget {
  final String category;
  final List<String> fruits;
  MultiSelectComponent({
    Key? key,
    required this.fruits,
    required this.category,
  }) : super(key: key);

  @override
  State<MultiSelectComponent> createState() => _MultiSelectComponentState();
}

class _MultiSelectComponentState extends State<MultiSelectComponent> {
  List<String> selectedFruits = [];
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      alignment: Alignment.centerLeft,
      width: size.width * 0.8,
      padding: EdgeInsets.symmetric(vertical: 10),
      child: Column(
        children: [
          DropDownMultiSelect(
            options: widget.fruits,
            selectedValues: selectedFruits,
            onChanged: (value) {
              setState(() {
                selectedFruits = value;
              });
            },
            whenEmpty: widget.category,
          ),
        ],
      ),
    );
  }
}
