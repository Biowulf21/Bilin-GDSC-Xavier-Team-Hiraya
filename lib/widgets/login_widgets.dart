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

enum Partner { NonProfit, Business }

class PartnerSignupWidget extends StatelessWidget {
  PartnerSignupWidget({this.chosenPartnerType, Key? key}) : super(key: key);

  final Partner? _partnerNonProf = Partner.NonProfit;
  final Partner? _partnerBusiness = Partner.NonProfit;
  final Partner? chosenPartnerType;

  final TextEditingController _email = TextEditingController();
  final TextEditingController _phoneNumber = TextEditingController();

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
            Row(
              children: [
                Flexible(
                  child: ListTile(
                    title: const Text("Nonprofit Org"),
                    leading: Radio(
                        value: Partner.NonProfit,
                        groupValue: chosenPartnerType,
                        onChanged: (Partner? value) {}),
                  ),
                ),
                Flexible(
                  child: ListTile(
                    title: const Text("Business"),
                    leading: Radio(
                        value: Partner.Business,
                        groupValue: chosenPartnerType,
                        onChanged: (Partner? value) {}),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20.0,
            ),
            customTextField(
              isHidden: false,
              contoller: _email,
              labelText: "Email",
            ),
            const SizedBox(
              height: 20.0,
            ),
            customTextField(
              isHidden: false,
              contoller: _phoneNumber,
              labelText: "Phone Number",
            ),
            const SizedBox(
              height: 20.0,
            ),
            CustomRoundedButton(
              onTap: () {},
              text: "Sign Up",
              textStyle: h2.copyWith(color: Colors.white),
              colour: bilinGreen,
              height: 70,
              width: 300,
              roundness: 50.0,
            ),
            const SizedBox(
              height: 20.0,
            ),
            HaveAccountWidget(
                question: "Already have an account?",
                clickableText: "Login",
                onTap: () {})
          ],
        ),
      ),
    );
  }
}

class HaveAccountWidget extends StatelessWidget {
  HaveAccountWidget(
      {required this.question,
      required this.clickableText,
      required this.onTap,
      Key? key})
      : super(key: key);
  String question;
  String clickableText;
  VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(question),
        const SizedBox(
          width: 5.0,
        ),
        MouseRegion(
          cursor: SystemMouseCursors.click,
          child: GestureDetector(
            onTap: onTap,
            child: Text(
              clickableText,
              style: const TextStyle(
                  color: bilinGreen, fontWeight: FontWeight.w600),
            ),
          ),
        )
      ],
    );
  }
}
