import 'package:flutter/material.dart';
import 'package:foodstore/uicontroller/fooditem.dart';

class FoodStore extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _FoodStoreState();
  }
}

class _FoodStoreState extends State<FoodStore> {
  List<String> _products = ['good foods'];
  @override
  Widget build(BuildContext context) {
    Widget addButton() {
      return Container(
        margin: const EdgeInsets.all(8.0),
        child: RaisedButton(
          onPressed: () {
            setState(() {
              _products.add('sharwama test');
            });
          },
          child: Text('add'),
        ),
      );
    }

    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Food Store',
          style: TextStyle(),
        ),
      ),
      body: Column(
        children: <Widget>[
          addButton(),
          Column(
              children: _products.map((element) => FoodItem(element)).toList()),
          //FoodItem('food tester'),
        ],
      ),
    );
  }
}
