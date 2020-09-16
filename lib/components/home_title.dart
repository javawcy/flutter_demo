import 'package:flutter/material.dart';

class HomeTitle extends StatefulWidget {
  @override
  _HomeTitleState createState() => _HomeTitleState();
}

class _HomeTitleState extends State<HomeTitle> {

  bool _isFavorited = false;
  int _favoriteCount = 40;

  void _clickFavorite() {
    setState(() {
      if (_isFavorited) {
        _isFavorited = false;
        _favoriteCount -= 1;
      } else {
        _isFavorited = true;
        _favoriteCount += 1;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(32),
      child: new Row(
        children: [
          new Expanded(
              child: new Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              new Container(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: new Text(
                  "Oeschinen Lake Campground",
                  style: new TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              new Text(
                "Kandersteg, Switzerland",
                style: new TextStyle(color: Colors.grey[500]),
              )
            ],
          )),
          new IconButton(
              icon: _isFavorited
                  ? new Icon(
                      Icons.star,
                      color: Colors.red[500],
                    )
                  : new Icon(Icons.star_border),
              onPressed: _clickFavorite),
          new SizedBox(
            width: 18,
            child: new Text("$_favoriteCount"),
          )
        ],
      ),
    );
  }
}
