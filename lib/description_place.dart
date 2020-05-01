import 'package:flutter/material.dart';

class DescriptionPlace extends StatelessWidget{
  String namePlace;
  int stars;
  String descriptionPlace;
  DescriptionPlace(this.namePlace,this.stars,this.descriptionPlace);

  @override
  Widget build(BuildContext context) {
    final star_border=Container(
        margin: EdgeInsets.only(
            top: 320.0,
            right: 3.0
        ),
        child: Icon(
          Icons.star_border,
          color: Color(0xFFf2c611),
        )
    );
    final star_half=Container(
        margin: EdgeInsets.only(
            top: 320.0,
            right: 3.0
        ),
        child: Icon(
          Icons.star_half,
          color: Color(0xFFf2c611),
        )
    );

    final star =Container(
      margin: EdgeInsets.only(
        top: 320.0,
        right: 3.0
      ),
      child: Icon(
        Icons.star,
        color: Color(0xFFf2c611),
      )
    );
    final descriptonPart= Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(
                  top:320.0,
                  left: 20.0,
                  right: 20.0
              ),
              child: Text(
                namePlace,
                style: TextStyle(
                    fontFamily: "Lato",
                    fontSize: 30.0,
                    fontWeight: FontWeight.w900
                ),
                textAlign: TextAlign.left,
              ),
            ),
            Row(
              children: <Widget>[
                star,
                star,
                star,
                star_border,
              ],
            )
      ],
    ),
        Container(
          child: Text(
            descriptionPlace,
          style: const TextStyle(
            fontSize: 16.0,
            fontFamily: "Lato",
            fontWeight: FontWeight.bold,
            color: Color(0xff56575a),
          ),
          ),
          margin: EdgeInsets.only(
            left:20,
            right: 20,
            top: 20,
          ),

        ),
      ],
    );
    return descriptonPart;
  }

}