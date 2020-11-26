import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("First Screen"),
      ),
      body: new Center(
        child: new RaisedButton(
          child: new Text("Launch new screen"),
          onPressed: () {
            Navigator.push(
                context,
                new MaterialPageRoute(
                    builder: (context) => new SecondScreen(
                          title: "第二个",
                        )));
          },
        ),
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  final String title;

  const SecondScreen({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Second Screen' + title),
      ),
      body: new RaisedButton(
        onPressed: () {
          Navigator.pop(context);
        },
        child: new Text('Go Back'),
      ),
    );
  }
}


