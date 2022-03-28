import 'package:flutter/material.dart';
import 'package:therm_and_animation/tabbar/animition.dart';
import 'package:therm_and_animation/tabbar/image_animation.dart';
import 'package:therm_and_animation/tabbar/text_animation.dart';
class MyAds extends StatefulWidget {
  const MyAds({Key? key}) : super(key: key);

  @override
  State<MyAds> createState() => _MyAdsState();
}

class _MyAdsState extends State<MyAds> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(length: 3,
          child: Scaffold(

            appBar: AppBar(title: Text("My Add"),
            centerTitle: true,
              bottom: TabBar(
                tabs: [
                  Tab(child: Text("Animi"),),
                  Tab(child: Text("Text Animi"),),
                  Tab(child: Text("Image Animi"),),
                ],
                unselectedLabelColor: Colors.grey,

                unselectedLabelStyle: TextStyle(color: Colors.grey),
              ),
            ),
            body: TabBarView(
              children: [
                Animition(),
                TextAnimation(),
                ImageAnimition(),
              ],
            ),
          ),

      ),
    );
  }
}
