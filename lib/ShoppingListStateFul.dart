import 'package:flutter/material.dart';
import 'package:flutterapp/shoppingListStateless.dart';

class ShoppingList extends StatefulWidget {
  final List<Product> products;

  const ShoppingList({Key key, this.products}) : super(key: key);

  @override
  _ShoppingListState createState() => _ShoppingListState();
}

class _ShoppingListState extends State<ShoppingList> {
  Set<Product> _shoppingCart = new Set<Product>();

  void _handleCartChanged(Product product, bool inCart) {
    setState(() {
      if (inCart) {
        _shoppingCart.add(product);
      } else {
        _shoppingCart.remove(product);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text('Shopping List'),
        ),
        body: new Theme(
          data: Theme.of(context).copyWith(accentColor: Colors.orange),
          child: new ListView(
            padding: new EdgeInsets.symmetric(vertical: 8.0),
            children: widget.products.map((Product product) {
              return new ShoppingListItem(
                product: product,
                inCart: _shoppingCart.contains(product),
                onCartChanged: _handleCartChanged,
              );
            }).toList(),
          ),
        ));
  }
}
