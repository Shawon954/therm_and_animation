import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:therm_and_animation/pages/account.dart';
import 'package:therm_and_animation/pages/add.dart';
import 'package:therm_and_animation/pages/chat.dart';
import 'package:therm_and_animation/pages/home_page.dart';
import 'package:therm_and_animation/pages/my_ads.dart';
class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);




  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {



  int _select = 0;

   var Page=[
     HomePage(),
     MyAds(),
     Add(),
     Chat(),
     Account(),
   ];
  @override
  Widget build(BuildContext context) {

    return Scaffold(

      bottomNavigationBar:BottomNavigationBar(
          onTap: (index){
            setState(() {
              _select = index;
            });
          },
        currentIndex: _select,
              selectedItemColor: Colors.orange,
              unselectedItemColor: Colors.grey,


              iconSize: 25,
          items:[
            BottomNavigationBarItem(icon: Icon(Icons.home_outlined),
                label: "Home"
            ),
            BottomNavigationBarItem(icon: Icon(Icons.shopping_basket_outlined),
                label: "My Ads"
            ),
            BottomNavigationBarItem(icon: Icon(Icons.add_circle_outline_outlined),
                label: "Add"
            ),
            BottomNavigationBarItem(icon: Icon(Icons.chat_bubble_outline_outlined),
                label: "Chat"
            ),
            BottomNavigationBarItem(icon: Icon(Icons.person_outline_outlined),
                label: "Account"
            ),

          ] ,

      ) ,

      body: Page[_select],
    );
  }
}
