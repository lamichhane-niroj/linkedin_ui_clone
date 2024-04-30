import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:linkedin_clone/constants/assets_const.dart';
import 'package:linkedin_clone/constants/style.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(4)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const CircleAvatar(
            backgroundImage: AssetImage(AssetConst.PROFILE_1),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Container(
              height: 35,
              decoration: BoxDecoration(
                  color: ColorPallette.linkedInLightGreyCACCCE.withOpacity(.5),
                  borderRadius: BorderRadius.circular(10)),
              child: TextFormField(
                decoration: const InputDecoration(
                    hintText: "Search",
                    border: InputBorder.none,
                    prefixIcon: Icon(Icons.search, size: 30)),
              ),
            ),
          ),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                CupertinoIcons.chat_bubble_2_fill,
                size: 28,
              ))
        ],
      ),
    );
  }
}
