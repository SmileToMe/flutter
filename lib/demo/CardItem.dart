import 'package:flutter/material.dart';

class CardItem extends StatelessWidget {
  final Animation<double> animation;
  final VoidCallback onTap;
  final int item;
  final bool selected;

  const CardItem(
      {Key key,
        @required this.animation,
        this.onTap,
        @required this.item,
        this.selected = false})
      : assert(animation != null),
        assert(item != null && item >= 0),
        assert(selected != null),
        super(key: key);



  @override
  Widget build(BuildContext context) {
    TextStyle textStyle = Theme.of(context).textTheme.headline4;
    if (selected) {
      textStyle = textStyle.copyWith(color: Colors.lightGreenAccent[400]);
    }
    return new Padding(
      padding: const EdgeInsets.all(2.0),
      child: new SizeTransition(
        axis: Axis.vertical,
        sizeFactor: animation,
        child: GestureDetector(
          behavior: HitTestBehavior.opaque,
          onTap: onTap,
          child: SizedBox(
            height: 128.0,
            child: new Card(
              color: Colors.primaries[item % Colors.primaries.length],
              child: new Center(
                child: new Text(
                  "Item $item",
                  style: textStyle,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
