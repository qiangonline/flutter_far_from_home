import 'dart:math';

import 'package:flutter/material.dart';

class AboutPage extends StatefulWidget {
  static const String routeName = '/about';

  AboutPage({Key key}) : super(key: key);

  _AboutPageState createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> with WidgetsBindingObserver {
  double _width;
  double _height;
  Color _color;

  void _animate() {
    setState(() {
      final random = Random();
      _width = random.nextInt(300).toDouble();
      _height = random.nextInt(300).toDouble();
      _color = Color.fromRGBO(
          random.nextInt(256), random.nextInt(256), random.nextInt(256), 1);
    });
  }

  void _gotoDetail() {
    Navigator.pushNamed(context, '/about/detail');
  }

  @override
  void initState() {
    super.initState();
    _animate();
    WidgetsBinding.instance.addObserver(this);
    print('about page init');
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    print('about page change dependencies');
  }

  @override
  void deactivate() {
    super.deactivate();
    print('about page deactivate');
  }

  @override
  void dispose() {
    super.dispose();
    WidgetsBinding.instance.removeObserver(this);
    print('about page dispose');
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    super.didChangeAppLifecycleState(state);
    print(state.toString());
  }

  @override
  Widget build(BuildContext context) {
    print('about page build');
    return Scaffold(
      appBar: AppBar(title: Text('about')),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AnimatedContainer(
                width: _width,
                height: _height,
                decoration: BoxDecoration(color: _color),
                duration: Duration(seconds: 1),
                curve: Curves.fastOutSlowIn,
              ),
              RaisedButton(
                child: Text('animate'),
                onPressed: _animate,
              ),
              RaisedButton(
                child: Text('detail'),
                onPressed: _gotoDetail,
              ),
            ],
          ),
        ],
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
