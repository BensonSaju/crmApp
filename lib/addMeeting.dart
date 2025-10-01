// import 'package:flutter/material.dart';
//
// class Addmeeting extends StatefulWidget {
//   const Addmeeting({super.key});
//
//   @override
//   State<Addmeeting> createState() => _AddmeetingState();
// }
//
// class _AddmeetingState extends State<Addmeeting> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         color: Colors.black,
//         child: SafeArea(
//           child: Column(
//             children: [
//               Container(
//                 height: 60,
//                 color: Colors.grey.shade200,
//                 child:Row(
//                   children: [
//                     SizedBox(width: 5,),
//                     IconButton(onPressed: () {
//                       Navigator.pop(context);
//                     }, icon: Icon(Icons.arrow_back,color: Colors.black,size: 35,)),
//                     SizedBox(width: 20,),
//                     Text('Add Meeting',style: TextStyle(color: Colors.black,fontSize: 22),)
//                   ],                ),
//               ),
//               Expanded(child: Container(
//                 width: double.infinity,
//                 color: Colors.white,
//                  child: Padding(
//                    padding:  EdgeInsets.symmetric(horizontal: 20),
//                    child: Column(
//                      crossAxisAlignment: CrossAxisAlignment.start,
//                      children: [
//                        Text(
//                          ' Customer Name',
//                          style: TextStyle(fontSize: 13,color: Colors.grey.shade600,),
//                        ),
//                        SizedBox(height: 7),
//                        TextFormField(
//                          decoration: InputDecoration(
//                            hintText: 'eg Bensin johny',
//                            hintStyle: TextStyle(
//                              color: Colors.grey.shade400,
//                              fontSize: 14,
//                            ),
//                            border: OutlineInputBorder(
//                              borderSide: BorderSide(
//                                color: Colors.grey.shade400,
//                              ),
//                            ),
//                            focusedBorder: OutlineInputBorder(
//                              borderSide: BorderSide(
//                                color: Colors.teal.shade200
//                                ,
//                              ),
//                            ),
//                            enabledBorder: OutlineInputBorder(
//                              borderSide: BorderSide(
//                                color: Colors.grey.shade400,
//                              ),
//                            ),
//                          ),
//                        ),
//                        Column(
//                          children: [
//                            Expanded(
//                              flex: 2,
//                              child: Text(
//                                ' Customer Name',
//                                style: TextStyle(
//                                  fontSize: 13,
//                                  color: Colors.grey.shade600,
//                                ),
//                              ),
//                            ),
//                             // ✅ Row needs width spacing
//                            Expanded(
//                              flex: 5,
//                              child: TextFormField(
//                                decoration: InputDecoration(
//                                  hintText: 'eg Bensin johny',
//                                  hintStyle: TextStyle(
//                                    color: Colors.grey.shade400,
//                                    fontSize: 14,
//                                  ),
//                                  border: OutlineInputBorder(
//                                    borderSide: BorderSide(color: Colors.grey.shade400),
//                                  ),
//                                  focusedBorder: OutlineInputBorder(
//                                    borderSide: BorderSide(color: Colors.teal.shade200),
//                                  ),
//                                  enabledBorder: OutlineInputBorder(
//                                    borderSide: BorderSide(color: Colors.grey.shade400),
//                                  ),
//                                ),
//                              ),
//                            ),
//                          ],
//                        )
//
//                      ],
//                    ),
//                  ),
//
//
//               ),)
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
///........................
// import 'package:flutter/material.dart';
//
// class Addmeeting extends StatefulWidget {
//   const Addmeeting({super.key});
//
//   @override
//   State<Addmeeting> createState() => _AddmeetingState();
// }
//
// class _AddmeetingState extends State<Addmeeting> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         color: Colors.black,
//         child: SafeArea(
//           child: Column(
//             children: [
//               // Top bar
//               Container(
//                 height: 60,
//                 color: Colors.grey.shade600,
//                 child: Row(
//                   children: [
//                     const SizedBox(width: 5),
//                     IconButton(
//                       onPressed: () {
//                         Navigator.pop(context);
//                       },
//                       icon:  Icon(Icons.arrow_back, color: Colors.white, size: 35),
//                     ),
//                     const SizedBox(width: 20),
//                     const Text(
//                       'Add Meeting',
//                       style: TextStyle(color: Colors.white, fontSize: 22),
//                     ),
//                   ],
//                 ),
//               ),
//
//               // Body
//               Expanded(
//                 child: Container(
//                   width: double.infinity,
//                   color: Colors.white,
//                   child: Padding(
//                     padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         // Single full-width field
//                         Text(
//                           'Customer Name',
//                           style: TextStyle(fontSize: 13, color: Colors.grey.shade600),
//                         ),
//                          SizedBox(height: 7),
//                         TextFormField(
//                           decoration: InputDecoration(
//                             hintText: 'eg Bensin Johny',
//                             hintStyle: TextStyle(color: Colors.grey.shade400, fontSize: 14),
//                             border: OutlineInputBorder(
//                               borderSide: BorderSide(color: Colors.grey.shade400),
//                             ),
//                             focusedBorder: OutlineInputBorder(
//                               borderSide: BorderSide(color: Colors.teal.shade200),
//                             ),
//                             enabledBorder: OutlineInputBorder(
//                               borderSide: BorderSide(color: Colors.grey.shade400),
//                             ),
//                           ),
//                         ),
//                          SizedBox(height: 20),
//
//                         // Row with 2 labeled fields
//                         Row(
//                           children: [
//
//                             Expanded(
//                               child: Column(
//                                 crossAxisAlignment: CrossAxisAlignment.start,
//                                 children: [
//                                   Text(
//                                     'Start Time',
//                                     style: TextStyle(
//                                         fontSize: 13, color: Colors.grey.shade600),
//                                   ),
//                                    SizedBox(height: 7),
//                                   TextFormField(
//                                     decoration: InputDecoration(
//                                       hintText: 'Start Time',
//                                       hintStyle: TextStyle(
//                                           color: Colors.grey.shade400, fontSize: 14),
//                                       border: OutlineInputBorder(
//                                         borderSide: BorderSide(color: Colors.grey.shade400),
//                                       ),
//                                       focusedBorder: OutlineInputBorder(
//                                         borderSide: BorderSide(color: Colors.teal.shade200),
//                                       ),
//                                       enabledBorder: OutlineInputBorder(
//                                         borderSide: BorderSide(color: Colors.grey.shade400),
//                                       ),
//                                     ),
//                                   ),
//                                 ],
//                               ),
//                             ),
//                              SizedBox(width: 16), // space between fields
//
//
//                             Expanded(
//                               child: Column(
//                                 crossAxisAlignment: CrossAxisAlignment.start,
//                                 children: [
//                                   Text(
//                                     'End Time',
//                                     style: TextStyle(
//                                         fontSize: 13, color: Colors.grey.shade600),
//                                   ),
//                                   const SizedBox(height: 7),
//                                   TextFormField(
//                                     decoration: InputDecoration(
//                                       hintText: 'End Time',
//                                       hintStyle: TextStyle(
//                                           color: Colors.grey.shade400, fontSize: 14),
//                                       border: OutlineInputBorder(
//                                         borderSide: BorderSide(color: Colors.grey.shade400),
//                                       ),
//                                       focusedBorder: OutlineInputBorder(
//                                         borderSide: BorderSide(color: Colors.teal.shade200),
//                                       ),
//                                       enabledBorder: OutlineInputBorder(
//                                         borderSide: BorderSide(color: Colors.grey.shade400),
//                                       ),
//                                     ),
//                                   ),
//                                 ],
//                               ),
//                             ),
//                           ],
//                         ),
//                         SizedBox(height: 20),
//                         Text(
//                           ' Notes',
//                           style: TextStyle(
//                             fontSize: 12,
//                             color: Colors.grey.shade600,
//                           ),
//                         ),
//                         SizedBox(height: 7),
//                         TextFormField(
//                           maxLines: 3,
//                           decoration: InputDecoration(
//                             hintText: 'note for start of a trip',
//                             hintStyle: TextStyle(color: Colors.grey.shade400),
//
//                             border: OutlineInputBorder(
//                               borderSide: BorderSide(
//                                 color: Colors.grey.shade400,
//                               ),
//                             ),
//                             focusedBorder: OutlineInputBorder(
//                               borderSide: BorderSide(
//                                 color: Colors.teal.shade200,
//                               ),
//                             ),
//                             enabledBorder: OutlineInputBorder(
//                               borderSide: BorderSide(
//                                 color: Colors.grey.shade400,
//                               ),
//                             ),
//                           ),
//                         ),
//                         SizedBox(height: 20,),
//                         Text(
//                           ' Add Attachments',
//                           style: TextStyle(
//                             fontSize: 12,
//                             color: Colors.grey.shade600,
//                           ),
//                         ),
//                         SizedBox(height: 10,),
//                         Container(
//                           height: 50,
//                           width: 100,
//                           decoration:BoxDecoration(
//                             borderRadius: BorderRadius.circular(7),
//                             color: Colors.white,
//                             border: Border.all(color: Colors.blueAccent)
//
//                           ),
//                           child: Center(child: Text('ADD File',style: TextStyle(color: Colors.blueAccent,fontWeight: FontWeight.bold),)),
//                         ),
//                          SizedBox(height: 20,),
//                         Container(
//                           height: 50,
//                           width: double.infinity,
//                           decoration:BoxDecoration(
//                               borderRadius: BorderRadius.circular(7),
//                               color: Colors.teal,
//
//
//                           ),
//                           child: Center(child: Text('ADD Meeting'
//                               '',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Addmeeting extends StatefulWidget {
  const Addmeeting({super.key});

  @override
  State<Addmeeting> createState() => _AddmeetingState();
}

