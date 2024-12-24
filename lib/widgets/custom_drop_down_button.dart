import 'package:flutter/material.dart';

class CustomDropDownButton extends StatelessWidget {

  double width;
  List<String> values;
  CustomDropDownButton({super.key, required this.width, required this.values});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: width * 0.05),
      width: width,
      decoration: BoxDecoration(
        color: const Color.fromRGBO(53, 53, 53, 1.0),
        borderRadius: BorderRadius.circular(10)
      ),
      child: DropdownButton<String>(
        onChanged: (_) {},
        value: values.first,
        items: values.map((e) {
          return DropdownMenuItem<String>(
            child: Text(e),
            value: e,
          );
        }).toList(),
        dropdownColor: const Color.fromRGBO(53, 53, 53, 1.0),
        style: const TextStyle(color: Colors.white),
      ),
    );
}
}