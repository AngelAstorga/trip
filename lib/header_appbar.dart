import 'package:flutter/material.dart';
import 'package:tripapp/card_image_list.dart';
import 'package:tripapp/gradient_back.dart';

class HeaderAppBar extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return Stack(
      children: <Widget>[
        GradientBack("Bienvenido"),
        CardImageList(),
      ],
    );
  }

}