import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nidflutter/wp/login1_welcome.dart';

void main(){
  runApp(MaterialApp(home: Splash(),debugShowCheckedModeBanner: false,theme: ThemeData.dark(),));
}

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    Timer(Duration(seconds: 3), () {
      Navigator.push(context, MaterialPageRoute(builder: (context) =>Welcome()));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(image: AssetImage("assets/icons/wp icon.png"),height: 70,color: Colors.white,),
            Column(
              children: [
            Padding(padding: EdgeInsets.only(bottom: 200)),
            Text("from",style: TextStyle(color: Colors.grey,fontSize: 20),),
Image(image: AssetImage("assets/images/metaaa-removebg-preview (1).png"),height: 80,)
                ]),
          ],
        ),
      ),

    );

  }
}