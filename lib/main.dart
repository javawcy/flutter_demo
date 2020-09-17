import 'package:flutter/material.dart';
import 'package:layout_demo/http/http_utils.dart';
import 'package:layout_demo/pages/home.dart';

main(List<String> args) {
  HttpUtils.init(
    baseUrl: "http://127.0.0.1:8080/",
  );
  runApp(new App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home: new HomePage(),
      theme: new ThemeData(primaryColor: Colors.blue),
    );
  }
}
