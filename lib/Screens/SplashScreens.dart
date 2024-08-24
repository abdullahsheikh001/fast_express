import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:fast_express/Screens/Homescreen.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Splashscreens extends StatelessWidget {
  const Splashscreens({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       
      body: AnimatedSplashScreen(
          splash: Column(
            children: [
              Center(
                child: SizedBox(
                  height: 400,
                  width: 400,
                  child: LottieBuilder.asset("assets/images/Animation - 1724223663723.json")
                ),
              )
            ],
          ),
          nextScreen: const Homescreen(),
          splashIconSize: 400,
          animationDuration: const  Duration(seconds: 1),
          backgroundColor: Colors.black,
          ),
    );
  }
}
