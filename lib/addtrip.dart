// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
//
// class Addtrip extends StatelessWidget {
//   const Addtrip({super.key});
//
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
//                 color: Colors.grey.shade800,
//                 child: Row(
//                   children: [
//                     SizedBox(width: 5),
//                     IconButton(
//                       onPressed: () {
//                         Navigator.pop(context);
//                       },
//                       icon: Icon(
//                         CupertinoIcons.back,
//                         color: Colors.white,
//                         size: 35,
//                       ),
//                     ),
//                     SizedBox(width: 20),
//                     Text(
//                       'start trip',
//                       style: TextStyle(
//                         color: Colors.white,
//                         fontWeight: FontWeight.bold,
//                         fontSize: 18,
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//               Expanded(
//                 child: Container(
//                   width: double.infinity,
//                   color: Colors.white,
//                   child: Padding(
//                     padding: EdgeInsets.symmetric(horizontal: 20),
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         SizedBox(height: 20),
//                         Text('odometers photo', style: TextStyle(fontSize: 12)),
//                         SizedBox(height: 10),
//                         Container(
//                           height: 200,
//                           decoration: BoxDecoration(
//                             border: Border.all(color: Colors.grey.shade400),
//                             borderRadius: BorderRadius.circular(4),
//                           ),
//                           child: Column(
//                             mainAxisAlignment: MainAxisAlignment.center,
//                             children: [
//                               Icon(
//                                 Icons.camera_alt_outlined,
//                                 color: Colors.grey.shade500,
//                                 size: 30,
//                               ),
//                               Center(
//                                 child: Text(
//                                   'please add an odometer photo',
//                                   style: TextStyle(
//                                     color: Colors.grey.shade500,
//                                     fontSize: 16,
//                                   ),
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                         SizedBox(height: 20),
//                         Text(
//                           ' initial odometer reading',
//                           style: TextStyle(fontSize: 12),
//                         ),
//                         SizedBox(height: 7),
//                         TextFormField(
//                           decoration: InputDecoration(
//                             hintText: 'eg 160.5',
//                             border: OutlineInputBorder(
//                               borderSide: BorderSide(
//                                 color: Colors.grey.shade400,
//                               ),
//                             ),
//                             focusedBorder: OutlineInputBorder(
//                               borderSide: BorderSide(
//                                 color: Colors.grey.shade400,
//                               ),
//                             ),
//                             enabledBorder: OutlineInputBorder(
//                               borderSide: BorderSide(
//                                 color: Colors.grey.shade400,
//                               ),
//                             ),
//                           ),
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
//                             hintStyle: TextStyle(color: Colors.grey.shade600),
//
//                             border: OutlineInputBorder(
//                               borderSide: BorderSide(
//                                 color: Colors.grey.shade400,
//                               ),
//                             ),
//                             focusedBorder: OutlineInputBorder(
//                               borderSide: BorderSide(
//                                 color: Colors.grey.shade400,
//                               ),
//                             ),
//                             enabledBorder: OutlineInputBorder(
//                               borderSide: BorderSide(
//                                 color: Colors.grey.shade400,
//                               ),
//                             ),
//                           ),
//                         ),
//                         Spacer(),
//                         Container(
//                           height: 60,
//                           decoration: BoxDecoration(
//                             color: Colors.teal,
//                             borderRadius: BorderRadius.circular(5),
//                           ),
//                           child: Center(
//                             child: Text(
//                               'Start trip',
//                               style: TextStyle(
//                                 color: Colors.white,
//                                 fontSize: 18,
//                                 fontWeight: FontWeight.bold,
//                               ),
//                             ),
//                           ),
//                         ),
//                         SizedBox(height: 10),
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
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Addtrip extends StatelessWidget {
  const Addtrip({super.key});

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
                child: Row(
                  children: [
                    SizedBox(width: 5),
                    IconButton(
                      onPressed: () {
                        FocusScope.of(context).unfocus();
                        Navigator.pop(context);
                      },
                      icon: Icon(
                        CupertinoIcons.back,
                        color: Colors.white,
                        size: 35,
                      ),
                    ),
                    SizedBox(width: 20),
                    Text(
                      'start trip',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  width: double.infinity,
                  color: Colors.white,
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 20),
                          Text('odometers photo', style: TextStyle(fontSize: 12,color: Colors.grey.shade600)),
                          SizedBox(height: 10),
                          Container(
                            height: 200,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey.shade400),
                              borderRadius: BorderRadius.circular(4),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.camera_alt_outlined,
                                  color: Colors.grey.shade500,
                                  size: 30,
                                ),
                                Center(
                                  child: Text(
                                    'please add an odometer photo',
                                    style: TextStyle(
                                      color: Colors.grey.shade500,
                                      fontSize: 16,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 20),
                          Text(
                            ' initial odometer reading',
                            style: TextStyle(fontSize: 12,color: Colors.grey.shade600),
                          ),
                          SizedBox(height: 7),
                          TextFormField(
                            decoration: InputDecoration(
                              hintText: 'eg 160.5',
                              hintStyle: TextStyle(color: Colors.grey.shade400,fontSize: 14),
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
                          SizedBox(height: 20),
                          Text(
                            ' Notes',
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.grey.shade600,
                            ),
                          ),
                          SizedBox(height: 7),
                          TextFormField(
                            maxLines: 3,
                            decoration: InputDecoration(
                              hintText: 'note for start of a trip',
                              hintStyle: TextStyle(color: Colors.grey.shade400,fontSize: 14),

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
                          // SizedBox(height: 20),
                          SizedBox(height: 175),
                          Container(
                            height: 60,
                            decoration: BoxDecoration(
                              color: Colors.teal,
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Center(
                              child: Text(
                                'Start trip',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 10),
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
    );
  }
}