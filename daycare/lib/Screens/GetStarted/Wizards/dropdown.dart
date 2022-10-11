import 'package:flutter/material.dart';

class DropDownComponent extends StatelessWidget {
  final String category;
  final List<String> valueToChoose;
  const DropDownComponent(
      {super.key, required this.category, required this.valueToChoose});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final dropValue = ValueNotifier('');
    return Container(
      alignment: Alignment.centerLeft,
      width: size.width * 0.8,
      padding: EdgeInsets.symmetric(vertical: 10),
      child: ValueListenableBuilder(
          valueListenable: dropValue,
          builder: (BuildContext context, String value, _) {
            return DropdownButton<String>(
              hint: Text(category),
              value: (value.isEmpty) ? null : value,
              onChanged: (escolha) => dropValue.value = escolha.toString(),
              items: valueToChoose
                  .map((op) => DropdownMenuItem(
                        value: op,
                        child: Text(op),
                      ))
                  .toList(),
            );
          }),
    );
  }
}
