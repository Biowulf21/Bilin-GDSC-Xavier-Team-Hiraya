import 'package:bilin/constants/constants_colors.dart';
import 'package:bilin/widgets/custom_rounded_button.dart';
import 'package:bilin/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:bilin/constants/constants_text_styles.dart';

class LoginWidget extends StatelessWidget {
  LoginWidget({Key? key}) : super(key: key);

  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Login',
              style: h2.copyWith(color: Colors.black),
            ),
            const SizedBox(
              height: 20.0,
            ),
            customTextField(
              isHidden: false,
              contoller: usernameController,
              labelText: "Username",
            ),
            const SizedBox(
              height: 20.0,
            ),
            customTextField(
              isHidden: true,
              contoller: usernameController,
              labelText: "Password",
            ),
            CustomRoundedButton(
              onTap: () {},
              text: "Login",
              textStyle: h2.copyWith(color: Colors.white),
              colour: bilinGreen,
              height: 70,
              width: 300,
              roundness: 50.0,
            )
          ],
        ),
      ),
    );
  }
}

class PartnerSignupWidget extends StatelessWidget {
  const PartnerSignupWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'SignUp as Partner',
              style: h2.copyWith(color: Colors.black),
            ),
            const SizedBox(
              height: 20.0,
            ),
            CustomRoundedButton(
              onTap: () {},
              text: "Login",
              textStyle: h2.copyWith(color: Colors.white),
              colour: bilinGreen,
              height: 70,
              width: 300,
              roundness: 50.0,
            )
          ],
        ),
      ),
    );
  }
}
