import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:flutter_far_from_home/auth_model.dart';
import 'package:flutter_far_from_home/home_page.dart';
import 'package:flutter_far_from_home/login_page.dart';
import 'package:flutter_far_from_home/about_page.dart';
import 'package:flutter_far_from_home/about_detail_page.dart';
import 'package:flutter_far_from_home/my_page.dart';

class Router {
  static PageRoute generateRoute(BuildContext context, RouteSettings settings) {
    print('.........');
    switch (settings.name) {
      case HomePage.routeName:
        return MaterialPageRoute(
          builder: (context) => HomePage(),
          settings: settings,
        );
      case LoginPage.routeName:
        return MaterialPageRoute(
          builder: (context) => LoginPage(),
          settings: settings,
          fullscreenDialog: true,
        );
      case AboutPage.routeName:
        return MaterialPageRoute(
          builder: (context) => AboutPage(),
          settings: settings,
        );
      case AboutDetailPage.routeName:
        return MaterialPageRoute(
          builder: (context) => AboutDetailPage(),
          settings: settings,
        );
      case MyPage.routeName:
        return privatize(
          context: context,
          page: MaterialPageRoute(
            builder: (context) => MyPage(),
            settings: settings,
          ),
        );
      default:
        print('no match route!');
        return null;
    }
  }

  static PageRoute privatize({BuildContext context, MaterialPageRoute page}) {
    bool authorized = Provider.of<AuthModel>(context).authorized;
    if (authorized) {
      return page;
    } else {
      return MaterialPageRoute(
        builder: (context) => LoginPage(),
        settings: RouteSettings(name: LoginPage.routeName),
        fullscreenDialog: true,
      );
    }
  }
}
