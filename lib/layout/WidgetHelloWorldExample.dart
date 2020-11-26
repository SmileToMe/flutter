import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class HelloWorldLayoutExample extends StatefulWidget {
  @override
  _HelloWorldLayoutExampleState createState() =>
      _HelloWorldLayoutExampleState();
}

class _HelloWorldLayoutExampleState extends State<HelloWorldLayoutExample> {
  @override
  void setState(fn) {
    // TODO: implement setState
    super.setState(fn);
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return new Container(
      decoration: new BoxDecoration(color: Colors.white),
      alignment: Alignment.center,
      child: new Column(
        children: <Widget>[
          new Text(
            "Hello World",
            textDirection: TextDirection.ltr,
            style: new TextStyle(
                fontSize: 32.0,
                fontStyle: FontStyle.italic,
                letterSpacing: 5,
                fontWeight: FontWeight.bold,
                decoration: TextDecoration.lineThrough,
                decorationColor: Colors.black,
                decorationStyle: TextDecorationStyle.dashed),
          ),
          new Image.asset(
            "image/qq.jpg",
            fit: BoxFit.cover,
          ),
          new Icon(Icons.star, color: Colors.red[500]),
        ],
      ),
    );
  }
}
