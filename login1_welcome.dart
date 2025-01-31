import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nidflutter/wp/login2_num.dart';

void main(){
  runApp(MaterialApp(home: Welcome(),debugShowCheckedModeBanner:false,));
}
class Welcome extends StatefulWidget {
  const Welcome({super.key});

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(image: AssetImage("assets/images/wpp-removebg-preview.png"),width: 200,),
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Text("Welcome to Whatsapp",style: TextStyle(color: Colors.black,fontSize: 25,fontWeight: FontWeight.bold),),
        ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                  children: [
              Text("Read our ",style: TextStyle(color: Colors.black,fontSize: 13),),
              Text("Privacy Policy",style: TextStyle(color: Colors.green,fontSize: 13),),
              Text("Tap Agree and continue.To  accept the",style: TextStyle(color: Colors.black,fontSize: 13),),
              Text("Terms of Service",style: TextStyle(color: Colors.green,fontSize: 13),),
              ]),
            ),
            Padding(padding: EdgeInsets.all(8.0)),
            ElevatedButton(
                style:ElevatedButton.styleFrom(
                   shape: BeveledRectangleBorder(borderRadius: BorderRadius.all(Radius.zero)),
                    backgroundColor: Colors.green,
                foregroundColor: Colors.white),
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Phone_number()));
                },
                child: Text("AGREE AND CONTINUE",style: TextStyle(color: Colors.white),)),
      ]
        )
      ),
    );
  }
}
