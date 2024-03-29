import 'package:flutter/services.dart';
import 'package:flutter/material.dart';
import 'package:flutter_far_from_home/home_page.dart';
import 'package:provider/provider.dart';

import 'package:flutter_far_from_home/app_route_observer.dart';

import 'package:flutter_far_from_home/router.dart';
import 'package:flutter_far_from_home/auth_model.dart';

void main() {
  SystemChrome.setPreferredOrientations(
    [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown],
  );
  runApp(Provider<AuthModel>(
    builder: (context) => AuthModel(),
    child: MyApp(),
  ));
}

final AppRouteObserver routeObserver = AppRouteObserver();

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
      initialRoute: HomePage.routeName,
      onGenerateRoute: (setting) => Router.generateRoute(context, setting),
      navigatorObservers: [routeObserver],
    );
  }
}
