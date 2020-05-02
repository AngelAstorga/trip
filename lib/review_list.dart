import 'package:flutter/material.dart';
import 'package:tripapp/review.dart';
class ReviewList extends StatelessWidget{


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        new Review("assets/images/person.jpg","chaja chaja 2","1 review 2 photos","this is my first comment"),
        new Review("assets/images/person2.jpg","chaja chaja 2","1 review 2 photos","this is my first comment"),
        new Review("assets/images/person3.jpg","chaja chaja 3","1 review 4 photos","first comment"),
        new Review("assets/images/person4.jpg","chaja chaja 4","1 review 7 photos","give me likes"),
      ],
    );
  }

}