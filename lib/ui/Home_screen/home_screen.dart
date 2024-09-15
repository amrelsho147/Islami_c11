import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islami/ui/Home_screen/Hadeth_Tap/HadethTap.dart';
import 'package:islami/ui/Home_screen/Radio_Tap/RadioTap.dart';
import 'package:islami/ui/Home_screen/Tasbeh_Tap/TaspehTap.dart';
import 'package:islami/ui/Home_screen/quran_Tap/QuranTap.dart';
import 'package:islami/ui/them/MyThemData.dart';

class HomeScreen extends StatefulWidget{
  static const String routeName = 'homeScreen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selestedIndex =0;

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Image.asset('assets/background.png'
      ,fit: BoxFit.fill,
      height: double.infinity,
      width: double.infinity,),
      Scaffold( appBar: AppBar(
        title: Text('islami'),


      ),
        bottomNavigationBar:BottomNavigationBar(
          currentIndex:selestedIndex ,
          onTap: (index){
            selestedIndex= index;
            setState(() {

            });

          },


          items: [
            BottomNavigationBarItem(icon: ImageIcon(
              AssetImage('assets/moshaf_gold.png')
            ),label: 'Quran',backgroundColor: Mythemdata.lightprimary),
            BottomNavigationBarItem(icon: ImageIcon(
              AssetImage('assets/quran-quran-svgrepo-com.png')
            ),label: 'Hadeth',backgroundColor: Mythemdata.lightprimary),
            BottomNavigationBarItem(icon: ImageIcon(
              AssetImage('assets/sebha_blue.png')
            ),label: 'tasbeh',backgroundColor: Mythemdata.lightprimary),
            BottomNavigationBarItem(icon: ImageIcon(
              AssetImage('assets/radio_blue.png')
            ),label: 'Radio')

          ],
        ),
        body:tabs[selestedIndex] ,
      ),

    ],


    );

      }
}
var tabs =[Qurantap(),Hadethtap(),TaspehTap(),Radiotap(),];