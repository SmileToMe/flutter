import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutterapp/DismissibleExample.dart';
import 'package:flutterapp/GestureDetectorExample.dart';
import 'package:flutterapp/HomePage.dart';
import 'package:flutterapp/demo/GridViewExample.dart';
import 'package:flutterapp/demo/HomePageState.dart';
import 'package:flutterapp/demo/ListViewExample.dart';
import 'package:flutterapp/demo/RowColumnExample.dart';
import 'package:flutterapp/demo/StackExample.dart';
import 'package:flutterapp/layout/WidgetHelloWorldExample.dart';
import 'demo/HellowWorldExample.dart';
import 'package:flutterapp/LoginPage.dart';
import 'package:flutterapp/NavigatorExample.dart';
import 'package:flutterapp/ShoppingListStateFul.dart';
import 'package:flutterapp/TodoExample.dart';
import 'package:flutterapp/TodoReturnValueExample.dart';
import 'package:flutterapp/demo/AnimatedListSample.dart';
import 'package:flutterapp/demo/AppBarBottomSample.dart';
import 'package:flutterapp/demo/BasicAppBarExample.dart';
import 'package:flutterapp/demo/ExpansionTileExample.dart';
import 'package:flutterapp/demo/TabbedAppBarExample.dart';
import 'package:flutterapp/http/HttpExample.dart';
import 'package:flutterapp/layout/FirstLayoutExample.dart';
import 'package:flutterapp/listView/DifferentItemListViewExample.dart';
import 'package:flutterapp/listView/GridListExample.dart';
import 'package:flutterapp/listView/LongListViewExample.dart';
import 'package:flutterapp/shoppingListStateless.dart';
import 'listView/VerticalListViewExample.dart';

void main() {
  runApp(
    new MaterialApp(
      title: 'Shopping App',
      theme: new ThemeData(
          brightness: Brightness.light,
          primaryColor: Colors.lightBlue[800],
          accentColor: Colors.cyan[600]),
      home: new GridViewExample(),
    ),

//    home: new ShoppingList(
//      products: <Product>[
//        new Product(name: 'eggs'),
//        new Product(name: 'flour'),
//        new Product(name: 'Chocolate ships'),
//      ],
//    ),
  );
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.light));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.white,
      ),
      home: new TutorialHome(),
    );
  }
}

class CounterDisplay extends StatelessWidget {
  CounterDisplay({this.count});

  final int count;

  @override
  Widget build(BuildContext context) {
    return new Text('Count:&count');
  }
}

class CounterIncrementor extends StatelessWidget {
  final VoidCallback onPressed;

  CounterIncrementor({this.onPressed});

  @override
  Widget build(BuildContext context) {
    return new RaisedButton(
      onPressed: onPressed,
      child: new Text("Increment"),
    );
  }
}

class Counter extends StatefulWidget {
  @override
  _CounterState createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int _counter = 0;

  void _increment() {
    setState(() {
      ++_counter;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Row(
      children: <Widget>[
        new CounterIncrementor(onPressed: _increment),
        new CounterDisplay(
          count: _counter,
        )
      ],
    );
  }
}

class TutorialHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        leading: new IconButton(
            icon: new Icon(Icons.menu),
            tooltip: 'Navigation title',
            onPressed: null),
        title: new Text("Example title"),
        actions: <Widget>[
          new IconButton(
              icon: new Icon(Icons.search), tooltip: 'Search', onPressed: null)
        ],
      ),
      body: new Center(
        child: new Text('Hello world !'),
      ),
      floatingActionButton: new FloatingActionButton(
          tooltip: "Add", child: new Icon(Icons.add), onPressed: null),
    );
  }
}

class MyButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new GestureDetector(
      onTap: () {
        print("My Button was tapped ！");
      },
      child: new Container(
        height: 36.0,
        padding: const EdgeInsets.all(8.0),
        margin: const EdgeInsets.symmetric(horizontal: 8.0),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5.0),
            color: Colors.lightGreen[500]),
        child: new Center(
          child: new Text("Engage"),
        ),
      ),
    );
  }
}

//class Counter extends StatefulWidget {
//  @override
//  _CounterState createState() => _CounterState();
//}
//
//class _CounterState extends State<Counter> {
//  int _counter = 0;
//
//  void _increment() {
//    setState(() {
//      _counter++;
//    });
//  }
//
//  @override
//  Widget build(BuildContext context) {
//    return new Row(
//      children: <Widget>[
//        new RaisedButton(
//          onPressed: _increment,
//          child: new Text("Increment"),
//        ),
//        new Text('Count:$_counter')
//      ],
//    );
//  }
//}
