import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CacheKey{
  static String userInfo = 'user_info_key';


  static List<BottomNavigationBarItem> navigationBars= const [
     BottomNavigationBarItem(icon: Icon(Icons.home),label: "首页"),
     BottomNavigationBarItem(icon: Icon(Icons.business),label: "商店"),
     BottomNavigationBarItem(icon: Icon(Icons.message),label: "消息"),
     BottomNavigationBarItem(icon: Icon(Icons.person),label: "我的"),
  ];
}