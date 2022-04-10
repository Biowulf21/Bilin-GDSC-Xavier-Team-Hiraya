import 'package:flutter/material.dart';

class CustomRoundedButton extends StatelessWidget {
  CustomRoundedButton(
      {this.height,
      this.width,
      required this.onTap,
      required this.text,
      required this.colour,
      this.borderColour,
      this.borderWidth,
      this.textStyle,
      this.roundness,
      this.textSize,
      Key? key})
      : super(key: key);

  final String text;
  final VoidCallback onTap;
  final Color colour;
  final Color? borderColour;
  final TextStyle? textStyle;
  final double? height;
  final double? width;
  final double? roundness;
  final double? textSize;
  final TextStyle? defaultTextStyle = TextStyle(fontSize: 20);
  final double? borderWidth;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          height: height ?? 50,
          width: width ?? 80,
          child: Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
            child: Center(
              child: Text(
                text,
                style: textStyle ?? defaultTextStyle,
                textAlign: TextAlign.center,
              ),
            ),
          ),
          decoration: BoxDecoration(
            border: Border.all(
                color: borderColour ?? colour, width: borderWidth ?? 5),
            color: colour,
            borderRadius: BorderRadius.circular(roundness ?? 10),
          ),
        ),
      ),
    );
  }
}
