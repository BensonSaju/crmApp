import 'package:crmapp/bank_details.dart';
import 'package:crmapp/current_employee.dart';
import 'package:crmapp/customs_page.dart';
import 'package:crmapp/personal_details.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      Container(
        color: Colors.black,
        child: SafeArea(
          child: Column(
            children: [
              Container(
                height: 60,
                width: double.infinity,
                color: Colors.white,
                child: Row(
                  children: [
                    SizedBox(width: 10),
                    IconButton(onPressed: (){
                      Navigator.pop(context);
                    },
                      icon: Icon( CupertinoIcons.left_chevron,
                        size: 30,
                        color: Colors.black,
                      ),),
                    SizedBox(width: 25),
                    Text(
                      'Benson Saju',
                      style: TextStyle(
                        fontSize: 20,

                      ),
                    ),
                    Spacer(),
                    Container(
                      height: 40,
                      width: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        color: Colors.teal.shade300
                      ),
                      child:
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(Icons.picture_as_pdf_outlined,color: Colors.white,size: 22,),
                          Text('Biodata',style: TextStyle(color: Colors.white),)
                        ],
                      ),
                    ),
                    SizedBox(width: 10,),
                  ],
                ),
              ),
              Expanded(child: Container(
                width: double.infinity,
                color: Colors.grey.shade200,
                child:
                Column(
                  children: [
                    SizedBox(height: 30,),
                    SizedBox(
                      height: 100,
                      width: 100,
                      child: Stack(
                        children: [
                          Container(

                            height: 100,
                            width: 100,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey.shade200,width: 1),
                              shape: BoxShape.circle,
                              color: Colors.blue
                            ),
                            child: Center(child: Text('B',style: TextStyle(color: Colors.white,fontSize: 70,fontWeight: FontWeight.bold),))
                          ),
                          Positioned(
                            bottom: 0,
                            right: 5,
                            child: Container(
                              height: 30,
                              width: 30,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                shape: BoxShape.circle,
                                border: Border.all(color: Colors.grey.shade200, width: 1),
                              ),
                              child:  Icon(Icons.camera_alt_outlined, size: 18, color: Colors.teal),
                            ),
                          )
                        ],
                      ),
                    ),
                    Text('Benson Saju',style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),
                    SizedBox(height: 10,),
                    Text('91-8921706545',style: TextStyle(fontSize: 17, ),),
                    SizedBox(height: 7,),
                    Text('Flutter Intern',style: TextStyle(fontSize: 17, color: Colors.grey.shade600),),
                    SizedBox(height: 30,),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 20),
                      height: 155,
                      width: double.infinity,
                      decoration:BoxDecoration(
                        borderRadius: BorderRadius.circular(13),
                        color: Colors.white,
                      ),
                      child: Column(
                        children: [
                          SizedBox(height: 15,),
                         InkWell(onTap: () {
                           Navigator.push(context, MaterialPageRoute(builder: (context) => PersonalDetailsScreen(),));
                         },
                           child: Row(
                             children: [
                               SizedBox(width: 10,),
                               Icon(Icons.person_outline,color: Colors.black,),
                               SizedBox(width: 10,),
                               Text('Personal Details',style: TextStyle(fontWeight: FontWeight.bold),),
                               Spacer(),
                               Icon(CupertinoIcons.forward,size: 20,),
                               SizedBox(width: 10,),
                             ],
                           ),
                         ),
                          SizedBox(height: 5,),
                          Divider(color: Colors.grey.shade300,thickness: 1,),
                          SizedBox(height: 5,),
                          InkWell(onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => CurrentEmploymentScreen(),));

                          },
                            child: Row(
                              children: [
                                SizedBox(width: 10,),
                                Icon(Icons.cases_outlined,color: Colors.black,),
                                SizedBox(width: 10,),
                                Text(' Current Employee',style: TextStyle(fontWeight: FontWeight.bold),),
                                Spacer(),
                                Icon(CupertinoIcons.forward,size: 20,),
                                SizedBox(width: 10,),
                              ],
                            ),
                          ),
                          SizedBox(height: 5,),
                          Divider(color: Colors.grey.shade300,thickness: 1,),
                          SizedBox(height: 5,),
                          InkWell(onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => CustomDetailsScreen(),));
                          },
                            child: Row(
                              children: [
                                SizedBox(width: 10,),
                                Icon(Icons.account_balance,color: Colors.black,),
                                SizedBox(width: 10,),
                                Text('Custom Details',style: TextStyle(fontWeight: FontWeight.bold),),
                                Spacer(),
                                Icon(CupertinoIcons.forward,size: 20,),
                                SizedBox(width: 10,),
                              ],
                            ),
                          ),
                          SizedBox(height: 5,),
                        ],
                      ),
                    ),
                    SizedBox(height: 20,),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 20),
                      height: 55,
                      width: double.infinity,
                      decoration:BoxDecoration(
                        borderRadius: BorderRadius.circular(13),
                        color: Colors.white,
                      ),
                      child:
                          Row(
                            children: [
                              SizedBox(width: 10,),
                              Icon(Icons.fingerprint_outlined,color: Colors.black,),
                              SizedBox(width: 10,),
                              Text('Attendence details',style: TextStyle(fontWeight: FontWeight.bold),),
                              Spacer(),
                              Icon(CupertinoIcons.forward,size: 20,),
                              SizedBox(width: 10,),
                            ],
                          ),


                    ),
                    SizedBox(height: 20,),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 20),
                      height: 55,
                      width: double.infinity,
                      decoration:BoxDecoration(
                        borderRadius: BorderRadius.circular(13),
                        color: Colors.white,
                      ),
                      child:
                          InkWell(onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => BankAccountDetailsScreen(),));

                          },
                            child: Row(
                              children: [
                                SizedBox(width: 10,),
                                Icon(Icons.account_balance,color: Colors.black,),
                                SizedBox(width: 10,),
                                Text('Bank Details',style: TextStyle(fontWeight: FontWeight.bold),),
                                Spacer(),
                                Icon(CupertinoIcons.forward,size: 20,),
                                SizedBox(width: 10,),
                              ],
                            ),
                          ),


                    ),
                    SizedBox(height: 20,),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 20),
                      height: 55,
                      width: double.infinity,
                      decoration:BoxDecoration(
                        borderRadius: BorderRadius.circular(13),
                        color: Colors.white,
                      ),
                      child:
                          Row(
                            children: [
                              SizedBox(width: 10,),
                              Icon(Icons.person_outline,color: Colors.black,),
                              SizedBox(width: 10,),
                              Text('User Permission',style: TextStyle(fontWeight: FontWeight.bold),),
                              Spacer(),
                              Text('Employee',style: TextStyle(fontWeight: FontWeight.bold),),
                               SizedBox(width: 10,),
                              Icon(CupertinoIcons.forward,size: 20,),
                              SizedBox(width: 10,),
                            ],
                          ),


                    ),
                  ],
                ),
              ))
            ],
          ),
        ),
      )
    );
  }
}
