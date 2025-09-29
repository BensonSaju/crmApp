import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Notification_page extends StatelessWidget {
  const Notification_page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.black,
        child: SafeArea(
          child: Column(
            children: [
              Container(
                height: 60,
                color: Colors.grey.shade800,
                child:Row(
                  children: [
                    SizedBox(width: 5,),
                    IconButton(onPressed: () { 
                      Navigator.pop(context);
                    }, icon: Icon(CupertinoIcons.back,color: Colors.white,size: 35,)),
                    SizedBox(width: 20,),
                    Text('Notifications',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 22),)
                  ],                ),
              ),
              Expanded(child: Container(
                width: double.infinity,
                color: Colors.white,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(height: 20,),
                      Icon(Icons.notifications_off_outlined,size: 35,color: Colors.grey.shade400,),
                      SizedBox(height: 10,),
                      Text('No Notifications',style: TextStyle(fontSize: 22,color: Colors.grey.shade400),)
                    ],
                  ),
              ),)
            ],
          ),
        ),
      ),
    );
  }
}
