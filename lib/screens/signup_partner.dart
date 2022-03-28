import 'package:flutter/material.dart';
import 'package:bilin/constants/constants_colors.dart';
import 'package:bilin/widgets/login_widgets.dart';

class SignUpPartnerPage extends StatefulWidget {
  const SignUpPartnerPage({Key? key}) : super(key: key);

  static const String id = "signup_partner";

  @override
  State<SignUpPartnerPage> createState() => _SignUpPartnerPageState();
}

class _SignUpPartnerPageState extends State<SignUpPartnerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Expanded(
            child: Container(
              color: bilinGreen,
              child: WelcomeToBilinWidget(
                onPress: () {},
                paragraph:
                    "Bilin is a platform that makes the donation process easier, allowing forward-thinking people and businesses to connect with nonprofits and community pantries that need their help the most.",
                header: 'Welcome to Bilin',
              ),
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.white,
              child: const SignUpPartnerPage(),
            ),
          )
        ],
      ),
    );
  }
}
