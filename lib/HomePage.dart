import 'package:flutter/material.dart';
import 'package:flutterapp/dd/toast.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Home extends StatefulWidget {
  @override
  HomeState createState() => HomeState();
}

class HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.blueAccent,
          title: Text(
            '财务管理',
            style: TextStyle(color: Colors.white),
          ),
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.white),
          ),
          actions: <Widget>[
            IconButton(
              onPressed: () {
                ToastUtil.show("sss");
              },
              icon: Icon(Icons.search, color: Colors.white),
            ),
            IconButton(
              icon: Icon(Icons.add_circle_outline, color: Colors.white),
            ),
          ],
        ),
        body: Row(
          children: <Widget>[
            GestureDetector(
              onTap: () {
                print("1");
              },
              child: Text(
                "列表1",
                style: TextStyle(fontSize: 50, color: Color(0xff888888)),
              ),
            ),
            Text(
              "列表2",
              style: TextStyle(fontSize: 50, color: Color(0xff888888)),
            ),
            Text("列表3"),
            Text("列表4"),
          ],
        ));
  }

  _item(coontext, index) {
    return Text("列表$index");
  }
}
