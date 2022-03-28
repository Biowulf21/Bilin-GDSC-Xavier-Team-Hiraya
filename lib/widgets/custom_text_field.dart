import 'package:flutter/material.dart';
import 'package:bilin/constants/constants_colors.dart';

class customTextField extends StatelessWidget {
  const customTextField({
    Key? key,
    this.hintText,
    this.labelText,
    this.prefixIcon,
    required this.isHidden,
    required this.contoller,
  }) : super(key: key);

  final TextEditingController contoller;
  final IconData? prefixIcon;
  final String? labelText;
  final String? hintText;
  final bool? isHidden;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: isHidden ?? false,
      controller: contoller,
      // focusNode: passwordFocusNode,
      decoration: InputDecoration(
        prefixIcon: Icon(prefixIcon),
        suffixIcon: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.close,
            color: bilinGreen,
          ),
        ),
        label: Text(labelText ?? ''),
        //FIXME: Change color of label whenever on focus. Not working yet
        // labelStyle: TextStyle(
        //     color: passwordFocusNode.hasFocus
        //         ? bilinGreen
        //         : Colors.black),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25.0),
            borderSide: const BorderSide(color: bilinGreen)),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: landingPageCardGrey),
          borderRadius: BorderRadius.circular(25.0),
        ),
      ),
    );
  }
}
