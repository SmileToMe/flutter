import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LongListDismissible extends StatelessWidget {
  final String title;

  LongListDismissible({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> items =
    new List<String>.generate(20, (index) => "item $index");

    return new Scaffold(
      appBar: new AppBar(
        title: new Text(title),
      ),
      body: new ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            final item = items[index];
            return new Dismissible(
                background: new Container(
                  color: Colors.red,
                ),
                key: new Key(item),
                onDismissed: (direction) {
                  items.removeAt(index);
                  Scaffold.of(context).showSnackBar(
                      new SnackBar(content: new Text("$item dismissed")));
                },
                child: new ListTile(
                  title: new Text("${items[index]}"),
                ));
          }),
    );
  }
}
