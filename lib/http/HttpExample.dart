import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutterapp/TodoExample.dart';
import 'package:http/http.dart' as EE;
import 'package:http/http.dart' as HH;

class HttpExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Fetch Data Example"),
      ),
      body: new Center(
        child: new FutureBuilder<Post>(
          future: fetchPost(),
          builder: (context, ddd) {
            if (ddd.hasData) {
              return new Text(ddd.data.title);
            } else if (ddd.hasError) {
              return new Text("${ddd.error}");
            }
            return new CircularProgressIndicator();
          },
        ),
      ),
    );
  }
}

Future<Post> fetchPost() async {
  final response = await HH.get("https://jsonplaceholder.typicode.com/posts/1");
  final responseJson = json.decode(response.body);
  return new Post.fromJson(responseJson);
}

class Post {
  final int userId;
  final int id;
  final String title;
  final String body;

  Post({this.userId, this.id, this.title, this.body});

  factory Post.fromJson(Map<String, dynamic> json) {
    return new Post(
      userId: json['userId'],
      id: json['id'],
      title: json['title'],
      body: json['body'],
    );
  }
}
