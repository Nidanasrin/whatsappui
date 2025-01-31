import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nidflutter/wp/profile.dart';


void main(){
  runApp(MaterialApp(home: homepage(),debugShowCheckedModeBanner: false,));
}
class homepage extends StatelessWidget {
  final FirebaseFirestore firebase =FirebaseFirestore.instance;
  late CollectionReference chatCollection;

  @override
  void initState(){
    chatCollection = FirebaseFirestore.instance.collection('Chat');
  }

  @override
  Widget build(BuildContext context) {
   return Scaffold(
        appBar: AppBar( foregroundColor: Colors.white,
          backgroundColor: Colors.black,
          actions: [
            Icon(Icons.qr_code_scanner),
            SizedBox(width: 20,),
            Icon(Icons.camera_alt_outlined),
            SizedBox(width: 20,),
            PopupMenuButton(itemBuilder:(context){
              return[
                PopupMenuItem(child: Text("New group")),
                PopupMenuItem(child: Text("New Broadcast")),
                PopupMenuItem(child: Text("Linked Devices")),
                PopupMenuItem(child: Text("Starred messages")),
                PopupMenuItem(child: Text("Payments")),
                PopupMenuItem(child: Text("Settings"),
                  onTap: ()=>Profilescreen(),),

              ];
            }),  TextField(
              decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Search Something!!",
                  prefixIcon: Icon(Icons.search),
              ),
            ),
          ],
          title: Text("WhatsApp"),
        ),
      body:Column(
        children: [
          TextField(decoration: InputDecoration(
            fillColor: Colors.grey,
            prefixIcon: Icon(Icons.search,color: Colors.white70,),
            hintText: "Ask Meta Ai or Search",hintStyle: TextStyle(
            color: Colors.white70
          ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
            )
          ),),
    Container(color: Colors.black,
        child: StreamBuilder<QuerySnapshot>(
          stream: firebase.collection('Chat').snapshots(), builder: (context,snapshot){
            if(snapshot.hasData)
              return Center(
                child: CircularProgressIndicator(),
              );
var messages=snapshot.data!.docs;
              return ListView.builder(
    itemCount: messages.length,
    itemBuilder: (context,index){
    var message=messages[index];
    return ListTile(
    leading: CircleAvatar(
    child:  Image.network("https://photoszilla.com/wp-content/uploads/instagram-profile-picture-blurry_67.webp"),
    ),
    title: Text(message['name'],style: TextStyle(
    fontWeight: FontWeight.bold,
    ),
    ),subtitle: Text(message['last message']),
    trailing: Column(
    children: [
      Text("${message['timestamp'].toDate().hour}:${message['timestamp'].toDate.minute}",
    style: TextStyle(color: Colors.grey,fontSize: 12),),
    if(message['unreadCount']>0)
      CircleAvatar(
    radius: 10,backgroundColor: Colors.green,
    child: Text(message['unreadCount'].toString(),
    style: TextStyle(color: Colors.white,fontSize: 10),
    ))
    ],
    ),
    );
    });
        }),


    ),
    ]),
        floatingActionButton: FloatingActionButton(onPressed: (){
        },
          child: Icon(Icons.chat,color: Colors.green,),),
        bottomNavigationBar: BottomNavigationBar(
          showUnselectedLabels: true,
            showSelectedLabels: true,
            backgroundColor: Colors.black,
            unselectedItemColor: Colors.black,
            selectedItemColor: Colors.green,
            type: BottomNavigationBarType.shifting,
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.chat),label: "Chats",),
          BottomNavigationBarItem(icon: Icon(Icons.update),label: "Updates",),
              BottomNavigationBarItem(icon: Icon(Icons.people_outline),label: "Communities",),
              BottomNavigationBarItem(icon: Icon(Icons.call_outlined),label: "Calls",),
            ]),

    );
  }
}