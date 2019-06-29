import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_far_from_home/auth_model.dart';
import 'package:flutter_far_from_home/login_page.dart';

class AboutPage extends StatefulWidget {
  static const String routeName = '/about';

  AboutPage({Key key}) : super(key: key);

  _AboutPageState createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('about')),
      body: Consumer<AuthModel>(
        builder: (context, value, child) => Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('about'),
                  !value.authorized
                      ? RaisedButton(
                          color: Theme.of(context).primaryColor,
                          textColor: Colors.white,
                          onPressed: () {
                            Navigator.pushNamed(context, LoginPage.routeName);
                          },
                          child: Text('login'),
                        )
                      : RaisedButton(
                          color: Theme.of(context).primaryColor,
                          textColor: Colors.white,
                          onPressed: () {
                            value.authrozie(false);
                          },
                          child: Text('logout'),
                        )
                ],
              ),
            ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pop(context);
        },
        child: Icon(Icons.arrow_back),
      ),
    );
  }
}
