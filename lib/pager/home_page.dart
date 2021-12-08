import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/constant/app_theme.dart';
import 'package:flutter_app/constant/cache_key.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _HomePageState();
  }
}

class _HomePageState extends State<HomePage> {

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("开源中国"),
        titleTextStyle: const TextStyle(fontSize: 16),
      ),
      body: Container(),
      bottomNavigationBar: BottomNavigationBar(
        items: CacheKey.navigationBars,
        type: BottomNavigationBarType.fixed,
        selectedFontSize: AppFonts.fontSize,
        unselectedFontSize: AppFonts.fontSize,
      ),
    );
  }
}
