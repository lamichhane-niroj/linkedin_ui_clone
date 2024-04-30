import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_icon_class/font_awesome_icon_class.dart';
import 'package:linkedin_clone/constants/assets_const.dart';
import 'package:linkedin_clone/constants/style.dart';
import 'package:linkedin_clone/pages/auth/signin_screen.dart';
import 'package:linkedin_clone/pages/main/main_screen/main_screen.dart';
import 'package:linkedin_clone/widgets/google_button_widget.dart';
import 'package:linkedin_clone/widgets/text_button_widget.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 5.0),
                child: SvgPicture.asset(
                  AssetConst.APP_LOGO_SVG,
                  width: 50,
                  height: 50,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Join LinkedIn",
                      style:
                          TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    TextFormField(
                      decoration: const InputDecoration(
                        hintText: "Email or Phone",
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    TextFormField(
                      decoration: const InputDecoration(
                        hintText: "Password",
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    TextButtonWidget(
                      title: "Continue",
                      onTap: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const MainScreen()));
                      },
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    GoogleButtonWidget(
                      title: "Sign in with Google",
                      hasIcon: true,
                      icon: SvgPicture.asset(
                        AssetConst.GOOGLE_LOGO_SVG,
                        width: 30,
                        height: 30,
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    const GoogleButtonWidget(
                        title: "Sign in with Apple",
                        hasIcon: true,
                        icon: Icon(FontAwesomeIcons.apple, size: 30)),
                    const SizedBox(height: 20),
                    Center(
                      child: RichText(
                        text: TextSpan(
                            text: "Already on LinkedIn? ",
                            style: const TextStyle(
                                color: ColorPallette.linkedInBlack000000,
                                fontSize: 16),
                            children: [
                              TextSpan(
                                  text: "Sign in",
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () {
                                      Navigator.pushReplacement(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              const SigninScreen(),
                                        ),
                                      );
                                    },
                                  style: const TextStyle(
                                      color: ColorPallette.linkedInBlue0077B5,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16)),
                            ]),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
