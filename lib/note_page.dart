import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NotePage extends StatelessWidget {
  const NotePage({super.key});

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
                color: Colors.grey.shade200,
                child:Row(
                  children: [
                    SizedBox(width: 5,),
                    IconButton(onPressed: () {
                      Navigator.pop(context);
                    }, icon: Icon(CupertinoIcons.back,color: Colors.black,size: 35,)),
                    SizedBox(width: 20,),
                    Text('My notes',style:  GoogleFonts.gabarito(color: Colors.black,fontSize: 22),)
                  ],                ),
              ),

              Expanded(
                child: Container(
                  width: double.infinity,
                  color: Colors.white,
                  child: ListView.builder(
                    itemCount: 1, // 👈 single item
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          ListTile(
                            leading: Container(
                              height: 50,
                              width: 50,
                              decoration:  BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.blueAccent,
                              ),
                              child: Center(child: Text('B',style:  GoogleFonts.gabarito(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.white),)),
                            ),
                            title:   Text(
                              'Benson Saju',
                              style:  GoogleFonts.gabarito(fontSize: 16),
                            ),
                            subtitle:   Text(
                              'Hello',
                              style:  GoogleFonts.gabarito(fontSize: 16),
                            ),
                            trailing: SizedBox(
                              width: 100,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children:  [
                                  Text(
                                    '20 Sept 2025',
                                    style:  GoogleFonts.gabarito(fontSize: 12, color: Colors.grey),
                                  ),
                                  Icon(
                                    Icons.wechat_outlined,
                                    color: Colors.teal,
                                    size: 27,
                                  ),
                                ],
                              ),
                            ),
                          ),
                           Divider(
                            thickness: 1,
                            color: Colors.grey.shade300,

                          ),
                        ],
                      );
                    },
                  ),
                ),
              ),

              Container(
                height: 70,
                color: Colors.grey.shade400,
                child: Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                  child: Row(
                    children: [
                      Expanded(
                        child: TextFormField(
                        decoration: InputDecoration(
                          hintText: 'save a notes...',
                          hintStyle:  GoogleFonts.gabarito(color: Colors.grey,fontSize: 16),
                          fillColor: Colors.white,
                          filled: true,
                          prefixIcon: Icon(CupertinoIcons.camera_circle,color: Colors.teal,size: 34,),
                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(30),borderSide: BorderSide.none),

                        ),

                       ),
                      ),
                    SizedBox(width: 12,),
                    Container(
                      height: 50,
                        width: 50,
                      decoration: BoxDecoration(
                        color: Colors.teal,
                        shape: BoxShape.circle,
                      ),
                      child: Icon(Icons.send,color: Colors.white,size: 30,),
                    )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
