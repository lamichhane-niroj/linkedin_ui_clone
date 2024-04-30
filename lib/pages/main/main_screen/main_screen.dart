import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_icon_class/font_awesome_icon_class.dart';
import 'package:linkedin_clone/constants/style.dart';
import 'package:linkedin_clone/pages/main/home_screen/home_screen.dart';
import 'package:linkedin_clone/pages/main/jobs_screen/jobs_screen.dart';
import 'package:linkedin_clone/pages/main/main_screen/widgets/appbar_widget.dart';
import 'package:linkedin_clone/pages/main/network_screen/network_screen.dart';
import 'package:linkedin_clone/pages/main/notification_screen/notification_screen.dart';
import 'package:linkedin_clone/pages/main/post_screen/post_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {

  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
         setState(() {
           _currentIndex = index;
         });
        },
        selectedItemColor: ColorPallette.linkedInBlack000000,
        selectedLabelStyle: const TextStyle(color: ColorPallette.linkedInBlack000000, fontSize: 13),
        unselectedItemColor: ColorPallette.linkedInMediumGrey86888A.withOpacity(0.7),
        unselectedLabelStyle: TextStyle(color: ColorPallette.linkedInMediumGrey86888A.withOpacity(0.7)),
        showUnselectedLabels: true,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.house_fill),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.userGroup),
            label: "Network",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.add_box,
              size: 28,
            ),
            label: "Post",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.notifications,
              size: 28,
            ),
            label: "Notifications",
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.briefcase),
            label: "Jobs",
          ),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const AppBarWidget(),
                _switchPage(_currentIndex)
            
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _switchPage(int index){
    switch(index){
      case 0:
        return HomeScreen();
      case 1:
        return NetworkScreen();
      case 2:
        return PostScreen();
      case 3:
        return NotificationScreen();
      case 4:
        return JobsScreen();
      default:
        return Scaffold();
    }
  }
}
