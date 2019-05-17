import 'package:flutter/material.dart';

class FoodItem extends StatelessWidget {
  String productName;
  FoodItem({this.productName});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Card(
      child: Column(
        children: <Widget>[
          Center(child: Image.asset('assets/gitbackground.png')),
          Text(productName)
        ],
      ),
    );
  }
}
