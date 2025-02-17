import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:new_structure/module/home/page/home_page.dart';

class TabItem {
  final String title;
  final Widget icon;
  final Widget activeIcon;
  final Widget page;
  final String? badge;

  TabItem({
    required this.title,
    required this.icon,
    required this.activeIcon,
    required this.page,
    this.badge,
  });
}

class TabsController extends GetxController {
  int selectedIndex = 0;

  List<TabItem> tabs = [
    TabItem(
      title: "Home",
      icon: Icon(Icons.home_outlined),
      activeIcon: Icon(Icons.home),
      page: HomePage(),
    ),
    TabItem(
      title: "Profile",
      icon: Icon(Icons.person_outline),
      activeIcon: Icon(Icons.person),
      page: Center(child: Text("Profile Page")),
    ),
  ];

  void onItemTapped(int index) {
    selectedIndex = index;
    update();
  }
}
