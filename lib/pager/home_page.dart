import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class _MainPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    throw UnimplementedError();
  }

}


List<BottomNavigationBarItem> bottomItemList = const [
  BottomNavigationBarItem(
    icon: Icon(
      Icons.home,
    ),
    title: Text("首页"),
  ),
  BottomNavigationBarItem(
    icon: Icon(
      Icons.business,
    ),
    title: Text("商店"),
  ),
  BottomNavigationBarItem(
    icon: Icon(
      Icons.message,
    ),
    title: Text("消息"),
  ),
  BottomNavigationBarItem(
    icon: Icon(
      Icons.person,
    ),
    title: Text("个人中心"),
  )
];
