import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_icon_class/font_awesome_icon_class.dart';
import 'package:linkedin_clone/constants/assets_const.dart';
import 'package:linkedin_clone/constants/style.dart';
import 'package:linkedin_clone/pages/auth/signup_screen.dart';
import 'package:linkedin_clone/pages/main/main_screen/main_screen.dart';
import 'package:linkedin_clone/widgets/google_button_widget.dart';
import 'package:linkedin_clone/widgets/text_button_widget.dart';

class SigninScreen extends StatelessWidget {
  const SigninScreen({super.key});

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
                      "Sign in",
                      style:
                          TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const Text(
                      "Stay updated on your professional world",
                      style: TextStyle(fontSize: 14),
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
                    const Text(
                      "Forgot password?",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: ColorPallette.linkedInBlue0077B5),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    TextButtonWidget(
                      title: "Sign In",
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
                    const Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Divider(
                              color: ColorPallette.linkedInMediumGrey86888A),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Text("or"),
                        SizedBox(
                          width: 15,
                        ),
                        Expanded(
                          child: Divider(
                              color: ColorPallette.linkedInMediumGrey86888A),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    GoogleButtonWidget(
                      title: "Join in with Google",
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
                        title: "Join in with Apple",
                        hasIcon: true,
                        icon: Icon(FontAwesomeIcons.apple, size: 30)),
                    const SizedBox(height: 20),
                    Center(
                      child: RichText(
                        text: TextSpan(
                            text: "New to Linkedin? ",
                            style: const TextStyle(
                                color: ColorPallette.linkedInBlack000000,
                                fontSize: 16),
                            children: [
                              TextSpan(
                                  text: "Join now",
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                const SignupScreen(),
                                          ));
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
