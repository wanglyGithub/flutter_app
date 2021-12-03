import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {

  const MyApp({Key? key}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        backgroundColor: Colors.blue,
      ),
      home: const BottomNavigationWidget(),
    );
  }
}

class BottomNavigationWidget extends StatefulWidget {
  const BottomNavigationWidget({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return BottomNavigationWidgetState();
  }
}

class BottomNavigationWidgetState extends State<BottomNavigationWidget> {
  int _currentPosition = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      selectedItemColor: Colors.blue,
      unselectedItemColor: Colors.grey,
      selectedFontSize: 12,
      unselectedFontSize: 12,
      onTap: (index) {
        Fluttertoast.showToast(msg: "选中下标位置：$index");

        if (index != _currentPosition) {
          setState(() {
            _currentPosition = index;
          });
        }
      },
      currentIndex: _currentPosition,
      items: bottomItemList,
    ));
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
}
