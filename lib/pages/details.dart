import 'package:flutter/material.dart';

class DetailsScreen extends StatefulWidget {

  var showData;

  DetailsScreen(this.showData,);



  @override
  _DetailsScreenState createState() => _DetailsScreenState(this.showData);
}

class _DetailsScreenState extends State<DetailsScreen> {

  var showData;
  _DetailsScreenState(this.showData);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [


           Image.asset(showData['image']),
            SizedBox(height: 20,),
            Text( "${showData['title']}"),
            SizedBox(height: 10,),
            Text("${showData['subtitle']}"),










          ],

        ),
      ),


    );
  }
}