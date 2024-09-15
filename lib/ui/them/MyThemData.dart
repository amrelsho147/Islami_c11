import 'package:flutter/material.dart';

class Mythemdata{
  static final Color lightprimary = Color(0xFFB7935F);
   static final ThemeData lightThem =ThemeData(
     bottomNavigationBarTheme: BottomNavigationBarThemeData(
       unselectedIconTheme: IconThemeData(
         size: 23,

       ),
       selectedIconTheme: IconThemeData(

         color: Colors.black,
             size: 32,
       )
     ),
      scaffoldBackgroundColor: Colors.transparent,
      appBarTheme: AppBarTheme(
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
          titleTextStyle: TextStyle(
              color: Color(0xFF242424),
              fontSize:30
          )
      )

  );
}