import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/constant/app_theme.dart';
import 'package:flutter_app/constant/cache_key.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var currentPage = 0;
  PageController? pageController;

  @override
  void initState() {
    super.initState();
    pageController = PageController();
  }

  @override
  void dispose() {
    super.dispose();
    pageController?.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("开源中国"),
        titleTextStyle: const TextStyle(fontSize: 16),
      ),
      body: PageView(
        children: [
          Container(color: Colors.grey.shade200),
          Container(color: Colors.redAccent),
          Container(color: Colors.blueAccent),
          Container(color: Colors.teal),
        ],
        controller: pageController,
        physics: const BouncingScrollPhysics(),
        onPageChanged: (page) {
          setState(() => currentPage = page);
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: CacheKey.navigationBars,
        type: BottomNavigationBarType.fixed,
        selectedFontSize: AppFonts.fontSize,
        unselectedFontSize: AppFonts.fontSize,
        currentIndex: currentPage,
        onTap: (page) {
          pageController?.animateToPage(page,
              duration: const Duration(microseconds: 300),
              curve: Curves.ease.flipped);
        },
      ),
    );
  }
}
