import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LongListViewExample extends StatelessWidget {
  final items = new List<String>.generate(10000, (i) => "Item $i");

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: items[0],
      home: new Scaffold(
          appBar: new AppBar(
            title: new Text('长列表'),
          ),
          body: new ListView.builder(
            itemCount: items.length,
            itemBuilder: (context, index) {
              return new ListTile(
                title: new Text('${items[index]}'),
              );
            },
          )),
    );
  }
}
