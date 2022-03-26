import 'package:bilin/widgets/custom_rounded_button.dart';
import 'package:bilin/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:bilin/constants/constants_colors.dart';
import 'package:bilin/widgets/custom_app_bar.dart';

class LoginPage extends StatelessWidget {
  static String id = "login_page";

  LoginPage({this.isNotHidden, Key? key}) : super(key: key);

  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  // FocusNode usernameFocusNode = FocusNode();
  // FocusNode passwordFocusNode = FocusNode();

  final bool? isNotHidden;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        isLandingPage: false,
      ),
      body: ListView(
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
                    children: const <Widget>[],
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.5,
                  height: MediaQuery.of(context).size.height * 1,
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(40.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        const Text("Log In"),
                        // Divider(
                        //   endIndent: MediaQuery.of(context).size.width * 0.4,
                        // ),
                        const SizedBox(
                          height: 40.0,
                        ),
                        const SizedBox(
                          height: 15.0,
                        ),
                        customTextField(
                            isHidden: false,
                            contoller: usernameController,
                            labelText: "Username",
                            prefixIcon: Icons.person,
                            usernameController: usernameController),
                        customTextField(
                            contoller: passwordController,
                            isHidden: true,
                            labelText: "Password",
                            prefixIcon: Icons.lock,
                            usernameController: usernameController),
                        const SizedBox(
                          height: 40.0,
                        ),
                        CustomRoundedButton(
                            onTap: () {}, text: "login", colour: bilinGreen)
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
