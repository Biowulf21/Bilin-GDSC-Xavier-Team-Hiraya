import 'package:bilin/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:bilin/constants/constants_colors.dart';
import 'package:bilin/widgets/login_widgets.dart';

class SignUpDonorPage extends StatefulWidget {
  const SignUpDonorPage({Key? key}) : super(key: key);

  static const id = "/signup_donor";

  @override
  State<SignUpDonorPage> createState() => _SignUpDonorPageState();
}

class _SignUpDonorPageState extends State<SignUpDonorPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(isLandingPage: false),
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
              child: const SignUpDonorPage(),
            ),
          )
        ],
      ),
    );
  }
}
