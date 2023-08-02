import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled14/main.dart';
import 'package:untitled14/second_page.dart';
import 'package:untitled14/third_page.dart';

class GenerateRoutes {
  static const HOME = '/';
  static const SECOND = '/second';
  static const THIRD = '/third';

  static Route<dynamic> onGenerate(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case HOME:
        {
          return CupertinoPageRoute(builder: (context) => MyApp());
        }
      case SECOND:
        {
          return CupertinoPageRoute(builder: (context) => SecondPage());
        }
      case THIRD:
        {
          return CupertinoPageRoute(builder: (context) => ThirdPage());
        }
      default:
        {
          return CupertinoPageRoute(builder: (context) => MyApp());
        }
    }
  }
}
