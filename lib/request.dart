import 'package:crmapp/request_leave.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Request extends StatefulWidget {
  const Request({super.key});

  @override
  State<Request> createState() => _RequestState();
}

class _RequestState extends State<Request> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 220,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border(
                bottom: BorderSide(
                  color: Colors.grey.shade300,
                  width: 1,
                ),
              ),
            ),
            child:
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 10,),
                Padding(
                  padding:  EdgeInsets.only(left: 20),
                  child: Text('Leave a Request',style:  GoogleFonts.gabarito(fontWeight: FontWeight.bold,fontSize: 20),),
                ),
                SizedBox(height: 20,),
                Row(

                  children: [
                    SizedBox(width: 16,),
                    Row(children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Privilege',style:  GoogleFonts.gabarito(fontWeight: FontWeight.bold),),
                          Text('0'),
                        ],
                      ),
                      SizedBox(width: 20,),
                      SizedBox(
                        height: 40,
                        child: VerticalDivider(
                          color: Colors.grey.shade400,
                          thickness: 1,
                          width: 20,
                        ),
                      ),
                    ],),
                    SizedBox(width: 10,),
                    Row(children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Sick leave',style:  GoogleFonts.gabarito(fontWeight: FontWeight.bold),),
                          Text('0'),
                        ],
                      ),
                      SizedBox(width: 20,),
                      SizedBox(
                        height: 40,
                        child: VerticalDivider(
                          color: Colors.grey.shade400,
                          thickness: 1,
                          width: 20,
                        ),
                      ),
                    ],),
                    SizedBox(width: 10,),
                    Row(children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Casual leave',style:  GoogleFonts.gabarito(fontWeight: FontWeight.bold),),
                          Text('0'),
                        ],
                      ),
                      SizedBox(
                        height: 40,
                        child: VerticalDivider(
                          color: Colors.grey.shade400,
                          thickness: 1,
                          width: 20,
                        ),
                      ),
                    ],),
                  ],
                ),
                SizedBox(height: 30,),
                Divider(color: Colors.grey.shade300,thickness: 4,),
                SizedBox(height: 10,),
                Padding(
                  padding:  EdgeInsets.only(top: 10,left: 20),
                  child: Text('Pending Requests',style:  GoogleFonts.gabarito(fontSize: 18,fontWeight: FontWeight.bold),),
                )
              ],
            ),
          ),
          Expanded(
            child: Container(
              width: double.infinity  ,
              color: Colors.white,
              child: Center(child: Text('no pending Requests')),
            ),
          )
        ],
      ),
      floatingActionButton: SizedBox(
        height: 40,
        width: 150,
        child: FloatingActionButton(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30)
          ),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) =>LeaveRequestPage() ,));
          },
          backgroundColor: Colors.greenAccent.shade700,
          child: Text('Request Leave',style:  GoogleFonts.gabarito(fontSize: 18,color: Colors.white),),)
      )
    );
  }
}
