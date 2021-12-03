import 'package:flutter/cupertino.dart';
import 'dart:ui' as ui;

class ScreenUtils {
  late MediaQueryData _mediaQueryData;

  double _screenWidth = 0.0;
  double _screenHeight = 0.0;

  static final ScreenUtils _singleton = ScreenUtils();

  static ScreenUtils getInstance() {
    _singleton._init();
    return _singleton;
  }

  _init() {
    MediaQueryData mediaQuery = MediaQueryData.fromWindow(ui.window);

    if (_mediaQueryData != mediaQuery) {
      _mediaQueryData = mediaQuery;
      _screenWidth = mediaQuery.size.width;
      _screenHeight = mediaQuery.size.height;
    }
  }

  /// screen width
  /// 屏幕 宽
  double get screenWidth => _screenWidth;

  /// screen height
  /// 屏幕 高
  double get screenHeight => _screenHeight;

  /// media Query Data
  MediaQueryData get mediaQueryData => _mediaQueryData;

  /// screen width
  /// 当前屏幕 宽
  static double screenW(BuildContext context) {
    MediaQueryData mediaQuery = MediaQuery.of(context);
    return mediaQuery.size.width;
  }

  /// screen height
  /// 当前屏幕 高
  static double screenH(BuildContext context) {
    MediaQueryData mediaQuery = MediaQuery.of(context);
    return mediaQuery.size.height;
  }
}
