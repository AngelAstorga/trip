import 'package:flutter/material.dart';

class FloatingActionButtonGreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _FloatingActionButtonGreen();
  }
}

class _FloatingActionButtonGreen extends State<FloatingActionButtonGreen>{
  var myIcon=Icons.favorite_border;
  var myIconSelected= Icons.favorite;
  void onPressedFac(){
    setState(() {
      myIcon=myIconSelected;
    });
      Scaffold.of(context).showSnackBar(
        SnackBar(
          content: Text("agregaste a favoritos"),
        ),
      );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return FloatingActionButton(
      backgroundColor: Color(0xff11da53),
      mini: true,
      tooltip: "Fav",
      onPressed: onPressedFac,
      child: Icon(
        this.myIcon,
      ),
    );
  }

}