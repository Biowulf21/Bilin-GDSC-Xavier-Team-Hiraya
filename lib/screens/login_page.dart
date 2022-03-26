import 'package:flutter/material.dart';

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
            Container(
              width: MediaQuery.of(context).size.width * 0.5,
              height: MediaQuery.of(context).size.height * 1,
              color: Colors.green,
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.5,
              height: MediaQuery.of(context).size.height * 1,
              color: Colors.green,
            )
          ],
        ),
      ],
    );
  }
}
