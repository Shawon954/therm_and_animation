import 'package:flutter/material.dart';
import 'package:therm_and_animation/pages/details.dart';
class Add extends StatefulWidget {
  const Add({Key? key}) : super(key: key);

  @override
  State<Add> createState() => _AddState();
}

class _AddState extends State<Add> {



final List imageslist=[
  // "assets/images/download.jpg",
  // "assets/images/download.png",
  // "assets/images/fl.jpg",
  // "assets/images/flu.jpg",
  // "assets/images/download.jpg",
  // "assets/images/download.png",
  // "assets/images/fl.jpg",
  // "assets/images/flu.jpg",

  {
    'title':'Flutter 1',
    'subtitle':'Devloper 1',
    'image':"assets/images/fl.jpg",
  }, {
    'title':'Flutter 2',
    'subtitle':'Devloper 2',
    'image':"assets/images/fl.jpg",
  }, {
    'title':'Flutter 3',
    'subtitle':'Devloper 3',
    'image':"assets/images/flu.jpg",
  }, {
    'title':'Flutter 4',
    'subtitle':'Devloper 4',
    'image':"assets/images/download.jpg",
  },
  {
    'title':'Flutter 5',
    'subtitle':'Devloper 5',
    'image':"assets/images/download.jpg",
  }, {
    'title':'Flutter 6',
    'subtitle':'Devloper 6',
    'image':"assets/images/fl.jpg",
  }, {
    'title':'Flutter 7',
    'subtitle':'Devloper 7',
    'image':"assets/images/flu.jpg",
  }, {
    'title':'Flutter 7',
    'subtitle':'Developer 7',
    'image':"assets/images/download.jpg",
  },

];





  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Add"),
      centerTitle: true,
      ),
       body: ListView.builder(
             itemCount: imageslist.length,
             
             itemBuilder: (BuildContext context,int index){
           return Card(
             child: ListTile(
               onTap: (){
                 Route route = MaterialPageRoute(
                     builder: (context) =>
                         DetailsScreen(imageslist[index]));

                 Navigator.push(context, route);

               },
               leading: Hero(
                   tag: "img",
                   child: Image.asset(imageslist[index]['image'],height: 80,width: 80,)),
               title: Text(imageslist[index]['title']),

               subtitle: Text(imageslist[index]['subtitle']),

             ),
           );


               
             }));

       
          

  }
}

