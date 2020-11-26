import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';

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

class MyHomePage extends StatelessWidget {
  final String title;

  const MyHomePage({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(title),
      ),
      body: new Stack(children: <Widget>[
        new Center(
            child: new Container(
          color: Theme.of(context).accentColor,
          child: new Text(
            'Text with a background color',
            style: Theme.of(context).textTheme.title,
          ),
        )),
        new Center(
          child: new FadeInImage.memoryNetwork(
              placeholder: kTransparentImage,
              image:
                  'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1595238853953&di=f38766016b928c06366d975ccfd2cc19&imgtype=0&src=http%3A%2F%2Fc.hiphotos.baidu.com%2Fexp%2Fw%3D500%2Fsign%3D432aef2ac35c1038247ecec28211931c%2Fd4628535e5dde7113a95acc6a2efce1b9d1661bf.jpg'),
        ),
      ]),
      floatingActionButton: new Theme(
          data: Theme.of(context).copyWith(accentColor: Colors.yellow),
          child: new FloatingActionButton(
            onPressed: null,
//            child: new Icon(Icons.add),
            child: new Image.network(
                'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1595238853953&di=f38766016b928c06366d975ccfd2cc19&imgtype=0&src=http%3A%2F%2Fc.hiphotos.baidu.com%2Fexp%2Fw%3D500%2Fsign%3D432aef2ac35c1038247ecec28211931c%2Fd4628535e5dde7113a95acc6a2efce1b9d1661bf.jpg'),
          )),
    );
  }
}
