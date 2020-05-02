import 'package:flutter/material.dart';

class HeaderAppbarMessage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ClipPath(
      clipper: MyClipper(),
      child: Container(
        height: 120.0,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/hellsing.jpg"),
            fit: BoxFit.cover,
          ),
          shape: BoxShape.rectangle,
        ),
      ),
    );
  }

}

class MyClipper extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
   var path= new Path();
   path.lineTo(0, size.height-30);
   path.quadraticBezierTo((size.width/4)-25, size.height-60.0, (size.width/2)-(size.width/8)-20, size.height-20);
   path.quadraticBezierTo(size.width/2, size.height+20, (size.width/2)+(size.width/8)+20, size.height-20);
   path.quadraticBezierTo((size.width*(3/4))+25, size.height-60.0, size.width, size.height-30);
   path.lineTo( size.width, 0);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    return false;
  }
  
}