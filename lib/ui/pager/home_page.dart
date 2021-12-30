import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/constant/app_theme.dart';
import 'package:flutter_app/constant/cache_key.dart';
import 'package:flutter_app/ui/pager/tab_home_page.dart';
import 'package:flutter_app/ui/pager/tab_image_feed.dart';
import 'package:flutter_app/ui/pager/tab_myself_page.dart';

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
        title: const Text("flutterApp"),
        titleTextStyle: const TextStyle(fontSize: 16),
      ),
      body: PageView(
        children: [
          const TabHomePage(),
          Container(color: Colors.grey.shade50,child: const TabImageFeed()),
          Container(color: Colors.blueAccent),
          Container(color: Colors.grey.shade200,
            padding: const EdgeInsets.all(15),
            child: const TabMySelfPage(),),
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
