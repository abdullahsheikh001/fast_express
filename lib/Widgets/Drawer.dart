import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Drawerwidget extends StatelessWidget {
  const Drawerwidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.black,
      child: Column(
        children: [
          DrawerHeader(
            child: LottieBuilder.asset("assets/images/Animation - 1724223663723.json")
          ),
           
           const Padding(
             padding:   EdgeInsets.only(left: 25),
             child: ListTile( 

              leading: Icon(Icons.home, color: Colors.white,),
              title: Text("Home", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),),
             ),
             
           ),

           const Padding(
             padding:   EdgeInsets.only(left: 25),
             child: ListTile( 

              leading: Icon(Icons.info, color: Colors.white,),
              title: Text("About", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),),
             ),
             
           ),

           const Padding(
             padding:   EdgeInsets.only(left: 25),
             child: ListTile( 

              leading: Icon(Icons.shopping_cart, color: Colors.white,),
              title: Text("Cart", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),),
             ),
             
           ),


            const Padding(
             padding:   EdgeInsets.only(left: 25),
             child: ListTile( 

              leading: Icon(Icons.logout, color: Colors.white,),
              title: Text("Logout", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),),
             ),
             
           ),


        ],
      ),
    );
  }
}
