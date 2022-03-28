import 'package:bilin/constants/constants_colors.dart';
import 'package:bilin/widgets/custom_rounded_button.dart';
import 'package:bilin/widgets/login_widgets.dart';
import 'package:flutter/material.dart';
import 'package:bilin/constants/constants_text_styles.dart';

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
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      width: 800,
                      height: 600,
                      color: bilinGreen,
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Welcome to Bilin',
                              style:
                                  landingPageBold.copyWith(color: Colors.white),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
                              child: Divider(
                                endIndent: 600,
                                color: Colors.white,
                                thickness: 4,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 20.0, bottom: 20.0),
                              child: SizedBox(
                                width: 600,
                                child: Text(
                                  "Bilin is a platform that makes the donation process easier, allowing forward-thinking people and businesses to connect with nonprofits and community pantries that need their help the most.",
                                  style: landingPageParagraph.copyWith(
                                      color: Colors.white),
                                  textAlign: TextAlign.justify,
                                  softWrap: true,
                                ),
                              ),
                            ),
                            Row(
                              children: <Widget>[
                                CustomRoundedButton(
                                  onTap: () {},
                                  text: "Sign Up as our Partner",
                                  textStyle: landingPageParagraph.copyWith(
                                      color: Colors.white),
                                  colour: bilinGreen,
                                  width: 300,
                                  height: 70,
                                  borderColour: Colors.white,
                                  roundness: 50,
                                ),
                                const SizedBox(
                                  width: 20,
                                ),
                                CustomRoundedButton(
                                  onTap: () {},
                                  text: "Sign Up as our Partner",
                                  textStyle: landingPageParagraph.copyWith(
                                      color: Colors.white),
                                  colour: bilinGreen,
                                  width: 300,
                                  height: 70,
                                  borderColour: Colors.white,
                                  roundness: 50,
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.white,
              child: PageView(
                children: [PartnerSignupWidget()],
              ),
            ),
          )
        ],
      ),
    );
  }
}
