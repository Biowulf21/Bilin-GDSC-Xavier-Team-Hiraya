import 'package:flutter/material.dart';
import 'package:bilin/constants/constants_colors.dart';
import 'package:bilin/constants/constants_text_styles.dart';

class LoginPage extends StatelessWidget {
  static String id = "login_page";

  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
              child: Container(
                width: MediaQuery.of(context).size.width * 0.5,
                height: MediaQuery.of(context).size.height * 1,
                color: bilinGreen,
                child: Column(
                  children: <Widget>[],
                ),
              ),
            ),
            Expanded(
              child: Container(
                width: MediaQuery.of(context).size.width * 0.5,
                height: MediaQuery.of(context).size.height * 1,
                color: Colors.white,
                child: Center(
                  child: Column(
                    children: <Widget>[Text("Log In")],
                  ),
                ),
              ),
            )
          ],
        ),
      ],
    );
  }
}
