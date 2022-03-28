import 'package:bilin/constants/constants_colors.dart';
import 'package:bilin/widgets/login_widgets.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  static String id = "login_page";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Expanded(
            child: Container(
              color: bilinGreen,
              child: PageView(
                children: <Widget>[
                  // WelcomeToBilinWidget(
                  //   paragraph:
                  //       "Bilin is a platform that makes the donation process easier, allowing forward-thinking people and businesses to connect with nonprofits and community pantries that need their help the most.",
                  //   header: 'Welcome to Bilin',
                  // ),
                  WelcomeToBilinWidget(
                    header: "What you can do as our partner",
                    paragraph:
                        "Bilin is a platform that makes the donation process easier, allowing forward-thinking people and businesses to connect with nonprofit organizations and community pantries that need their help the most.",
                  ),
                  // WelcomeToBilinWidget(
                  //   header: "What you can do as a donor",
                  //   paragraph:
                  //       "Bilin is a platform that makes the donation process easier, allowing forward-thinking people and businesses to connect with nonprofit organizations and community pantries that need their help the most.",
                  // ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.white,
              child: PageView(
                children: [
                  PartnerSignupWidget(),
                  LoginWidget(),
                  DonorSignUpWidget()
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
