import 'package:flutter/material.dart';
import 'package:layout_demo/pages/home.dart';

main(List<String> args) {
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
