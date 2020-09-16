import 'package:flutter/material.dart';

class HomeBannber extends StatefulWidget {
  @override
  _HomeBannberState createState() => _HomeBannberState();
}

class _HomeBannberState extends State<HomeBannber> {
  @override
  Widget build(BuildContext context) {
    return new Image.asset(
      "images/lake.jpg",
      height: 240,
      fit: BoxFit.cover,
    );
  }
}
