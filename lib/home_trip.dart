import 'package:flutter/material.dart';
import 'package:tripapp/review_list.dart';

import 'description_place.dart';
import 'header_appbar.dart';

class HomeTrip extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Stack(
      children: <Widget>[
        ListView(
          children: <Widget>[
            DescriptionPlace("Angel Astorga",5,"The Flutter framework has been optimized to make rerunning build methods fast\, so that you can just rebuild anything that needs updating rather than having to individually change instances of widgets."),
            ReviewList(),
          ],
        ),
        HeaderAppBar(),
      ],
    );
  }

}