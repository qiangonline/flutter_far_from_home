import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class AboutDetailPage extends StatefulWidget {
  static const String routeName = '/about/detail';

  @override
  _AboutDetailPageState createState() => _AboutDetailPageState();
}

class _AboutDetailPageState extends State<AboutDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('about detail')),
      body: WebView(
        initialUrl: 'https://www.baidu.com',
      ),
    );
  }
}
