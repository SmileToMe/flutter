import 'package:flutter/material.dart';

class TitleLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new ListView(
        children: <Widget>[
          new Image.asset(
            "image/qq.jpg",
            height: 240,
            fit: BoxFit.cover,
          ),
          _titleSection(),
          _btnTab(context),
          _textSection(),
        ],
      ),
    );
  }
}

Widget _titleSection() {
  Widget titleSection = new Container(
    padding: const EdgeInsets.all(32.0),
    child: new Row(
      children: <Widget>[
        new Expanded(
          child: new Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              new Container(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: new Text(
                  'Oeschinen Lake Campground',
                  style: new TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              new Text(
                "Kandersteg, Switzerland",
                style: new TextStyle(
                  color: Colors.grey[500],
                ),
              )
            ],
          ),
        ),
        new Icon(
          Icons.star,
          color: Colors.red[500],
        ),
        new Text("41"),
      ],
    ),
  );
  return titleSection;
}

Widget _btnTab(BuildContext context) {
  Widget buttonSection = new Container(
    child: new Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        _itemTab(context, Icons.call, "CALL"),
        _itemTab(context, Icons.near_me, "ROUTE"),
        _itemTab(context, Icons.share, "SHARE"),
      ],
    ),
  );

  return buttonSection;
}

Widget _itemTab(BuildContext context, IconData icon, String label) {
  Widget itemTab = new Column(
    mainAxisSize: MainAxisSize.min,
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      new Icon(
        icon,
        color: Theme.of(context).primaryColor,
      ),
      new Container(
        margin: const EdgeInsets.only(top: 8.0),
        child: new Text(
          label,
          style: new TextStyle(
            fontSize: 12.0,
            fontWeight: FontWeight.w400,
            color: Theme.of(context).primaryColor,
          ),
        ),
      )
    ],
  );
  return itemTab;
}

Widget _textSection() {
  Widget textSection = new Container(
    padding: const EdgeInsets.all(32.0),
    child: new Text(
      "Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese Alps. Situated 1,578 meters above sea level, it is one of the larger Alpine Lakes. A gondola ride from Kandersteg, followed by a half-hour walk through pastures and pine forest, leads you to the lake, which warms to 20 degrees Celsius in the summer. Activities enjoyed here include rowing, and riding the summer toboggan run.",
      softWrap: true,
    ),
  );

  return textSection;
}
