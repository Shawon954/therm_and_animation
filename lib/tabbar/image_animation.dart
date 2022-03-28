
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
class ImageAnimition extends StatefulWidget {
  const ImageAnimition({Key? key}) : super(key: key);

  @override
  State<ImageAnimition> createState() => _ImageAnimitionState();
}

class _ImageAnimitionState extends State<ImageAnimition>{




  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: SafeArea(
       child:Padding(
         padding: const EdgeInsets.only(top: 15,left: 10,right: 10),
         child: Column(
           children: [
            Lottie.asset("assets/images/loading.json",
                fit: BoxFit.fill,
            height: 200,width: 200,





            ),

             SizedBox(height: 30,),
             Lottie.network("https://raw.githubusercontent.com/xvrh/lottie-flutter/master/example/assets/Mobilo/A.json"),
           ],
         ),
       ),
     ),
    );
  }
}
