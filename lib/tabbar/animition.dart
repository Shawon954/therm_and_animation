import 'package:flutter/material.dart';
class Animition extends StatefulWidget {
  const Animition({Key? key}) : super(key: key);

  @override
  State<Animition> createState() => _AnimitionState();
}

class _AnimitionState extends State<Animition> {

  double _height = 200;
  double _width = 200;
  var _color = Colors.yellowAccent;

  void animatedstyle(){
    setState(() {

      _height = 280;
      _width = 280;
      _color = Colors.redAccent;
    });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(child: Column(
          children: [
            AnimatedContainer(
                curve: Curves.bounceInOut,
                height: _height,
                width: _width,
                duration: Duration(seconds: 3),
             decoration: BoxDecoration(
               color:_color,
               borderRadius: BorderRadius.all(Radius.circular(20)),
             ),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(onPressed: ()=>animatedstyle(),

                child:Text("Text Animi"))
          ],
        )),
    );
  }
}
