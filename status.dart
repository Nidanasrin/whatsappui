import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:nidflutter/wp/profile.dart';

void main(){
  runApp(MaterialApp(home: StatusPage(),));
}
class StatusPage extends StatelessWidget {
  const StatusPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Updates"),
      actions: [
        Icon(Icons.qr_code_scanner),
        SizedBox(width: 20,),
        Icon(Icons.search),
        SizedBox(width: 20,),
        PopupMenuButton(itemBuilder:(context){
    return[
    PopupMenuItem(child: Text("Create Channel")),
    PopupMenuItem(child: Text("Status Privacy")),
    PopupMenuItem(child: Text("Settings"),
    onTap: ()=>Profilescreen(),),
          ];
        },
        )],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Status",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
          Expanded(child: StatusPage()),
          StreamBuilder(
              stream: FirebaseFirestore.instance.collection('Status').snapshots(),
              builder: (context,snapshot){
                if(snapshot.hasData){
                  return Center(
                    child: CircularProgressIndicator(),
                  );
                }
                var Status=snapshot.data!.docs;
                return ListView.builder(
                  scrollDirection: Axis.horizontal,
                    itemCount: Status.length,
                    itemBuilder: (context,index){
                    var statuses=Status[index];
                    return Padding(padding: EdgeInsets.symmetric(horizontal: 8),
                    child: Column(
                      children: [
                        CircleAvatar(
                          radius: 35,
                          child: Image.network('https://photoszilla.com/wp-content/uploads/instagram-profile-picture-blurry_67.webp'),
                        ),SizedBox(
                          height: 5,
                        ),
                        Text(statuses['username'],
                          style: TextStyle(fontSize: 14),)
                      ],
                    )
                    );
                    });
              })
        ],
      ),
    );
  }
}


