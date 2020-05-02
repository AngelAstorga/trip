import 'package:flutter/material.dart';
import 'package:tripapp/card_designer.dart';

class CardDesignerList extends StatelessWidget{

  final List <CardDesigner> listDesigner=[
    CardDesigner("assets/images/person.jpg","Juan velazco","Experience: 04 years"),
    CardDesigner("assets/images/person2.jpg","Rocky Balboa","Experience: 14 years"),
    CardDesigner("assets/images/person3.jpg","Nathanael","Experience: 34 years"),
    CardDesigner("assets/images/person4.jpg","Viuda negra","Experience: 54 years"),
    CardDesigner("assets/images/person.jpg","Juan velazco","Experience: 04 years"),
    CardDesigner("assets/images/person2.jpg","Rocky Balboa","Experience: 14 years"),
    CardDesigner("assets/images/person3.jpg","Nathanael","Experience: 34 years"),
    CardDesigner("assets/images/person4.jpg","Viuda negra","Experience: 54 years"),
  ];
  @override
  Widget build(BuildContext context) {

    return Container(
      padding: EdgeInsets.only(
          top: 120.0
      ),
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        /*
        separatorBuilder: (context,index)=>Divider(
          color: Colors.black,
        ),*/
        itemCount: 8,
        itemBuilder: (context,index)=>Container(
          padding: EdgeInsets.only(
            top:10.0,
            bottom: 15.0,
          ),
          margin: EdgeInsets.only(
            top: 10.0,
            bottom: 10.0,
          ),
          decoration: BoxDecoration(
            border: Border(
                bottom: BorderSide(),
            ),
          ),
          child: listDesigner[index],
        ),
        ),

      );
  }

}