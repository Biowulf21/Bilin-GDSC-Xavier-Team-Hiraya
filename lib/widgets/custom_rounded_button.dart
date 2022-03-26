import 'package:flutter/material.dart';

class CustomRoundedButton extends StatelessWidget {
  CustomRoundedButton(
      {required this.onTap,
      required this.text,
      required this.colour,
      this.textStyle,
      Key? key})
      : super(key: key);

  final String text;
  final VoidCallback onTap;
  final Color colour;
  final TextStyle? textStyle;
  final TextStyle? defaultTextStyle = TextStyle(fontSize: 10);

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          height: 50,
          child: Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
            child: Text(
              text,
              style: textStyle ?? defaultTextStyle,
            ),
          ),
          decoration: BoxDecoration(
            color: colour,
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    );
  }
}
