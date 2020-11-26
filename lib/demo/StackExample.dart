import 'package:flutter/material.dart';

class StackExample extends StatefulWidget {
  @override
  _StackExampleState createState() => _StackExampleState();
}

class _StackExampleState extends State<StackExample> {
  @override
  Widget build(BuildContext context) {
    var stack = new Stack(
      alignment: const Alignment(0, 0),
      children: <Widget>[
        new CircleAvatar(
          backgroundImage: new AssetImage("image/qq.jpg"),
          radius: 100.0,
        ),
        new Container(
          decoration: new BoxDecoration(color: Colors.black45),
          child: new Text(
            "Mia B",
            style: new TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: Colors.white),
          ),
        )
      ],
    );

    return new Scaffold(
      backgroundColor: Colors.grey,
      appBar: new AppBar(
        title: new Text("Stack"),
      ),
      body: stack,
    );
  }
}
