
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';

import 'home_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedSplashScreen(
          splashIconSize: 400,
          backgroundColor: Color(0xFF9C0000),
          splash: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/splash.png')
              )
            ),
          ),
          nextScreen: StreamBuilder(
            builder: (ctx , Usersnapshot){
              return HomeScreen();
            }, stream: null,
          )
      ),
    );
  }
}