import 'package:flutter/material.dart';

class AppBarBottomSample extends StatefulWidget {
  @override
  _AppBarBottomSampleState createState() => _AppBarBottomSampleState();
}

class _AppBarBottomSampleState extends State<AppBarBottomSample>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = new TabController(length: choices.length, vsync: this);
  }

  void _nextPage(int delta) {
    final int newIndex = _tabController.index + delta;
    if (newIndex < 0 || newIndex >= _tabController.length) {
      return;
    }
    _tabController.animateTo(newIndex);
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: const Text("AppBar Bottom Widget"),
        leading: new IconButton(
            tooltip: "Previous choice",
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              _nextPage(-1);
            }),
        actions: <Widget>[
          new IconButton(
              icon: const Icon(Icons.arrow_forward),
              tooltip: "Next choice",
              onPressed: () {
                _nextPage(1);
              })
        ],
        bottom: new PreferredSize(
          child: new Theme(
            data: Theme.of(context).copyWith(accentColor: Colors.white),
            child: Container(
              height: 48.0,
              alignment: Alignment.center,
              child: new TabPageSelector(controller: _tabController),
            ),
          ),
          preferredSize: const Size.fromHeight(48.0),
        ),
      ),
      body: new TabBarView(
        controller: _tabController,
        children: choices.map<Widget>((Choice choice) {
          return new Padding(
            padding: const EdgeInsets.all(6.0),
            child: ChoiceCard(
              choice: choice,
            ),
          );
        }).toList(),
      ),
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _tabController.dispose();
    super.dispose();
  }
}

class Choice {
  final String title;
  final IconData icon;

  const Choice({this.title, this.icon});
}

const List<Choice> choices = <Choice>[
  Choice(title: 'CAR', icon: Icons.directions_car),
  Choice(title: 'BICYCLE', icon: Icons.directions_bike),
  Choice(title: 'BOAT', icon: Icons.directions_boat),
  Choice(title: 'BUS', icon: Icons.directions_bus),
  Choice(title: 'TRAIN', icon: Icons.directions_railway),
  Choice(title: 'WALK', icon: Icons.directions_walk),
];

class ChoiceCard extends StatelessWidget {
  final Choice choice;

  const ChoiceCard({Key key, this.choice}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextStyle textStyle = Theme.of(context).textTheme.headline4;
    return new Card(
      color: Colors.white,
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            new Icon(
              choice.icon,
              size: 128.0,
              color: textStyle.color,
            ),
            new Text(
              choice.title,
              style: textStyle,
            )
          ],
        ),
      ),
    );
  }
}
