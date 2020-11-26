import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HelloWorldExample extends StatefulWidget {
  @override
  _HelloWorldExampleState createState() => _HelloWorldExampleState();
}

class _HelloWorldExampleState extends State<HelloWorldExample> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: new BoxDecoration(color: Colors.white),
      child: new Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          new Text(
            "Hello World",
            textDirection: TextDirection.ltr,
            style: new TextStyle(fontSize: 32.0, color: Colors.black87),
          ),
          new Image.asset(
            "image/qq.jpg",
            fit: BoxFit.cover,
          ),
          new Expanded(
            flex: 0,
            child: new Icon(
              Icons.star,
              color: Colors.red[500],
            ),
          ),
          new Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              new Icon(Icons.star, color: Colors.green[500]),
              new Icon(Icons.star, color: Colors.green[500]),
              new Icon(Icons.star, color: Colors.green[500]),
              new Icon(Icons.star, color: Colors.black),
              new Icon(Icons.star, color: Colors.black),
            ],
          ),
        ],
      ),
    );
  }
}
