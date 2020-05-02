import 'package:flutter/material.dart';

class CardDesigner extends StatelessWidget{
  String pathImage;
  String name;
  String experience;
  CardDesigner(this.pathImage,this.name,this.experience);

  @override
  Widget build(BuildContext context) {


    return Container(
        child: Row(
          children: <Widget>[
            Container(
              height: 60.0,
              width: 60.0,
              margin: EdgeInsets.only(
                left: 20.0,
              ),
              decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image:AssetImage(pathImage)
                ),
                shape: BoxShape.circle,
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(
                    left: 15.0,
                  ),
                  child: Text(
                    name,
                    style: TextStyle(
                      fontSize: 20.0,
                      fontFamily: "Lato",
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                    left: 15.0,
                  ),
                  child:Text(
                    experience,
                    style: TextStyle(
                      fontSize: 15.0,
                      fontFamily: "Lato",
                      color: Colors.black38,
                    ),
                  ),
                ),

              ],
            ),
            Container(
              width: 45.0,
              height: 45.0,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xffff2828),
              ),
              margin: EdgeInsets.only(
                left: 100.0,
              ),
              child: Icon(
                Icons.mail,
                color: Colors.white,
                size: 25.0,
              ),
            ),
          ],
        ),
    );
  }

}