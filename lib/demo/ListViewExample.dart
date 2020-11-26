import 'package:flutter/material.dart';

class ListViewExampleDemo extends StatefulWidget {
  @override
  _ListViewExampleDemoState createState() => _ListViewExampleDemoState();
}

class _ListViewExampleDemoState extends State<ListViewExampleDemo> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("ListView"),
      ),
      body: new ListView(
        children: list,
      ),
    );
  }
}

List<Widget> list = <Widget>[
  new ListTile(
    title: new Text(
      "CineArts at the Empire",
      style: new TextStyle(fontWeight: FontWeight.w500, fontSize: 20.0),
    ),
    subtitle: new Text("85 W Portal Ave"),
    leading: new Icon(
      Icons.theaters,
      color: Colors.blue[500],
    ),
  ),
  new ListTile(
    title: new Text(
      "The Castro Theater",
      style: new TextStyle(fontWeight: FontWeight.w500, fontSize: 20.0),
    ),
    subtitle: new Text("429 Castro St"),
    leading: new Icon(
      Icons.theaters,
      color: Colors.blue[500],
    ),
  ),
];
