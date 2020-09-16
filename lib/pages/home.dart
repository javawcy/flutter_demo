import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:layout_demo/components/home_banner.dart';
import 'package:layout_demo/components/home_button.dart';
import 'package:layout_demo/components/home_detail.dart';
import 'package:layout_demo/components/home_title.dart';

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
    var url = "http://localhost:9981/hello";
    var httpClient = new HttpClient();
    String res;

    try {
      var request = await httpClient.getUrl(Uri.parse(url));
      var response = await request.close();
      if (response.statusCode == HttpStatus.ok) {
        var json = await response.transform(utf8.decoder).join();
        res = json;
      } else {
        res = "fail";
      }
    } catch (exception) {
      res = "error";
    }

    debugPrint(res);
  }

  @override
  void initState() {
    super.initState();
    _hello();
  }
}
