import 'package:flutter/material.dart';

class ListViewExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final title = 'Basic Lsit';

    return new Scaffold(
      appBar: new AppBar(
        title: new Text(title),
      ),
      body: new ListView(
        children: <Widget>[
          new ListTile(
            leading: new Icon(Icons.map),
            title: new Text('Maps'),
          ),
          new ListTile(
              leading: new Icon(Icons.photo_album),
              title: new Text(
                'Album',
              )),
          new ListTile(
            leading: new Icon(Icons.phone),
            title: new Text('Phone'),
          )
        ],
      ),
    );
  }
}
