import 'package:flutter/material.dart';

class DifferentItemExample extends StatelessWidget {
  final String ss;

  const DifferentItemExample({Key key, @required this.ss}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<ListItem> itemsData = new List<ListItem>.generate(
        1200,
        (index) => index % 6 == 0
            ? new HeadingItem("Heading $index")
            : new MessageItem("Sender $index", "Message body $index"));

    return new MaterialApp(
      title: ss,
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text(ss),
        ),
        body: new ListView.builder(itemBuilder: (context, index) {
          final item = itemsData[index];
          if (item is HeadingItem) {
            return new ListTile(
                title: new Text(
              item.heading,
              style: Theme.of(context).textTheme.headline,
            ));
          } else if (item is MessageItem) {
            return new ListTile(
              title: new Text(item.sender),
              subtitle: new Text(item.body),
            );
          }
          return null;
        }),
      ),
    );
  }
}

abstract class ListItem {}

class HeadingItem implements ListItem {
  final String heading;

  HeadingItem(this.heading);
}

class MessageItem implements ListItem {
  final String sender;
  final String body;

  MessageItem(this.sender, this.body);
}
