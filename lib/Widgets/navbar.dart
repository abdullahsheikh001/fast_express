 import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:fast_express/Screens/Homescreen.dart';
import 'package:fast_express/Screens/favoritescreen.dart';
import 'package:flutter/material.dart';

class Curvednavigation extends StatefulWidget{
  const Curvednavigation({super.key});

  @override
  State<Curvednavigation> createState() => _CurvednavigationState();
}

class _CurvednavigationState extends State<Curvednavigation> {
  int currentindex = 0;
  final List<Widget> pages = [
    const Homescreen(),
   const Favoritescreen()

  ];

  final bottomnavigationbar = GlobalKey<CurvedNavigationBarState>();
  @override
  Widget build(BuildContext context) {
     

     return  
     CurvedNavigationBar(  items: const  [

      Icon(Icons.home, color: Colors.white,),
      Icon(Icons.favorite, color: Colors.white,),
      Icon(Icons.settings, color: Colors.white,),
      Icon(Icons.save, color: Colors.white,),
     ],
     key: bottomnavigationbar,
     onTap: (index){
      setState(() {
        currentindex = index;
      });
     },
     color: Colors.black,
     backgroundColor: Colors.orange,
     animationCurve: Curves.easeInOutQuint,
      
     );
}
}