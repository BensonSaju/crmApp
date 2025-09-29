// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
//
// class Crmpage extends StatefulWidget {
//   const Crmpage({super.key});
//
//   @override
//   State<Crmpage> createState() => _CrmpageState();
// }
//
// class _CrmpageState extends State<Crmpage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body:
//       Container(
//         color: Colors.black,
//         child: SafeArea(
//           child: Column(
//             children: [
//               Container(
//                 height: 60,
//                 width: double.infinity,
//                   color:
//                 Colors.grey.shade800,
//                 child:
//                 Padding(
//                   padding:  EdgeInsets.only(left: 20),
//                   child: Row(
//
//                     children: [Text('Trips and Meetings',style: TextStyle(
//                       color: Colors.white,
//                       fontWeight: FontWeight.bold,
//                       fontSize: 20
//                     ),),],
//                   ),
//                 ),
//               ),
//               Container(
//                 height: 130,
//                 decoration: BoxDecoration(
//                   color: Colors.white,
//                   border: Border(
//                     bottom: BorderSide(
//                       color: Colors.grey.shade300,
//                       width: 1,
//                     ),
//                   ),
//                 ),
//                 child: Column(
//                   children: [
//                     SizedBox(height: 10,),
//                     Row(
//                       children: [
//                         SizedBox(width: 10,),
//                         CircleAvatar(
//                           radius: 17,
//                           backgroundColor: Colors.greenAccent.withOpacity(0.3),
//                           child:
//                           Padding(
//                             padding:  EdgeInsets.only(left: 3),
//                             child: Icon(Icons.arrow_back_ios,size: 17,color: Colors.black,),
//                           ),
//                         ),
//                           Spacer(),
//                           Icon(Icons.calendar_today,size: 20,),
//                         Text('18th Sep 2025',style:TextStyle(fontWeight: FontWeight.bold),),
//                         Spacer(),
//                         CircleAvatar(
//                           radius: 17,
//                           backgroundColor: Colors.grey.withOpacity(0.3),
//                           child:
//                           Padding(
//                             padding:  EdgeInsets.only(left: 3),
//                             child: Icon(Icons.arrow_forward_ios,size: 17,color: Colors.black,),
//                           ),
//                         ),
//                         SizedBox(width: 10,),
//                       ],
//                     ),
//                     SizedBox(height: 20,),
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                       children: [
//                         Row(
//                           children: [
//                             Column(
//                               children: [
//                                 Row(
//
//                                   children: [
//                                     Icon(CupertinoIcons.speedometer,color: Colors.blue,size: 30,),
//                                     SizedBox(width: 7,),
//                                     Text('0 km',style: TextStyle(
//                                       fontWeight: FontWeight.bold
//                                           ,fontSize: 17
//                                     ),)
//                                   ],
//                                 ),
//                                 Text('Total Distance',style: TextStyle(fontSize: 13,),)
//                               ],
//                             ),
//                             SizedBox(width: 20,),
//                             SizedBox(
//                               height: 40,
//                               child: VerticalDivider(
//                                 color: Colors.grey.shade400,
//                                 thickness: 1,
//                                 width: 20,
//                               ),
//                             ),
//                           ],
//                         ),
//                         Row(
//                           children: [
//                             Column(
//                               children: [
//                                 Row(
//
//                                   children: [
//                                     Icon(Icons.handshake_outlined,color: Colors.blue,size: 30,),
//                                     SizedBox(width: 7,),
//                                     Text('0 ',style: TextStyle(
//                                         fontWeight: FontWeight.bold
//                                         ,fontSize: 17
//                                     ),)
//                                   ],
//                                 ),
//                                 Text('Total Meeting',style: TextStyle(fontSize: 13,),)
//                               ],
//                             ),
//                             SizedBox(width: 20,),
//                             SizedBox(
//                               height: 40,
//                               child: VerticalDivider(
//                                 color: Colors.grey.shade400,
//                                 thickness: 1,
//                                 width: 20,
//                               ),
//                             ),
//                           ],
//                         ),
//                         Row(
//                           children: [
//                             Column(
//                               children: [
//                                 Row(
//
//                                   children: [
//                                     Icon(CupertinoIcons.timer,color: Colors.blue,size: 30,),
//                                     SizedBox(width: 7,),
//                                     Text('0 min',style: TextStyle(
//                                         fontWeight: FontWeight.bold
//                                         ,fontSize: 17
//                                     ),)
//                                   ],
//                                 ),
//                                 Text('Total Distance',style: TextStyle(fontSize: 13,),)
//                               ],
//                             ),
// ///
//                           ],
//                         ),
//                       ],
//                     ),
//
//                   ],
//                 ),
//               ),
//               Container(
//                 height: 480,
//                 color: Colors.white,
//                 child:
//                 Center(child: Text('No Trips Found',style: TextStyle(
//                   fontWeight: FontWeight.bold,
//                   fontSize: 20
//                 ),),),
//
//               ),
//               Expanded(child: Container(
//                 decoration: BoxDecoration(
//                   color:Colors.white,
//                   border: Border(
//                     top: BorderSide(
//                       color: Colors.grey.shade300,
//                       width: 1,
//                     ),
//                   ),
//                 ),
//                 child:
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                   children: [
//                     Container(
//                       height: 50,
//                       width: 180,
//                       decoration: BoxDecoration(
//                         border: Border.all(color: Colors.deepOrange),
//                         borderRadius: BorderRadius.circular(5),
//                         color: Colors.orange.shade100.withOpacity(0.3),
//                       ),
//                       child: Center(child: Text('+ Add Meeting',style: TextStyle(
//                         color: Colors.orange,
//                         fontWeight: FontWeight.bold,
//                         fontSize: 17
//                       ),),),
//                     ),
//                     Container(
//                       height: 50,
//                       width: 180,
//                       decoration: BoxDecoration(
//                         border: Border.all(color: Colors.greenAccent),
//                         borderRadius: BorderRadius.circular(5),
//                         color: Colors.greenAccent,
//                       ),
//                       child: Center(child: Text('Start Trip',style: TextStyle(
//                           color: Colors.white,
//                           fontWeight: FontWeight.bold,
//                           fontSize: 17
//                       ),),),
//                     ),
//                   ],
//                 )
//                 ,
//               ),),
//
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'package:crmapp/addMeeting.dart';
import 'package:crmapp/addtrip.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart'; // For formatting dates

class Crmpage extends StatefulWidget {
  const Crmpage({super.key});

  @override
  State<Crmpage> createState() => _CrmpageState();
}

class _CrmpageState extends State<Crmpage> {

  DateTime _selectedDate = DateTime.now();

  // Function to format DateTime to string (e.g., "18th Sep 2025")
  String _formatDate(DateTime date) {
    final DateFormat formatter = DateFormat('d MMMM yyyy');
    return formatter.format(date);
  }

  // Function to handle backward arrow press
  void _previousDate() {
    setState(() {
      _selectedDate = _selectedDate.subtract(const Duration(days: 1));
    });
  }

  // Function to handle forward arrow press, preventing future dates
  void _nextDate() {
    final now = DateTime.now();
    // Only allow moving forward if the selected date is before the current date
    if (_selectedDate.isBefore(DateTime(now.year, now.month, now.day))) {
      setState(() {
        _selectedDate = _selectedDate.add(const Duration(days: 1));
      });
    }
  }

  // Function to get data based on selected date
  Map<String, dynamic> _getTripData(DateTime date) {
    // Replace this with your actual data fetching logic (e.g., from a database or API)
    // For now, return default values to avoid breaking the UI
    return {
      'distance': '0 km',
      'meetings': '0',
      'duration': '0 min',
      'trips': 'No Trips Found',
    };
  }

  @override
  Widget build(BuildContext context) {
    // Get data for the selected date
    final tripData = _getTripData(_selectedDate);

    return Scaffold(
      body: Container(
        color: Colors.black,
        child: SafeArea(
          child: Column(
            children: [
              Container(
                height: 60,
                width: double.infinity,
                color: Colors.grey.shade800,
                child: Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Row(
                    children: [
                      const Text(
                        'Trips and Meetings',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                height: 130,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border(
                    bottom: BorderSide(
                      color: Colors.grey.shade300,
                      width: 1,
                    ),
                  ),
                ),
                child: Column(
                  children: [
                      SizedBox(height: 10),
                    Row(
                      children: [
                          SizedBox(width: 10),
                        GestureDetector(
                          onTap: _previousDate,
                          child: CircleAvatar(
                            radius: 17,
                            backgroundColor: Colors.greenAccent.withOpacity(0.3),
                            child:   Padding(
                              padding: EdgeInsets.only(left: 3),
                              child: Icon(
                                Icons.arrow_back_ios,
                                size: 17,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                          Spacer(),
                          Icon(Icons.calendar_today, size: 20),
                        Text(
                          _formatDate(_selectedDate),
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                        const Spacer(),
                        GestureDetector(
                          onTap: _nextDate,
                          child: CircleAvatar(
                            radius: 17,
                            backgroundColor: Colors.grey.withOpacity(0.3),
                            child: const Padding(
                              padding: EdgeInsets.only(left: 3),
                              child: Icon(
                                Icons.arrow_forward_ios,
                                size: 17,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 10),
                      ],
                    ),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Row(
                          children: [
                            Column(
                              children: [
                                Row(
                                  children: [
                                    const Icon(
                                      CupertinoIcons.speedometer,
                                      color: Colors.blue,
                                      size: 30,
                                    ),
                                    const SizedBox(width: 7),
                                    Text(
                                      tripData['distance'],
                                      style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 17,
                                      ),
                                    ),
                                  ],
                                ),
                                const Text(
                                  'Total Distance',
                                  style: TextStyle(fontSize: 13),
                                ),
                              ],
                            ),
                            const SizedBox(width: 20),
                            SizedBox(
                              height: 40,
                              child: VerticalDivider(
                                color: Colors.grey.shade400,
                                thickness: 1,
                                width: 20,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Column(
                              children: [
                                Row(
                                  children: [
                                    const Icon(
                                      Icons.handshake_outlined,
                                      color: Colors.blue,
                                      size: 30,
                                    ),
                                    const SizedBox(width: 7),
                                    Text(
                                      tripData['meetings'],
                                      style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 17,
                                      ),
                                    ),
                                  ],
                                ),
                                const Text(
                                  'Total Meeting',
                                  style: TextStyle(fontSize: 13),
                                ),
                              ],
                            ),
                            const SizedBox(width: 20),
                            SizedBox(
                              height: 40,
                              child: VerticalDivider(
                                color: Colors.grey.shade400,
                                thickness: 1,
                                width: 20,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Column(
                              children: [
                                Row(
                                  children: [
                                    const Icon(
                                      CupertinoIcons.timer,
                                      color: Colors.blue,
                                      size: 30,
                                    ),
                                    const SizedBox(width: 7),
                                    Text(
                                      tripData['duration'],
                                      style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 17,
                                      ),
                                    ),
                                  ],
                                ),
                                const Text(
                                  'Total Duration', // Fixed typo from 'Total Distance'
                                  style: TextStyle(fontSize: 13),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                height: 480,
                color: Colors.white,
                child: Center(
                  child: Text(
                    tripData['trips'],
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border(
                      top: BorderSide(
                        color: Colors.grey.shade300,
                        width: 1,
                      ),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      GestureDetector(onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Addmeeting(),));
                      },
                        child: Container(
                          height: 50,
                          width: 180,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.deepOrange),
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.orange.shade100.withOpacity(0.3),
                          ),
                          child: const Center(
                            child: Text(
                              '+ Add Meeting',
                              style: TextStyle(
                                color: Colors.orange,
                                fontWeight: FontWeight.bold,
                                fontSize: 17,
                              ),
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(onTap: (){
                        Navigator.push(context,  MaterialPageRoute(builder: (context) => Addtrip(),));
                      },
                        child: Container(
                          height: 50,
                          width: 180,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.greenAccent),
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.greenAccent,
                          ),
                          child:  Center(
                            child: Text(
                              'Start Trip',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 17,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
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