import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

void main(){
  runApp(MaterialApp(home: Phone_number(),debugShowCheckedModeBanner: false,));
}
class Phone_number extends StatefulWidget {
  const Phone_number({super.key});

  @override
  State<Phone_number> createState() => _Phone_numberState();
}

class _Phone_numberState extends State<Phone_number> {
  String phoneNumber='';
  String countryCode='';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Enter your Phone number",style: TextStyle(color: Colors.black),),
      actions: [
        Icon(Icons.more_vert)
      ],),
      body: Column(mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text("Whatsapp will need to verify your phone number.",style: TextStyle(color: Colors.black),),
          Text("What's my number?",style: TextStyle(color: Colors.green),),
         SizedBox(height: 20,),
          IntlPhoneField(
            decoration: InputDecoration(
              labelText: 'Phone Number',
              border: OutlineInputBorder(
                borderSide: BorderSide(),
              ),
            ),
            initialCountryCode: 'IN',
            onChanged: (phone) {
              setState(() {
                phoneNumber=phone.completeNumber;
                countryCode=phone.countryCode;
              });
              print(phone.completeNumber);
            },
          ),
          SizedBox(height: 10,),
          Text("Current changes may apply"),
          SizedBox(height: 20,),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.green,
            ),
              onPressed: (){
            print("Phone Number:$phoneNumber");
          }, child: Text("Next")),
      ]),
    );
  }
}
