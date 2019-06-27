import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_far_from_home/auth_model.dart';

class LoginPage extends StatefulWidget {
  static const String routeName = '/login';
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('login'),
        leading: IconButton(
          icon: Icon(Icons.close),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Consumer<AuthModel>(
        builder: (context, value, child) => Container(
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('login'),
                  RaisedButton(
                    onPressed: () {
                      value.authrozie(true);
                      Navigator.pop(context);
                    },
                    child: Text('login'),
                  )
                ],
              ),
            ),
      ),
    );
  }
}
