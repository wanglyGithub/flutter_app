import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NavigationIconView {
  final BottomNavigationBarItem item;
  final String title;
  final String iconPath;
  final String activeIconPath;

  NavigationIconView(this.title, this.iconPath,
      this.activeIconPath)
      : item = BottomNavigationBarItem(
            icon: Image.asset(iconPath),
            activeIcon: Image.asset(activeIconPath),
            title: Text(title));
}
