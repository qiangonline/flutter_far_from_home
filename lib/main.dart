import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:flutter_far_from_home/common/fade_route.dart';
import 'package:flutter_far_from_home/app_route_observer.dart';

import 'package:flutter_far_from_home/router.dart';
import 'package:flutter_far_from_home/auth_model.dart';
import 'package:flutter_far_from_home/splash_page.dart';

void main() => runApp(MyApp());

final AppRouteObserver routeObserver = AppRouteObserver();

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Provider<AuthModel>(
      builder: (context) => AuthModel(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          // This is the theme of your application.
          //
          // Try running your application with "flutter run". You'll see the
          // application has a blue toolbar. Then, without quitting the app, try
          // changing the primarySwatch below to Colors.green and then invoke
          // "hot reload" (press "r" in the console where you ran "flutter run",
          // or simply save your changes to "hot reload" in a Flutter IDE).
          // Notice that the counter didn't reset back to zero; the application
          // is not restarted.
          primarySwatch: Colors.blue,
        ),
        home: SplashPage(),
        onGenerateRoute: Router.generateRoute,
        navigatorObservers: [routeObserver],
      ),
    );
  }
}
