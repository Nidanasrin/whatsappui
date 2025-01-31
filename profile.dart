import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: Profilescreen(),debugShowCheckedModeBanner: false,));
}
class Profilescreen extends StatelessWidget {
  const Profilescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.black,
        leading: Icon(Icons.arrow_back,color: Colors.white,),
        title: Text("Settings",style: TextStyle(color: Colors.white),),
        actions: [
          Icon(Icons.search,color: Colors.white,),
        ],
      ),

      body:Container(color: Colors.black,
    child: ListView(
        children: [
          ListTile(
            leading: CircleAvatar(radius: 30,
              child: Icon(Icons.person,size: 40,),backgroundColor: Colors.grey,),
            title: Text("Nida",style: TextStyle(color: Colors.white),),
            subtitle: Text("Too good to be true",style: TextStyle(color: Colors.white)),
            trailing: Wrap(
                children: [
              Icon(Icons.qr_code,color: Colors.green,),
              Icon(Icons.add_rounded,color: Colors.green,),
            ]),
            ),
          Divider(height: 0.5),
          ListTile(
            leading: Icon(Icons.key,color: Colors.grey,),
            title: Text("Account",style: TextStyle(color: Colors.white)),
            subtitle: Text("Security notifications,change number"),
          ),
          ListTile(
            leading: Icon(Icons.lock_outline,color: Colors.grey),
            title: Text("Privacy",style: TextStyle(color: Colors.white)),
            subtitle: Text("Block contacts,disappearing messages"),
          ),
          ListTile(
            leading: Icon(Icons.face,color: Colors.grey),
            title: Text("Avatar",style: TextStyle(color: Colors.white)),
            subtitle: Text("Create,Edit,profile photo"),
          ),
          ListTile(
            leading: Icon(Icons.chat_outlined,color: Colors.grey),
            title: Text("Chats",style: TextStyle(color: Colors.white)),
            subtitle: Text("Theme,wallpapers,chat history"),
          ),
          ListTile(
            leading: Icon(Icons.notifications_none,color: Colors.grey),
            title: Text("Notifications",style: TextStyle(color: Colors.white)),
            subtitle: Text("Message,group and call tones"),
          ),
          ListTile(
            leading: Icon(Icons.data_saver_off,color: Colors.grey),
            title: Text("Storage and data",style: TextStyle(color: Colors.white)),
            subtitle: Text("Network usage,auto-download"),
          ),
          ListTile(
            leading: Icon(Icons.language,color: Colors.grey),
            title: Text("App Language",style: TextStyle(color: Colors.white)),
            subtitle: Text("English (device's language"),
          ),
          ListTile(
            leading: Icon(Icons.help_outline,color: Colors.grey),
            title: Text("Help",style: TextStyle(color: Colors.white)),
            subtitle: Text("Help centre,contact us,privacy policy"),
          ),
          ListTile(
            leading: Icon(Icons.people_alt_outlined,color: Colors.grey),
            title: Text("Invite a friend",style: TextStyle(color: Colors.white)),
          ),
          ListTile(
            leading: Icon(Icons.app_blocking_outlined,color: Colors.grey),
            title: Text("App Updates",style: TextStyle(color: Colors.white)),
          ),
          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text("Also from Meta",style: TextStyle(color: Colors.grey),),
          ),
          ListTile(
            leading: Icon(Icons.linked_camera_outlined,color: Colors.grey),
            title: Text("Open Instagram",style: TextStyle(color: Colors.white)),
          ),
          ListTile(
            leading: Icon(Icons.facebook,color: Colors.grey),
            title: Text("Open Facebook",style: TextStyle(color: Colors.white)),
          ),
          ListTile(
            leading: Icon(Icons.alternate_email,color: Colors.grey),
            title: Text("Open Thread",style: TextStyle(color: Colors.white)),

          ),


        ],
      ),
      ),
    );
  }
}
