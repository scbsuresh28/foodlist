import 'package:flutter/material.dart';
import 'package:foodlist/product/Product.dart';
import 'package:foodlist/product/ShoppingListItem.dart';
import 'package:share/share.dart';

class ShoppingList extends StatefulWidget {
  ShoppingList({Key key, this.product}) :super(key: key);

  List<Product> product;


  @override
  _ShoppingListState createState() {
    return new _ShoppingListState();
  }
}

class _ShoppingListState extends State<ShoppingList> {
  List<String> myList = List<String>();
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text("Food Items List"),
          backgroundColor: Colors.green,
        ),
        body: new Container(
          padding: new EdgeInsets.all(20.0),
          child: new Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              new Expanded(child: new ListView(
                padding: new EdgeInsets.symmetric(vertical: 8.0),
                children: widget.product.map((Product product) {
                  return Card(child: new ShoppingItemList(product));
                }).toList(),
              )),
              new FloatingActionButton(onPressed: () {


                for (Product p in widget.product) {
                  if (p.isCheck){
                    print(p.name);
                  myList.add(p.name);
                  print('MyList : $myList');
                  print('MyList Length : ${myList.length}');

                }}
                Share.share(myList.toString());
                myList.clear();
              },
                child: Icon(
                  Icons.share_rounded,
                ),
                backgroundColor: Colors.green,
              )
            ],
          ),
        )
    );
  }
}