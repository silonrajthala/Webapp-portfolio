import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String text;
  final double fontSize;

  const CustomText({
    super.key,
    required this.text,
    required this.fontSize,
  });
  @override
  Widget build(BuildContext context) {
    return Text('$text',
        style: TextStyle(
            color: Color.fromRGBO(229, 230, 242, 1),
            fontFamily: 'Inter',
            fontSize: fontSize,
            fontWeight: FontWeight.normal,
            height: 1));
  }
}
