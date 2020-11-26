import 'package:flutter/material.dart';

class GridListExample extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("data"),
      ),
      body: new GridView.count(
        crossAxisCount: 3,
        childAspectRatio: 2,
        children: new List.generate(100, (index) {
          return new Center(
              child: new Text(
            "data $index",
            style: Theme.of(context).textTheme.headline,
          ));
        }),
      ),
    );
  }
}
