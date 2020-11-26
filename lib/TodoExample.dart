import 'package:flutter/material.dart';

class Todo {
  final String title;
  final String description;

  Todo(this.title, this.description);
}

class TodosScreenExample extends StatelessWidget {
  final List<Todo> todos;

  const TodosScreenExample({Key key, @required this.todos}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Todos'),
      ),
      body: new Container(
        padding: EdgeInsets.all(10),
        margin: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        decoration: BoxDecoration(
          color: Colors.grey,
          borderRadius: BorderRadius.all(Radius.circular(15)),
          border: Border.all(width: 1, color: Colors.green),
        ),
        child: new Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text("大大大"),
            Text("大大大"),
            Icon(Icons.keyboard_arrow_right),
//            Container(
//              child: new ListView.builder(
//                  itemCount: todos.length,
//                  itemBuilder: (context, index) {
//                    return new ListTile(
//                      title: new Text(todos[index].title),
//                      onTap: () {
//                        Navigator.push(
//                            context,
//                            new MaterialPageRoute(
//                                builder: (context) =>
//                                    new DetailScreen(todo: todos[index])));
//                      },
//                    );
//                  }),
//              height: 600,
//            )
          ],
        ),
      ),
    );
  }
}

class DetailScreen extends StatelessWidget {
  final Todo todo;

  const DetailScreen({Key key, @required this.todo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("${todo.title}"),
      ),
      body: new Padding(
        child: new Text("${todo.description}"),
        padding: new EdgeInsets.all(16.0),
      ),
    );
  }
}
