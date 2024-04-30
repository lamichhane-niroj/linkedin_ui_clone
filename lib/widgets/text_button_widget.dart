import 'package:flutter/material.dart';
import 'package:linkedin_clone/constants/style.dart';

class TextButtonWidget extends StatelessWidget {
  const TextButtonWidget(
      {super.key,
      this.width,
      this.height,
      required this.title,
      this.onTap,
      this.hasIcon,
      this.icon});

  final double? width;
  final double? height;
  final String title;
  final VoidCallback? onTap;
  final bool? hasIcon;
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
          height: 45,
          width: width,
          decoration: BoxDecoration(
              color: ColorPallette.linkedInBlue0077B5,
              borderRadius: BorderRadius.circular(20),
              boxShadow: const [
                BoxShadow(
                    offset: Offset(0, 3),
                    spreadRadius: 0.5,
                    blurRadius: 4.5,
                    color: ColorPallette.linkedInLightGreyCACCCE)
              ]),
          child: Center(
            child: hasIcon == true
                ? Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        title,
                        style: const TextStyle(
                            color: ColorPallette.linkedInWhiteFFFFFF,
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Icon(
                        icon,
                        color: ColorPallette.linkedInWhiteFFFFFF,
                        size: 15,
                      ),
                    ],
                  )
                : Text(
                    title,
                    style: const TextStyle(
                        color: ColorPallette.linkedInWhiteFFFFFF,
                        fontWeight: FontWeight.bold),
                  ),
          )),
    );
  }
}
