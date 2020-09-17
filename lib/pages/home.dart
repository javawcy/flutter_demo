import 'package:flutter/material.dart';
import 'package:layout_demo/components/home_banner.dart';
import 'package:layout_demo/components/home_button.dart';
import 'package:layout_demo/components/home_detail.dart';
import 'package:layout_demo/components/home_title.dart';
import 'package:layout_demo/http/http_utils.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Center(
          child: new Text("App"),
        ),
      ),
      body: _buildHomePage(),
    );
  }

  Widget _buildHomePage() {
    return new ListView(
      children: [
        new HomeBannber(),
        new HomeTitle(),
        new HomeButton(),
        new HomeDetail()
      ],
    );
  }

  void _hello() async {
    final response = await HttpUtils.get("hello");
    print(response);
  }

  @override
  void initState() {
    super.initState();
    _hello();
  }
}
