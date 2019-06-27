import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_far_from_home/common/fade_route.dart';
import 'package:flutter_far_from_home/home_page.dart';

class SplashPage extends StatefulWidget {
  static const String routeName = '/splash';
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 2), () {
      Navigator.of(context).pushReplacement(
        FadeRoute(
          page: HomePage(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
        image: AssetImage('assets/splash.jpg'),
        fit: BoxFit.cover,
      )),
      child: null,
    );
  }
}
