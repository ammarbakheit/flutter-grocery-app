import 'package:flutter/material.dart';
import 'package:flutter_shop_app/screens/mainScreens/intro_screen.dart';
import 'package:flutter_shop_app/utils/colors.dart';
import 'package:splashscreen/splashscreen.dart';

class SplashScreenWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
     return SplashScreen(
       seconds: 4,
      backgroundColor: Colors.white,
      image: Image.asset('assets/intro3.png'),
      loaderColor: blueColor,
      photoSize: 120.0,
      title: Text("Hola"),
      navigateAfterSeconds: IntroScreen(),
     );
  }
}