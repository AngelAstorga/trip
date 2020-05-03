import 'package:flutter/material.dart';
import 'package:tripapp/home_trip.dart';
import 'package:tripapp/search_trip.dart';
import 'profile_trips.dart';
class BottomNavbar extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _BottomNavbar();
  }
}

class _BottomNavbar extends State<BottomNavbar>{
  int indexTap=0;
  final List<Widget> widgetsChildren=[HomeTrip(),SearchTrip(),ProfileTrips()];
  void onTapTapped(int index){
      setState(() {
        indexTap=index;
      });
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body:widgetsChildren[indexTap],
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          canvasColor: Colors.white,
          primaryColor: Colors.purple,
        ),
        child: BottomNavigationBar(
          onTap: onTapTapped,
          currentIndex: indexTap,
          items:[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text(""),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              title: Text(""),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              title: Text(""),
            ),
          ]
        ),
      ),
    );
  }

}