class _AddmeetingState extends State<Addmeeting> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        FocusScope.of(context).unfocus();
        await Future.delayed(Duration(milliseconds: 100));
        return true;
      },
      child: Scaffold(
        body: Container(
          color: Colors.black,
          child: SafeArea(
            child: Column(
              children: [
                // Top bar
                Container(
                  height: 60,
                  color: Colors.grey.shade800,
                  child: Row(
                    children: [
                      const SizedBox(width: 5),
                      IconButton(
                        onPressed: () async {
                          FocusScope.of(context).unfocus();
                          await Future.delayed(Duration(milliseconds: 100));
                          Navigator.pop(context);
                        },
                        icon:  Icon(Icons.arrow_back, color: Colors.white, size: 35),
                      ),
                        SizedBox(width: 20),
                        Text(
                        'Add Meeting',
                        style:  GoogleFonts.gabarito(color: Colors.white, fontSize: 22),
                      ),
                    ],
                  ),
                ),

                // Body
                Expanded(
                  child: Container(
                    width: double.infinity,
                    color: Colors.white,
                    child: SingleChildScrollView(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // Single full-width field
                            Text(
                              'Customer Name',
                              style:  GoogleFonts.gabarito(fontSize: 13, color: Colors.grey.shade600),
                            ),
                            SizedBox(height: 7),
                            TextFormField(
                              decoration: InputDecoration(
                                hintText: 'eg Bensin Johny',
                                hintStyle:  GoogleFonts.gabarito(color: Colors.grey.shade400, fontSize: 14),
                                border: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.grey.shade400),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.teal.shade200),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.grey.shade400),
                                ),
                              ),
                            ),
                            SizedBox(height: 20),

                            // Row with 2 labeled fields
                            Row(
                              children: [

                                Expanded(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Start Time',
                                        style:  GoogleFonts.gabarito(
                                            fontSize: 13, color: Colors.grey.shade600),
                                      ),
                                      SizedBox(height: 7),
                                      TextFormField(
                                        decoration: InputDecoration(
                                          hintText: 'Start Time',
                                          hintStyle:  GoogleFonts.gabarito(
                                              color: Colors.grey.shade400, fontSize: 14),
                                          border: OutlineInputBorder(
                                            borderSide: BorderSide(color: Colors.grey.shade400),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(color: Colors.teal.shade200),
                                          ),
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(color: Colors.grey.shade400),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(width: 16), // space between fields


                                Expanded(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'End Time',
                                        style:  GoogleFonts.gabarito(
                                            fontSize: 13, color: Colors.grey.shade600),
                                      ),
                                      const SizedBox(height: 7),
                                      TextFormField(
                                        decoration: InputDecoration(
                                          hintText: 'End Time',
                                          hintStyle:  GoogleFonts.gabarito(
                                              color: Colors.grey.shade400, fontSize: 14),
                                          border: OutlineInputBorder(
                                            borderSide: BorderSide(color: Colors.grey.shade400),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(color: Colors.teal.shade200),
                                          ),
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(color: Colors.grey.shade400),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 20),
                            Text(
                              ' Notes',
                              style:  GoogleFonts.gabarito(
                                fontSize: 12,
                                color: Colors.grey.shade600,
                              ),
                            ),
                            SizedBox(height: 7),
                            TextFormField(
                              maxLines: 3,
                              decoration: InputDecoration(
                                hintText: 'note for start of a trip',
                                hintStyle:  GoogleFonts.gabarito(color: Colors.grey.shade400,fontSize: 14),

                                border: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors.grey.shade400,
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors.teal.shade200,
                                  ),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors.grey.shade400,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 20,),
                            Text(
                              ' Add Attachments',
                              style:  GoogleFonts.gabarito(
                                fontSize: 12,
                                color: Colors.grey.shade600,
                              ),
                            ),
                            SizedBox(height: 10,),
                            Container(
                              height: 50,
                              width: 100,
                              decoration:BoxDecoration(
                                  borderRadius: BorderRadius.circular(7),
                                  color: Colors.white,
                                  border: Border.all(color: Colors.blueAccent)

                              ),
                              child: Center(child: Text('ADD File',style:  GoogleFonts.gabarito(color: Colors.blueAccent,fontWeight: FontWeight.bold),)),
                            ),
                            SizedBox(height: 230,),
                            Container(
                              height: 50,
                              width: double.infinity,
                              decoration:BoxDecoration(
                                borderRadius: BorderRadius.circular(7),
                                color: Colors.teal,


                              ),
                              child: Center(child: Text('ADD Meeting'
                                  '',style:  GoogleFonts.gabarito(color: Colors.white,fontWeight: FontWeight.bold),)),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}