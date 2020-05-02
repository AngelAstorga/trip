import 'package:flutter/material.dart';
import 'package:tripapp/card_image.dart';

class CardImageList extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    
    return Container(
      height: 350.0,
      child: ListView(
        padding: EdgeInsets.all(25.0),
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          CardImage("assets/images/paisaje1.jpg"),
          CardImage("assets/images/paisaje2.jpg"),
          CardImage("assets/images/paisaje3.jpg"),
          CardImage("assets/images/paisaje4.jpg"),
          CardImage("assets/images/paisaje5.jpg"),
        ],
      ),
    );
  }

}