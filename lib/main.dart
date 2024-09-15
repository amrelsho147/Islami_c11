import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islami/ui/Home_screen/home_screen.dart';
import 'package:islami/ui/splash/spalashScreen.dart';
import 'package:islami/ui/them/MyThemData.dart';

void main(){
  runApp(Myapp());
}
class Myapp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      theme: Mythemdata.lightThem,

      initialRoute: SplashScreen.routeName,
      routes:{
        SplashScreen.routeName:(_)=>SplashScreen(),
        HomeScreen.routeName:(_)=>HomeScreen()

      },

    );
  }
}