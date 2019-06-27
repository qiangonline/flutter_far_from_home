import 'package:flutter/material.dart';
import 'package:flutter_far_from_home/my_page.dart';
import 'package:flutter_far_from_home/about_page.dart';

class HomePage extends StatelessWidget {
  static const String routeName = '/';

  HomePage({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('home')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('home'),
            RaisedButton(
                onPressed: () {
                  Navigator.pushNamed(context, MyPage.routeName);
                },
                child: Text('my(only logged in user)')),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, AboutPage.routeName);
        },
        child: Icon(Icons.arrow_downward),
      ),
    );
  }
}
