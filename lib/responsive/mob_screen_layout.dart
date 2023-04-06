import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utils/colors.dart';
import '../utils/global_variables.dart';

class MobScreenlayout extends StatefulWidget {
  MobScreenlayout({super.key});

  @override
  State<MobScreenlayout> createState() => _MobScreenlayoutState();
}

class _MobScreenlayoutState extends State<MobScreenlayout> {
  int _page = 0;
  late PageController pageController;

  @override
  void initState() {
    super.initState();
    pageController = PageController();
  }

  @override
  void dispose() {
    super.dispose();
    pageController.dispose();
  }

  void onNavigationTapped(int page) {
    pageController.jumpToPage(page);
  }

  void onPageChanged(int page) {
    setState(() {
      _page = page;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        //*homeScreenItems* refers to the array that i created in global_var.dart//
        children: homeScreenItems,
        controller: pageController,
        onPageChanged: onPageChanged,
      ),
      bottomNavigationBar: CupertinoTabBar(
        backgroundColor: Colors.white,
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: _page == 0 ? blueColor : mobBackgroundColor,
              ),
              label: "",
              backgroundColor: Colors.white),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.search,
                color: _page == 1 ? blueColor : mobBackgroundColor,
              ),
              label: "",
              backgroundColor: Colors.white),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.add_a_photo_rounded,
                color: _page == 2 ? blueColor : mobBackgroundColor,
              ),
              label: "",
              backgroundColor: Colors.white),
          BottomNavigationBarItem(
              icon: Icon(
                CupertinoIcons.heart,
                color: _page == 3 ? blueColor : mobBackgroundColor,
              ),
              label: "",
              backgroundColor: Colors.white),
          BottomNavigationBarItem(
              icon: Icon(
                CupertinoIcons.profile_circled,
                color: _page == 4 ? blueColor : mobBackgroundColor,
              ),
              label: "",
              backgroundColor: Colors.white),
        ],
        onTap: onNavigationTapped,
      ),
    );
  }
}
