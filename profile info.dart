import 'package:flutter/material.dart';

class info extends StatefulWidget {
  const info({super.key});

  @override
  State<info> createState() => _infoState();
}

class _infoState extends State<info> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile info"),
        actions: [
          Icon(Icons.more_vert)
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text("Please provide your name and an optional profile photo"),
          CircleAvatar(
            child: ,
          ),

        ],
      ),
    );
  }
}
