
import 'package:ebook/pages/details_page.dart';
import 'package:ebook/pages/home_page.dart';
import 'package:flutter/material.dart';

Route<dynamic> generateRoute(RouteSettings setting) {
  final Map<String, dynamic> args = new Map<String, dynamic>();

  switch (setting.name) {
    case '/home_page':
      return MaterialPageRoute(builder: (context) => HomePage());
    case '/detail_page':
      return MaterialPageRoute(builder: (context) => DetailsPages());
    default:
      return MaterialPageRoute(
          builder: (context) => Scaffold(
                body: Center(),
              ));
  }
}