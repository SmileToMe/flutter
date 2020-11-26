import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ThemExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final appName = 'ustom Thems';
//    return Container();
    return new MaterialApp(
      title: appName,
      theme: new ThemeData(
          brightness: Brightness.dark,
          primaryColor: Colors.lightBlue[800],
          accentColor: Colors.cyan[600]),
      home: MyHomePage(
        title: appName,
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  final String title;

  const MyHomePage({Key key, this.title}) : super(key: key);
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(widget.title),
      ),
      body: new Center(
        child: new Container(
          color: Theme.of(context).accentColor,
          child: new Text(
            'Text with a background color',
            style: Theme.of(context).textTheme.title,
          ),
        ),
      ),
      floatingActionButton: new Theme(
          data: Theme.of(context).copyWith(accentColor: Colors.yellow),
          child: new FloatingActionButton(
            onPressed: null,
//            child: new Icon(Icons.add),
            child: new Image.network(
                'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1595227573632&di=ef8844b7725eb39a0ecf330e2e4f42d8&imgtype=0&src=http%3A%2F%2Fimg4.imgtn.bdimg.com%2Fit%2Fu%3D2918078409%2C3119105307%26fm%3D214%26gp%3D0.jpg'),
          )),
    );
  }

}

