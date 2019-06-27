import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:flutter_far_from_home/auth_model.dart';
import 'package:flutter_far_from_home/home_page.dart';
import 'package:flutter_far_from_home/login_page.dart';
import 'package:flutter_far_from_home/about_page.dart';
import 'package:flutter_far_from_home/my_page.dart';

class Router {
  static PageRoute generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case HomePage.routeName:
        return MaterialPageRoute(builder: (context) => HomePage());
      case LoginPage.routeName:
        return MaterialPageRoute(
          builder: (context) => LoginPage(),
          fullscreenDialog: true,
        );
      case AboutPage.routeName:
        return MaterialPageRoute(builder: (context) => AboutPage());
      case MyPage.routeName:
        return privatize(MyPage());
      default:
        print('no match route!');
        return null;
    }
  }

  static PageRoute privatize(Widget widget) {
    return MaterialPageRoute(
      builder: (context) =>
          Provider.of<AuthModel>(context).authorized ? widget : LoginPage(),
    );
  }
}
