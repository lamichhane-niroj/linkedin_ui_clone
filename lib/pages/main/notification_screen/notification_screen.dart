import 'package:flutter/material.dart';
import 'package:linkedin_clone/constants/assets_const.dart';
import 'package:linkedin_clone/constants/style.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Row(
              children: [
                _singleCategoryItem(
                    title: "All",
                    bgColor: _selectedIndex == 0
                        ? Colors.green
                        : ColorPallette.linkedInWhiteFFFFFF,
                    textColor: _selectedIndex == 0
                        ? Colors.white
                        : ColorPallette.linkedInMediumGrey86888A,
                    border: _selectedIndex == 0 ? 0 : 1,
                    onTap: () {
                      setState(() {
                        _selectedIndex = 0;
                      });
                    }),
                const SizedBox(
                  width: 10,
                ),
                _singleCategoryItem(
                    title: "My posts",
                    bgColor: _selectedIndex == 1
                        ? Colors.green
                        : ColorPallette.linkedInWhiteFFFFFF,
                    textColor: _selectedIndex == 1
                        ? Colors.white
                        : ColorPallette.linkedInMediumGrey86888A,
                    border: _selectedIndex == 1 ? 0 : 1,
                    onTap: () {
                      setState(() {
                        _selectedIndex = 1;
                      });
                    }),
                const SizedBox(
                  width: 10,
                ),
                _singleCategoryItem(
                    title: "Mentions",
                    bgColor: _selectedIndex == 2
                        ? Colors.green
                        : ColorPallette.linkedInWhiteFFFFFF,
                    textColor: _selectedIndex == 2
                        ? Colors.white
                        : ColorPallette.linkedInMediumGrey86888A,
                    border: _selectedIndex == 2 ? 0 : 1,
                    onTap: () {
                      setState(() {
                        _selectedIndex = 2;
                      });
                    }),
              ],
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          const Divider(color: ColorPallette.linkedInLightGreyCACCCE),
          ListView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              shrinkWrap: true,
              physics: const ScrollPhysics(),
              itemCount: 15,
              itemBuilder: (context, index) {
                return _singleNotificationWidget();
              })
        ],
      ),
    );
  }

  _singleCategoryItem(
      {String? title,
      Color? textColor,
      Color? bgColor,
      VoidCallback? onTap,
      double? border}) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 35,
        padding: const EdgeInsets.symmetric(horizontal: 15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(width: border!),
          color: bgColor,
        ),
        child: Center(
          child: Text(
            "$title",
            style: TextStyle(color: textColor, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }

  _singleNotificationWidget() {
    return Container(
      width: double.infinity,
      height: 80,
      margin: const EdgeInsets.only(bottom: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              SizedBox(
                width: 70,
                height: 70,
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(35),
                    child: Image.asset(
                      AssetConst.PROFILE_2,
                      fit: BoxFit.cover,
                    )),
              ),
              const SizedBox(
                width: 10,
              ),
              const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Stephan Covey",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 2,
                  ),
                  Text(
                    "commented on your post - check out",
                    style: TextStyle(
                        color: ColorPallette.linkedInMediumGrey86888A),
                  )
                ],
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "1h",
                style: TextStyle(
                    color: ColorPallette.linkedInMediumGrey86888A,
                    fontSize: 12),
              ),
              GestureDetector(
                onTap: () {
                  _showMenuItem(context);
                },
                child: const Icon(
                  Icons.more_vert,
                  color: ColorPallette.linkedInMediumGrey86888A,
                ),
              )
            ],
          )
        ],
      ),
    );
  }

  _showMenuItem(BuildContext context) {
    showModalBottomSheet(
        enableDrag: true,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        context: context,
        builder: (context) {
          return Container(
            height: 180,
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            decoration: const BoxDecoration(
              color: ColorPallette.linkedInWhiteFFFFFF,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
            ),
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Column(
                children: [
                  Center(
                    child: Container(
                      width: 70,
                      height: 6,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: ColorPallette.linkedInMediumGrey86888A),
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  _bottomNavigationItem(
                      title: "Delete notification", iconData: Icons.delete),
                  const SizedBox(
                    height: 30,
                  ),
                  _bottomNavigationItem(
                      title: "Turn off this notification type",
                      iconData: Icons.notifications_off_outlined),
                ],
              ),
            ),
          );
        });
  }

  _bottomNavigationItem({IconData? iconData, String? title}) {
    return Row(
      children: [
        Icon(
          iconData,
          size: 25,
          color: ColorPallette.linkedInMediumGrey86888A,
        ),
        const SizedBox(
          width: 10,
        ),
        Text(
          "$title",
          style: const TextStyle(
              fontSize: 16,
              color: ColorPallette.linkedInMediumGrey86888A,
              fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}
