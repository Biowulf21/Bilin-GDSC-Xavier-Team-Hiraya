import 'package:bilin/constants/constants_text_styles.dart';
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
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 60.0, top: 20.0, bottom: 30.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          "Welcome to Bilin",
                          style: h2,
                        ),
                        SizedBox(height: 25),
                        Divider(
                          endIndent: MediaQuery.of(context).size.width * 0.4,
                          color: Colors.white,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                          width: 415,
                          child: Text(
                            "Bilin is a platform that makes the donation process easier, allowing forward-thinking people and businesses to connect with nonprofits and community pantries that need their help the most.",
                            style: landingPageParagraph.copyWith(
                                color: Colors.white),
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Center(
                          child: Row(
                            children: <Widget>[
                              Flexible(
                                child: CustomRoundedButton(
                                  onTap: () {},
                                  text: "Sign Up as Partner",
                                  textStyle: h3,
                                  colour: bilinGreen,
                                  width: 300,
                                  height: 60,
                                  borderColour: Colors.white,
                                  roundness: 50,
                                  borderWidth: 5,
                                ),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Flexible(
                                child: CustomRoundedButton(
                                  onTap: () {},
                                  text: "Sign Up as Donor",
                                  textStyle: h3,
                                  colour: bilinGreen,
                                  width: 300,
                                  height: 60,
                                  borderColour: Colors.white,
                                  roundness: 50,
                                  borderWidth: 5,
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
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
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            "Log In",
                            style: h2.copyWith(
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
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
                            onTap: () {},
                            text: "Login",
                            colour: bilinGreen,
                            height: 60,
                            width: 300,
                            roundness: 50,
                            borderWidth: 5,
                            textStyle: h3,
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          MouseRegion(
                            cursor: SystemMouseCursors.click,
                            child: GestureDetector(
                              child: Text("Forgot Password?"),
                              onTap: () {},
                            ),
                          )
                        ],
                      ),
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
