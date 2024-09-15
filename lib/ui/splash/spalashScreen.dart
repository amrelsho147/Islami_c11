import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islami/ui/Home_screen/home_screen.dart';
import 'package:islami/ui/ui_untils.dart';

class SplashScreen extends StatelessWidget{
  static const String routeName = 'splash';
  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 2),
      (){
      Navigator.pushReplacementNamed(context,HomeScreen.routeName );

    });
  return Scaffold(
    body: Image.asset('assets/splash.jpg',
    fit: BoxFit.fill,
    height: double.infinity,
    width:double.infinity,),
  );
  }
}