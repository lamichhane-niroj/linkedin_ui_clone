import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:linkedin_clone/constants/assets_const.dart';
import 'package:linkedin_clone/constants/style.dart';
import 'package:linkedin_clone/pages/auth/signin_screen.dart';
import 'package:linkedin_clone/pages/onboarding/on_boarding_entity.dart';
import 'package:linkedin_clone/widgets/google_button_widget.dart';
import 'package:linkedin_clone/widgets/text_button_widget.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: PageView.builder(
          itemCount: 3,
          itemBuilder: (context, index) => Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SvgPicture.asset(
                AssetConst.APP_LOGO_SVG,
                width: 50,
                height: 50,
              ),
              const SizedBox(height: 15),
              Image.asset(
                OnBoardingEntity.onBoardingData[index].image!,
              ),
              Center(
                child: Text(
                  OnBoardingEntity.onBoardingData[index].title!,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                      fontSize: 22, fontWeight: FontWeight.bold),
                ),
              ),
              const Spacer(),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15.0, vertical: 5),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        for (var i = 0; i < 3; i++)
                          Container(
                            margin: const EdgeInsets.symmetric(horizontal: 5),
                            height: 10,
                            width: 10,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(width: 1),
                                color: i == index
                                    ? ColorPallette.linkedInBlack000000
                                    : ColorPallette.linkedInWhiteFFFFFF),
                          ),
                      ],
                    ),
                    const SizedBox(height: 15),
                    TextButtonWidget(title: "Join now", onTap: () {}),
                    const SizedBox(height: 15),
                    GoogleButtonWidget(
                      title: "Join with Google",
                      hasIcon: true,
                      icon: SvgPicture.asset(
                        AssetConst.GOOGLE_LOGO_SVG,
                        width: 30,
                        height: 30,
                      ),
                    ),
                    const SizedBox(height: 15),
                    Center(
                      child: TextButton(
                          onPressed: () {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const SigninScreen(),
                                ));
                          },
                          child: const Text(
                            "Sign In",
                            style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                                color: ColorPallette.linkedInBlue0077B5),
                          )),
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
