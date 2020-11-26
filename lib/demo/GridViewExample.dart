import 'package:flutter/material.dart';

class GridViewExample extends StatefulWidget {
  @override
  _GridViewExampleState createState() => _GridViewExampleState();
}

class _GridViewExampleState extends State<GridViewExample> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.orange,
      appBar: new AppBar(
        title: new Text("GridView"),
      ),
      body: new Center(
        child: buildGrid(),
      ),
    );
  }
}

Widget buildGrid() {
  return new GridView.extent(
    maxCrossAxisExtent: 150,
    padding: const EdgeInsets.all(4.0),
    mainAxisSpacing: 4.0,
    crossAxisSpacing: 4.0,
    children: _buildGridTileList(17),
  );
}

List<Container> _buildGridTileList(int count) {
  return new List<Container>.generate(
      count,
      (int index) => new Container(
            color: Colors.black,
            child: new Image.asset(
              "image/qq.jpg",
              fit: BoxFit.fill,
            ),
          ));
}
