import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:majed/constant.dart';
import 'package:page_transition/page_transition.dart';

import 'loginscreen.dart';

class SplashScreen extends StatefulWidget {

  SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplshScreenState();
}

class _SplshScreenState extends State<SplashScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            child: AnimatedSplashScreen(
              animationDuration: Duration(
                  seconds:1,

              ),
              // backgroundColor: Colors.blueAccent,
              duration: 3000,
              splashIconSize: 400,
              splashTransition: SplashTransition.sizeTransition,
              pageTransitionType: PageTransitionType.rightToLeft,
              splash: Image.asset("assets/images/majed.jpg"),
              nextScreen:const LoginScreen(),
            ),
          ),

        ],
      ),
    );
  }
}
