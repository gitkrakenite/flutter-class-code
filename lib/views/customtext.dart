import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String label;
  final double fontSize;
  final Color labelColor;
  final FontWeight textWeight;

  const CustomText(
      {super.key,
      required this.label,
      this.fontSize = 12.0,
      this.textWeight = FontWeight.normal,
      this.labelColor = Colors.black});

  @override
  Widget build(BuildContext context) {
    return Text(
      label,
      style: TextStyle(
          fontWeight: textWeight, fontSize: fontSize, color: labelColor),
    );
  }
}
