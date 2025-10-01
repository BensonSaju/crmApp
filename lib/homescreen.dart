//
// import 'package:crmapp/annoucementpage.dart';
// import 'package:crmapp/crmpage.dart';
// import 'package:crmapp/document_page.dart';
// import 'package:crmapp/leave_Page.dart';
// import 'package:crmapp/note_page.dart';
// import 'package:crmapp/profile_page.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
//
// import 'Holiday_list.dart';
// import 'alarm.dart';
//
// class Homescreen extends StatefulWidget {
//   const Homescreen({super.key});
//
//   @override
//   State<Homescreen> createState() => _HomescreenState();
// }
//
// class _HomescreenState extends State<Homescreen> {
//
//   final List<Map<String, dynamic>> gridItems = [
//     {'icon': Icons.person_outline_sharp, 'title': 'Profile','page':ProfilePage()},
//     {'icon': Icons.calendar_today_outlined, 'title': 'view attendence','page':Crmpage()},
//     {'icon': Icons.announcement_outlined, 'title': 'anouncements','page':Annoucementpage()},
//     {'icon': Icons.timer_sharp, 'title': 'set Alarm','page':Annoucementpage()},
//     {'icon': Icons.beach_access_outlined, 'title': 'request leave','page':LeaveRequestTabs()},
//     {'icon': Icons.handshake_outlined, 'title': 'CRM','page':Crmpage()},
//     {'icon': Icons.attach_money, 'title': 'Request Reimbursement','page':Crmpage()},
//     {'icon': Icons.event_note, 'title': 'Notes','page':NotePage()},
//     {'icon': Icons.calendar_today, 'title': 'Holiday List','page':HolidayListPage()},
//     {'icon': Icons.file_copy_outlined, 'title': 'My Documents','page':DocumentPage()},
//     {'icon': Icons.notifications_outlined, 'title': 'Attendence Reminder','page':Crmpage()},
//     {'icon': Icons.card_giftcard, 'title': 'Refer & Earn','page':Crmpage()},
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       extendBodyBehindAppBar: true,
//       backgroundColor: Colors.black,
//       body: Container(
//         color: Colors.black54,
//         child: SafeArea(
//           child: Column(
//             children: [
//
//               Container(
//                 height: 220,
//                 width: double.infinity,
//                 color: Colors.white,
//                 child: Column(
//                   children: [
//                     SizedBox(height: 10,),
//                     Row(
//                       children: [
//                          SizedBox(width: 10),
//                         Container(
//                           height: 40,
//                           width: 40,
//                           decoration: BoxDecoration(
//                             color: Colors.white,
//                             shape: BoxShape.circle,
//                             border: Border.all(color: Colors.grey.shade200, width: 1),
//                           ),
//                         ),
//                           SizedBox(width: 10),
//                          Text(
//                           'Flutter test pvt',
//                           style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
//                         ),
//                           Spacer(),
//                           Icon(Icons.notifications_none_outlined),
//                           SizedBox(width: 10),
//                           Icon(Icons.more_vert_rounded),
//                           SizedBox(width: 10),
//                       ],
//                     ),
//                      SizedBox(height: 20),
//                     InkWell(onTap:() {
//                       Navigator.push(
//                         context,
//                         MaterialPageRoute(builder: (context) => ProfilePage()),
//                       );
//                     } ,
//                       child: SizedBox(
//                         height: 100,
//                         width: 100,
//                         child: Stack(
//                           children: [
//                             Container(
//                               height: 100,
//                               width: 100,
//                               decoration: BoxDecoration(
//                                border: Border.all(color: Colors.grey.shade200,width: 1),
//                                 shape: BoxShape.circle,
//
//                               ),
//                               child: Icon(Icons.person, size: 50, color: Colors.grey.shade400),
//                             ),
//                             Positioned(
//                               bottom: 0,
//                               right: 5,
//                               child: Container(
//                                 height: 30,
//                                 width: 30,
//                                 decoration: BoxDecoration(
//                                   color: Colors.greenAccent,
//                                   shape: BoxShape.circle,
//                                   border: Border.all(color: Colors.grey.shade200, width: 1),
//                                 ),
//                                 child:  Icon(Icons.add_rounded, size: 28, color: Colors.white),
//                               ),
//                             )
//                           ],
//                         ),
//                       ),
//                     ),
//                      SizedBox(height: 10),
//                      Text(
//                       'Benson Saju',
//                       style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17,color: Colors.grey),
//                     )
//                   ],
//                 ),
//               ),
//
//               Expanded(
//                 child: Container(
//                   color: Colors.grey.shade100,
//                   child: Padding(
//                     padding:  EdgeInsets.all(12.0),
//                     child: GridView.count(
//                       physics:  AlwaysScrollableScrollPhysics(),
//                       // shrinkWrap: true,
//                       crossAxisCount: 3,
//                       mainAxisSpacing: 6,
//                       crossAxisSpacing: 6,
//                       childAspectRatio: 0.99,
//                       children: gridItems.map((item) {
//                         return GridItem(
//                           icon: item['icon'],
//                           title: item['title'],
//                           onTap: () {
//                             if (item['page'] != null) {
//                               Navigator.push(
//                                 context,
//                                 MaterialPageRoute(builder: (_) => item['page']),
//                               );
//                             } else {
//                               ScaffoldMessenger.of(context).showSnackBar(
//                                 SnackBar(content: Text("Coming soon: ${item['title']}")),
//                               );
//                             }
//                           },
//                         );
//                       }).toList(),
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
//
//
// class GridItem extends StatelessWidget {
//   final IconData icon;
//   final String title;
//   final VoidCallback? onTap;
//
//
//   const GridItem({super.key, required this.icon, required this.title,required this.onTap});
//
//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: onTap,
//       child: Container(
//         padding:  EdgeInsets.symmetric(vertical: 12, horizontal: 8),
//         decoration: BoxDecoration(
//           color: Colors.white,
//           borderRadius: BorderRadius.circular(5),
//           border: Border.all(color: Colors.grey.shade300, width: 1),
//         ),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             CircleAvatar(
//               radius: 22,
//               backgroundColor: Color(0xff03fc98).withOpacity(0.1),
//               child: Icon(
//                 icon,
//                 size: 26,
//                 color: Color(0xff02cc7b),
//               ),
//             ),
//              SizedBox(height: 10),
//             Text(
//               title,
//               style:  TextStyle(
//                 fontSize: 13,
//                 // fontWeight: FontWeight.w600,
//               ),
//               textAlign: TextAlign.center,
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
///
// import 'package:crmapp/annoucementpage.dart';
// import 'package:crmapp/crmpage.dart';
// import 'package:crmapp/document_page.dart';
// import 'package:crmapp/leave_Page.dart';
// import 'package:crmapp/note_page.dart';
// import 'package:crmapp/profile_page.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
//
// import 'Holiday_list.dart';
// import 'alarm.dart';
//
// class Homescreen extends StatefulWidget {
//   const Homescreen({super.key});
//
//   @override
//   State<Homescreen> createState() => _HomescreenState();
// }
//
// class _HomescreenState extends State<Homescreen> {
//   // Method to show attendance reminder bottom sheet
//   void _showAttendanceReminder() {
//     showModalBottomSheet(
//       context: context,
//       isScrollControlled: true,
//       backgroundColor: Colors.transparent,
//       builder: (context) => Container(
//         height: MediaQuery.of(context).size.height * 0.4,
//         decoration: BoxDecoration(
//           color: Colors.white,
//           borderRadius: BorderRadius.only(
//             topLeft: Radius.circular(20),
//             topRight: Radius.circular(20),
//           ),
//         ),
//         child: Padding(
//           padding:  EdgeInsets.all(20.0),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Center(
//                 child: Container(
//                   width: 40,
//                   height: 4,
//                   decoration: BoxDecoration(
//                     color: Colors.grey[300],
//                     borderRadius: BorderRadius.circular(2),
//                   ),
//                 ),
//               ),
//               SizedBox(height: 20),
//               Text(
//                 "Attendance Reminder",
//                 style: TextStyle(
//                   fontSize: 20,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//               SizedBox(height: 20),
//               _buildReminderCard("Punch In Reminder"),
//               SizedBox(height: 15),
//               _buildReminderCard("Punch Out Reminder"),
//               SizedBox(height: 20),
//               Text(
//                 "You will be notified via notification",
//                 style: TextStyle(
//                   fontSize: 14,
//                   color: Colors.grey[600],
//                 ),
//               ),
//               Spacer(),
//               SizedBox(
//                 width: double.infinity,
//                 child: ElevatedButton(
//                   onPressed: () {
//                     Navigator.pop(context);
//                   },
//                   style: ElevatedButton.styleFrom(
//                     backgroundColor: Color(0xff02cc7b),
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(8),
//                     ),
//                   ),
//                   child: Padding(
//                     padding:  EdgeInsets.all(12.0),
//                     child: Text(
//                       "Close",
//                       style: TextStyle(
//                         color: Colors.white,
//                         fontSize: 16,
//                       ),
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
//
//   Widget _buildReminderCard(String title) {
//     return Container(
//       width: double.infinity,
//       padding: EdgeInsets.all(16),
//       decoration: BoxDecoration(
//         color: Colors.grey[50],
//         borderRadius: BorderRadius.circular(8),
//         border: Border.all(color: Colors.grey[300]!),
//       ),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: [
//           Text(
//             title,
//             style: TextStyle(
//               fontSize: 16,
//               fontWeight: FontWeight.w500,
//             ),
//           ),
//           Transform.scale(
//             scale: 0.8,
//             child: CupertinoSwitch(
//               value: true, // You can manage this state as needed
//               onChanged: (bool value) {
//                 // Handle switch state change
//               },
//               activeColor: Color(0xff02cc7b),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
//
//   final List<Map<String, dynamic>> gridItems = [
//     {'icon': Icons.person_outline_sharp, 'title': 'Profile', 'page': ProfilePage()},
//     {'icon': Icons.calendar_today_outlined, 'title': 'view attendence', 'page': Crmpage()},
//     {'icon': Icons.announcement_outlined, 'title': 'anouncements', 'page': Annoucementpage()},
//     {'icon': Icons.timer_sharp, 'title': 'set Alarm', 'page': Annoucementpage()}, // This might also need fixing
//     {'icon': Icons.beach_access_outlined, 'title': 'request leave', 'page': LeaveRequestTabs()},
//     {'icon': Icons.handshake_outlined, 'title': 'CRM', 'page': Crmpage()},
//     {'icon': Icons.attach_money, 'title': 'Request Reimbursement', 'page': Crmpage()},
//     {'icon': Icons.event_note, 'title': 'Notes', 'page': NotePage()},
//     {'icon': Icons.calendar_today, 'title': 'Holiday List', 'page': HolidayListPage()},
//     {'icon': Icons.file_copy_outlined, 'title': 'My Documents', 'page': DocumentPage()},
//     {
//       'icon': Icons.notifications_outlined,
//       'title': 'Attendence Reminder',
//       'page': null, // Set to null since we'll handle this differently
//     },
//     {'icon': Icons.card_giftcard, 'title': 'Refer & Earn', 'page': Crmpage()},
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       extendBodyBehindAppBar: true,
//       backgroundColor: Colors.black,
//       body: Container(
//         color: Colors.black54,
//         child: SafeArea(
//           child: Column(
//             children: [
//               // ... rest of your existing UI code ...
//               Container(
//                 height: 220,
//                 width: double.infinity,
//                 color: Colors.white,
//                 child: Column(
//                   children: [
//                     SizedBox(height: 10),
//                     Row(
//                       children: [
//                         SizedBox(width: 10),
//                         Container(
//                           height: 40,
//                           width: 40,
//                           decoration: BoxDecoration(
//                             color: Colors.white,
//                             shape: BoxShape.circle,
//                             border: Border.all(color: Colors.grey.shade200, width: 1),
//                           ),
//                         ),
//                         SizedBox(width: 10),
//                         Text(
//                           'Flutter test pvt',
//                           style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
//                         ),
//                         Spacer(),
//                         Icon(Icons.notifications_none_outlined),
//                         SizedBox(width: 10),
//                         Icon(Icons.more_vert_rounded),
//                         SizedBox(width: 10),
//                       ],
//                     ),
//                     SizedBox(height: 20),
//                     InkWell(
//                       onTap: () {
//                         Navigator.push(
//                           context,
//                           MaterialPageRoute(builder: (context) => ProfilePage()),
//                         );
//                       },
//                       child: SizedBox(
//                         height: 100,
//                         width: 100,
//                         child: Stack(
//                           children: [
//                             Container(
//                               height: 100,
//                               width: 100,
//                               decoration: BoxDecoration(
//                                 border: Border.all(color: Colors.grey.shade200, width: 1),
//                                 shape: BoxShape.circle,
//                               ),
//                               child: Icon(Icons.person, size: 50, color: Colors.grey.shade400),
//                             ),
//                             Positioned(
//                               bottom: 0,
//                               right: 5,
//                               child: Container(
//                                 height: 30,
//                                 width: 30,
//                                 decoration: BoxDecoration(
//                                   color: Colors.greenAccent,
//                                   shape: BoxShape.circle,
//                                   border: Border.all(color: Colors.grey.shade200, width: 1),
//                                 ),
//                                 child: Icon(Icons.add_rounded, size: 28, color: Colors.white),
//                               ),
//                             )
//                           ],
//                         ),
//                       ),
//                     ),
//                     SizedBox(height: 10),
//                     Text(
//                       'Benson Saju',
//                       style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17, color: Colors.grey),
//                     )
//                   ],
//                 ),
//               ),
//               Expanded(
//                 child: Container(
//                   color: Colors.grey.shade100,
//                   child: Padding(
//                     padding: EdgeInsets.all(12.0),
//                     child: GridView.count(
//                       physics: AlwaysScrollableScrollPhysics(),
//                       crossAxisCount: 3,
//                       mainAxisSpacing: 6,
//                       crossAxisSpacing: 6,
//                       childAspectRatio: 0.99,
//                       children: gridItems.map((item) {
//                         return GridItem(
//                           icon: item['icon'],
//                           title: item['title'],
//                           onTap: () {
//                             if (item['title'] == 'Attendence Reminder') {
//                               _showAttendanceReminder(); // Show bottom sheet for attendance reminder
//                             } else if (item['page'] != null) {
//                               Navigator.push(
//                                 context,
//                                 MaterialPageRoute(builder: (_) => item['page']),
//                               );
//                             } else {
//                               ScaffoldMessenger.of(context).showSnackBar(
//                                 SnackBar(content: Text("Coming soon: ${item['title']}")),
//                               );
//                             }
//                           },
//                         );
//                       }).toList(),
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
//
// class GridItem extends StatelessWidget {
//   final IconData icon;
//   final String title;
//   final VoidCallback? onTap;
//
//   const GridItem({super.key, required this.icon, required this.title, required this.onTap});
//
//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: onTap,
//       child: Container(
//         padding: EdgeInsets.symmetric(vertical: 12, horizontal: 8),
//         decoration: BoxDecoration(
//           color: Colors.white,
//           borderRadius: BorderRadius.circular(5),
//           border: Border.all(color: Colors.grey.shade300, width: 1),
//         ),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             CircleAvatar(
//               radius: 22,
//               backgroundColor: Color(0xff03fc98).withOpacity(0.1),
//               child: Icon(
//                 icon,
//                 size: 26,
//                 color: Color(0xff02cc7b),
//               ),
//             ),
//             SizedBox(height: 10),
//             Text(
//               title,
//               style: TextStyle(
//                 fontSize: 13,
//               ),
//               textAlign: TextAlign.center,
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
///
// import 'package:crmapp/annoucementpage.dart';
// import 'package:crmapp/crmpage.dart';
// import 'package:crmapp/document_page.dart';
// import 'package:crmapp/leave_Page.dart';
// import 'package:crmapp/note_page.dart';
// import 'package:crmapp/profile_page.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
//
// import 'Holiday_list.dart';
// import 'alarm.dart';
// import 'attendence_show.dart';
//
// class Homescreen extends StatefulWidget {
//   const Homescreen({super.key});
//
//   @override
//   State<Homescreen> createState() => _HomescreenState();
// }
//
// class _HomescreenState extends State<Homescreen> {
//   // State for toggle buttons
//   bool _punchInReminder = true;
//   bool _punchOutReminder = true;
//
//   // Method to show attendance reminder bottom sheet
//   void _showAttendanceReminder() {
//     showModalBottomSheet(
//       context: context,
//       isScrollControlled: true,
//       backgroundColor: Colors.transparent,
//       builder: (context) => Container(
//         height: MediaQuery.of(context).size.height * 0.45, // Increased height to prevent overflow
//         decoration: BoxDecoration(
//           color: Colors.white,
//           borderRadius: BorderRadius.only(
//             topLeft: Radius.circular(20),
//             topRight: Radius.circular(20),
//           ),
//         ),
//         child: Padding(
//           padding: const EdgeInsets.all(20.0),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Center(
//                 child: Container(
//                   width: 40,
//                   height: 4,
//                   decoration: BoxDecoration(
//                     color: Colors.grey[300],
//                     borderRadius: BorderRadius.circular(2),
//                   ),
//                 ),
//               ),
//               SizedBox(height: 20),
//               Text(
//                 "Attendance Reminder",
//                 style: TextStyle(
//                   fontSize: 20,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//               SizedBox(height: 20),
//               _buildReminderCard("Punch In Reminder", _punchInReminder, (value) {
//                 setState(() {
//                   _punchInReminder = value;
//                 });
//               }),
//               SizedBox(height: 15),
//               _buildReminderCard("Punch Out Reminder", _punchOutReminder, (value) {
//                 setState(() {
//                   _punchOutReminder = value;
//                 });
//               }),
//               SizedBox(height: 15), // Reduced spacing
//               Text(
//                 "You will be notified via notification",
//                 style: TextStyle(
//                   fontSize: 14,
//                   color: Colors.grey[600],
//                 ),
//               ),
//               SizedBox(height: 20), // Added fixed spacing
//               SizedBox(
//                 width: double.infinity,
//                 child: ElevatedButton(
//                   onPressed: () {
//                     Navigator.pop(context);
//                   },
//                   style: ElevatedButton.styleFrom(
//                     backgroundColor: Color(0xff02cc7b),
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(8),
//                     ),
//                     padding: const EdgeInsets.all(16), // Consistent padding
//                   ),
//                   child: Text(
//                     "Close",
//                     style: TextStyle(
//                       color: Colors.white,
//                       fontSize: 16,
//                       fontWeight: FontWeight.w600,
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
//
//   Widget _buildReminderCard(String title, bool value, Function(bool) onChanged) {
//     return Container(
//       width: double.infinity,
//       padding: EdgeInsets.all(16),
//       decoration: BoxDecoration(
//         color: Colors.grey[50],
//         borderRadius: BorderRadius.circular(8),
//         border: Border.all(color: Colors.grey[300]!),
//       ),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: [
//           Text(
//             title,
//             style: TextStyle(
//               fontSize: 16,
//               fontWeight: FontWeight.w500,
//             ),
//           ),
//           Transform.scale(
//             scale: 0.8,
//             child: CupertinoSwitch(
//               value: value,
//               onChanged: onChanged,
//               activeColor: Color(0xff02cc7b),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
//
//   final List<Map<String, dynamic>> gridItems = [
//     {'icon': Icons.person_outline_sharp, 'title': 'Profile', 'page': ProfilePage()},
//     {'icon': Icons.calendar_today_outlined, 'title': 'view attendence', 'page': AttendancePage()},
//     {'icon': Icons.announcement_outlined, 'title': 'anouncements', 'page': Annoucementpage()},
//     {'icon': Icons.timer_sharp, 'title': 'set Alarm', 'page': Annoucementpage()}, // This might also need fixing
//     {'icon': Icons.beach_access_outlined, 'title': 'request leave', 'page': LeaveRequestTabs()},
//     {'icon': Icons.handshake_outlined, 'title': 'CRM', 'page': Crmpage()},
//     {'icon': Icons.attach_money, 'title': 'Request Reimbursement', 'page': Crmpage()},
//     {'icon': Icons.event_note, 'title': 'Notes', 'page': NotePage()},
//     {'icon': Icons.calendar_today, 'title': 'Holiday List', 'page': HolidayListPage()},
//     {'icon': Icons.file_copy_outlined, 'title': 'My Documents', 'page': DocumentPage()},
//     {
//       'icon': Icons.notifications_outlined,
//       'title': 'Attendence Reminder',
//       'page': null, // Set to null since we'll handle this differently
//     },
//     {'icon': Icons.card_giftcard, 'title': 'Refer & Earn', 'page': Crmpage()},
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       extendBodyBehindAppBar: true,
//       backgroundColor: Colors.black,
//       body: Container(
//         color: Colors.black54,
//         child: SafeArea(
//           child: Column(
//             children: [
//               Container(
//                 height: 220,
//                 width: double.infinity,
//                 color: Colors.white,
//                 child: Column(
//                   children: [
//                     SizedBox(height: 10),
//                     Row(
//                       children: [
//                         SizedBox(width: 10),
//                         Container(
//                           height: 40,
//                           width: 40,
//                           decoration: BoxDecoration(
//                             color: Colors.white,
//                             shape: BoxShape.circle,
//                             border: Border.all(color: Colors.grey.shade200, width: 1),
//                           ),
//                         ),
//                         SizedBox(width: 10),
//                         Text(
//                           'Flutter test pvt',
//                           style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
//                         ),
//                         Spacer(),
//                         Icon(Icons.notifications_none_outlined),
//                         SizedBox(width: 10),
//                         Icon(Icons.more_vert_rounded),
//                         SizedBox(width: 10),
//                       ],
//                     ),
//                     SizedBox(height: 20),
//                     InkWell(
//                       onTap: () {
//                         Navigator.push(
//                           context,
//                           MaterialPageRoute(builder: (context) => ProfilePage()),
//                         );
//                       },
//                       child: SizedBox(
//                         height: 100,
//                         width: 100,
//                         child: Stack(
//                           children: [
//                             Container(
//                               height: 100,
//                               width: 100,
//                               decoration: BoxDecoration(
//                                 border: Border.all(color: Colors.grey.shade200, width: 1),
//                                 shape: BoxShape.circle,
//                               ),
//                               child: Icon(Icons.person, size: 50, color: Colors.grey.shade400),
//                             ),
//                             Positioned(
//                               bottom: 0,
//                               right: 5,
//                               child: Container(
//                                 height: 30,
//                                 width: 30,
//                                 decoration: BoxDecoration(
//                                   color: Colors.greenAccent,
//                                   shape: BoxShape.circle,
//                                   border: Border.all(color: Colors.grey.shade200, width: 1),
//                                 ),
//                                 child: Icon(Icons.add_rounded, size: 28, color: Colors.white),
//                               ),
//                             )
//                           ],
//                         ),
//                       ),
//                     ),
//                     SizedBox(height: 10),
//                     Text(
//                       'Benson Saju',
//                       style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17, color: Colors.grey),
//                     )
//                   ],
//                 ),
//               ),
//               Expanded(
//                 child: Container(
//                   color: Colors.grey.shade100,
//                   child: Padding(
//                     padding: EdgeInsets.all(12.0),
//                     child: GridView.count(
//                       physics: AlwaysScrollableScrollPhysics(),
//                       crossAxisCount: 3,
//                       mainAxisSpacing: 6,
//                       crossAxisSpacing: 6,
//                       childAspectRatio: 0.99,
//                       children: gridItems.map((item) {
//                         return GridItem(
//                           icon: item['icon'],
//                           title: item['title'],
//                           onTap: () {
//                             if (item['title'] == 'Attendence Reminder') {
//                               _showAttendanceReminder(); // Show bottom sheet for attendance reminder
//                             } else if (item['page'] != null) {
//                               Navigator.push(
//                                 context,
//                                 MaterialPageRoute(builder: (_) => item['page']),
//                               );
//                             } else {
//                               ScaffoldMessenger.of(context).showSnackBar(
//                                 SnackBar(content: Text("Coming soon: ${item['title']}")),
//                               );
//                             }
//                           },
//                         );
//                       }).toList(),
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
//
// class GridItem extends StatelessWidget {
//   final IconData icon;
//   final String title;
//   final VoidCallback? onTap;
//
//   const GridItem({super.key, required this.icon, required this.title, required this.onTap});
//
//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: onTap,
//       child: Container(
//         padding: EdgeInsets.symmetric(vertical: 12, horizontal: 8),
//         decoration: BoxDecoration(
//           color: Colors.white,
//           borderRadius: BorderRadius.circular(5),
//           border: Border.all(color: Colors.grey.shade300, width: 1),
//         ),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             CircleAvatar(
//               radius: 22,
//               backgroundColor: Color(0xff03fc98).withOpacity(0.1),
//               child: Icon(
//                 icon,
//                 size: 26,
//                 color: Color(0xff02cc7b),
//               ),
//             ),
//             SizedBox(height: 10),
//             Text(
//               title,
//               style: TextStyle(
//                 fontSize: 13,
//               ),
//               textAlign: TextAlign.center,
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
///
// import 'package:crmapp/annoucementpage.dart';
// import 'package:crmapp/crmpage.dart';
// import 'package:crmapp/document_page.dart';
// import 'package:crmapp/leave_Page.dart';
// import 'package:crmapp/note_page.dart';
// import 'package:crmapp/notification.dart';
// import 'package:crmapp/profile_page.dart';
// import 'package:crmapp/refEarnpage.dart';
// import 'package:crmapp/reimbursement.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
//
// import 'Holiday_list.dart';
// import 'alarm.dart';
// import 'attendence_show.dart';
// import 'more_settings.dart';
//
// class Homescreen extends StatefulWidget {
//   const Homescreen({super.key});
//
//   @override
//   State<Homescreen> createState() => _HomescreenState();
// }
//
// class _HomescreenState extends State<Homescreen> {
//   // State for toggle buttons
//   bool _punchInReminder = true;
//   bool _punchOutReminder = true;
//
//   // Method to show attendance reminder bottom sheet
//   void _showAttendanceReminder() {
//     showModalBottomSheet(
//       context: context,
//       isScrollControlled: true,
//       backgroundColor: Colors.transparent,
//       builder: (context) => StatefulBuilder(
//         builder: (BuildContext context, StateSetter setSheetState) {
//           return Container(
//             height: MediaQuery.of(context).size.height * 0.45,
//             decoration: BoxDecoration(
//               color: Colors.white,
//               borderRadius: BorderRadius.only(
//                 topLeft: Radius.circular(20),
//                 topRight: Radius.circular(20),
//               ),
//             ),
//             child: Padding(
//               padding: const EdgeInsets.all(20.0),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Center(
//                     child: Container(
//                       width: 40,
//                       height: 4,
//                       decoration: BoxDecoration(
//                         color: Colors.grey[300],
//                         borderRadius: BorderRadius.circular(2),
//                       ),
//                     ),
//                   ),
//                   SizedBox(height: 20),
//                   Text(
//                     "Attendance Reminder",
//                     style: TextStyle(
//                       fontSize: 20,
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                   SizedBox(height: 20),
//                   _buildReminderCard(
//                     "Punch In Reminder",
//                     _punchInReminder,
//                         (value) {
//                       setSheetState(() {
//                         _punchInReminder = value;
//                       });
//                     },
//                     setSheetState,
//                   ),
//                   SizedBox(height: 15),
//                   _buildReminderCard(
//                     "Punch Out Reminder",
//                     _punchOutReminder,
//                         (value) {
//                       setSheetState(() {
//                         _punchOutReminder = value;
//                       });
//                     },
//                     setSheetState,
//                   ),
//                   SizedBox(height: 15),
//                   Text(
//                     "You will be notified via notification",
//                     style: TextStyle(
//                       fontSize: 14,
//                       color: Colors.grey[600],
//                     ),
//                   ),
//                   SizedBox(height: 20),
//                   SizedBox(
//                     width: double.infinity,
//                     child: ElevatedButton(
//                       onPressed: () {
//                         Navigator.pop(context);
//                       },
//                       style: ElevatedButton.styleFrom(
//                         backgroundColor: Color(0xff02cc7b),
//                         shape: RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(8),
//                         ),
//                         padding: const EdgeInsets.all(16),
//                       ),
//                       child: Text(
//                         "Close",
//                         style: TextStyle(
//                           color: Colors.white,
//                           fontSize: 16,
//                           fontWeight: FontWeight.w600,
//                         ),
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           );
//         },
//       ),
//     );
//   }
//
//   Widget _buildReminderCard(String title, bool value, Function(bool) onChanged, StateSetter setSheetState) {
//     return Container(
//       width: double.infinity,
//       padding: EdgeInsets.all(16),
//       decoration: BoxDecoration(
//         color: Colors.grey[50],
//         borderRadius: BorderRadius.circular(8),
//         border: Border.all(color: Colors.grey[300]!),
//       ),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: [
//           Text(
//             title,
//             style: TextStyle(
//               fontSize: 16,
//               fontWeight: FontWeight.w500,
//             ),
//           ),
//           Transform.scale(
//             scale: 0.8,
//             child: CupertinoSwitch(
//               value: value,
//               onChanged: onChanged,
//               activeColor: Color(0xff02cc7b),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
//
//   final List<Map<String, dynamic>> gridItems = [
//     {'icon': Icons.person_outline_sharp, 'title': 'Profile', 'page': ProfilePage()},
//     {'icon': Icons.calendar_today_outlined, 'title': 'view attendence', 'page': AttendancePage()},
//     {'icon': Icons.announcement_outlined, 'title': 'anouncements', 'page': Annoucementpage()},
//     {'icon': Icons.timer_sharp, 'title': 'set Alarm', 'page': Annoucementpage()},
//     {'icon': Icons.beach_access_outlined, 'title': 'request leave', 'page': LeaveRequestTabs()},
//     {'icon': Icons.handshake_outlined, 'title': 'CRM', 'page': Crmpage()},
//     {'icon': Icons.attach_money, 'title': 'Request Reimbursement', 'page': Reimbursement()},
//     {'icon': Icons.event_note, 'title': 'Notes', 'page': NotePage()},
//     {'icon': Icons.calendar_today, 'title': 'Holiday List', 'page': HolidayListPage()},
//     {'icon': Icons.file_copy_outlined, 'title': 'My Documents', 'page': DocumentPage()},
//     {
//       'icon': Icons.notifications_outlined,
//       'title': 'Attendence Reminder',
//       'page': null,
//     },
//     {'icon': Icons.card_giftcard, 'title': 'Refer & Earn', 'page': ReferAndEarnPage()},
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       extendBodyBehindAppBar: true,
//       backgroundColor: Colors.black,
//       body: Container(
//         color: Colors.black54,
//         child: SafeArea(
//           child: Column(
//             children: [
//               Container(
//                 height: 220,
//                 width: double.infinity,
//                 color: Colors.white,
//                 child: Column(
//                   children: [
//                     SizedBox(height: 10),
//                     Row(
//                       children: [
//                         SizedBox(width: 10),
//                         Container(
//                           height: 40,
//                           width: 40,
//                           decoration: BoxDecoration(
//                             color: Colors.white,
//                             shape: BoxShape.circle,
//                             border: Border.all(color: Colors.grey.shade200, width: 1),
//                           ),
//                         ),
//                         SizedBox(width: 10),
//                         Text(
//                           'Flutter test pvt',
//                           style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
//                         ),
//                         Spacer(),
//                         IconButton(onPressed: (){
//                           Navigator.push(context, MaterialPageRoute(builder: (context) => Notification_page(),));
//                         }, icon: Icon(Icons.notifications_none_outlined),),
//                         SizedBox(width: 10),
//                         IconButton(onPressed: (){
//                           Navigator.push(context, MaterialPageRoute(builder: (context) => MoreSettingsPage(),));
//                         }, icon: Icon(Icons.more_vert_rounded),),
//                         SizedBox(width: 10),
//                       ],
//                     ),
//                     SizedBox(height: 20),
//                     InkWell(
//                       onTap: () {
//                         Navigator.push(
//                           context,
//                           MaterialPageRoute(builder: (context) => ProfilePage()),
//                         );
//                       },
//                       child: SizedBox(
//                         height: 100,
//                         width: 100,
//                         child: Stack(
//                           children: [
//                             Container(
//                               height: 100,
//                               width: 100,
//                               decoration: BoxDecoration(
//                                 border: Border.all(color: Colors.grey.shade200, width: 1),
//                                 shape: BoxShape.circle,
//                               ),
//                               child: Icon(Icons.person, size: 50, color: Colors.grey.shade400),
//                             ),
//                             Positioned(
//                               bottom: 0,
//                               right: 5,
//                               child: Container(
//                                 height: 30,
//                                 width: 30,
//                                 decoration: BoxDecoration(
//                                   color: Colors.greenAccent,
//                                   shape: BoxShape.circle,
//                                   border: Border.all(color: Colors.grey.shade200, width: 1),
//                                 ),
//                                 child: Icon(Icons.add_rounded, size: 28, color: Colors.white),
//                               ),
//                             )
//                           ],
//                         ),
//                       ),
//                     ),
//                     SizedBox(height: 10),
//                     Text(
//                       'Benson Saju',
//                       style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17, color: Colors.grey),
//                     )
//                   ],
//                 ),
//               ),
//               Expanded(
//                 child: Container(
//                   color: Colors.grey.shade100,
//                   child: Padding(
//                     padding: EdgeInsets.all(12.0),
//                     child: GridView.count(
//                       physics: AlwaysScrollableScrollPhysics(),
//                       crossAxisCount: 3,
//                       mainAxisSpacing: 6,
//                       crossAxisSpacing: 6,
//                       childAspectRatio: 0.99,
//                       children: gridItems.map((item) {
//                         return GridItem(
//                           icon: item['icon'],
//                           title: item['title'],
//                           onTap: () {
//                             if (item['title'] == 'Attendence Reminder') {
//                               _showAttendanceReminder();
//                             } else if (item['page'] != null) {
//                               Navigator.push(
//                                 context,
//                                 MaterialPageRoute(builder: (_) => item['page']),
//                               );
//                             } else {
//                               ScaffoldMessenger.of(context).showSnackBar(
//                                 SnackBar(content: Text("Coming soon: ${item['title']}")),
//                               );
//                             }
//                           },
//                         );
//                       }).toList(),
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
//
// class GridItem extends StatelessWidget {
//   final IconData icon;
//   final String title;
//   final VoidCallback? onTap;
//
//   const GridItem({super.key, required this.icon, required this.title, required this.onTap});
//
//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: onTap,
//       child: Container(
//         padding: EdgeInsets.symmetric(vertical: 12, horizontal: 8),
//         decoration: BoxDecoration(
//           color: Colors.white,
//           borderRadius: BorderRadius.circular(5),
//           border: Border.all(color: Colors.grey.shade300, width: 1),
//         ),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             CircleAvatar(
//               radius: 22,
//               backgroundColor: Color(0xff03fc98).withOpacity(0.1),
//               child: Icon(
//                 icon,
//                 size: 26,
//                 color: Color(0xff02cc7b),
//               ),
//             ),
//             SizedBox(height: 10),
//             Text(
//               title,
//               style: TextStyle(
//                 fontSize: 13,
//               ),
//               textAlign: TextAlign.center,
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
import 'package:crmapp/annoucementpage.dart';
import 'package:crmapp/crmpage.dart';
import 'package:crmapp/document_page.dart';
import 'package:crmapp/leave_Page.dart';
import 'package:crmapp/more_settings.dart';
import 'package:crmapp/note_page.dart';
import 'package:crmapp/notification.dart';
import 'package:crmapp/profile_page.dart';
import 'package:crmapp/refEarnpage.dart';
import 'package:crmapp/reimbursement.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Holiday_list.dart';
import 'attendence_show.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  // Attendance reminder toggles
  bool _punchInReminder = true;
  bool _punchOutReminder = true;

  // Alarm times
  TimeOfDay? punchInTime;
  TimeOfDay? punchOutTime;

  // Attendance reminder bottom sheet
  void _showAttendanceReminder() {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (context) => StatefulBuilder(
        builder: (BuildContext context, StateSetter setSheetState) {
          return Container(
            height: MediaQuery.of(context).size.height * 0.52,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Container(
                      width: 40,
                      height: 4,
                      decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(2),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    "Attendance Reminder",
                    style:  GoogleFonts.gabarito(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 20),
                  _buildReminderCard(
                    "Punch In Reminder",
                    _punchInReminder,
                        (value) {
                      setSheetState(() {
                        _punchInReminder = value;
                      });
                    },
                    setSheetState,
                  ),
                  SizedBox(height: 15),
                  _buildReminderCard(
                    "Punch Out Reminder",
                    _punchOutReminder,
                        (value) {
                      setSheetState(() {
                        _punchOutReminder = value;
                      });
                    },
                    setSheetState,
                  ),
                  SizedBox(height: 15),
                  Text(
                    "You will be notified via notification",
                    style:  GoogleFonts.gabarito(
                      fontSize: 14,
                      color: Colors.grey[600],
                    ),
                  ),
                  SizedBox(height: 20),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xff02cc7b),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        padding: const EdgeInsets.all(16),
                      ),
                      child: Text(
                        "Close",
                        style:  GoogleFonts.gabarito(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  Widget _buildReminderCard(
      String title, bool value, Function(bool) onChanged, StateSetter setSheetState) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.grey[50],
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Colors.grey[300]!),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style:  GoogleFonts.gabarito(
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
          Transform.scale(
            scale: 0.8,
            child: CupertinoSwitch(
              value: value,
              onChanged: onChanged,
              activeColor: Color(0xff02cc7b),
            ),
          ),
        ],
      ),
    );
  }

  // Alarm Bottom Sheet
  void _showAlarmBottomSheet() {
    showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (context) {
        return StatefulBuilder(
          builder: (context, setState) {
            return Container(
              padding: const EdgeInsets.all(16),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Container(
                      width: 40,
                      height: 4,
                      decoration: BoxDecoration(
                        color: Colors.grey[400],
                        borderRadius: BorderRadius.circular(2),
                      ),
                    ),
                  ),
                    SizedBox(height: 16),
                    Text("Alarms",
                      style:  GoogleFonts.gabarito(fontSize: 18, fontWeight: FontWeight.bold)),
                    Text("You can set multiple alarms",
                      style:  GoogleFonts.gabarito(color: Colors.grey)),
                    SizedBox(height: 20),

                  // Punch In
                  ListTile(
                    title:   Text("Punch In Alarm",
                        style:  GoogleFonts.gabarito(fontWeight: FontWeight.w600)),
                    trailing: Text(
                      punchInTime != null ? punchInTime!.format(context) : "Not set",
                      style:  GoogleFonts.gabarito(color: Colors.grey[600]),
                    ),
                    onTap: () async {
                      final picked = await _showCustomTimePicker(true);
                      if (picked != null) {
                        setState(() {
                          punchInTime = picked;
                        });
                      }
                    },
                  ),

                  // Punch Out
                  ListTile(
                    title:   Text("Punch Out Alarm",
                        style:  GoogleFonts.gabarito(fontWeight: FontWeight.w600)),
                    trailing: Text(
                      punchOutTime != null ? punchOutTime!.format(context) : "Not set",
                      style:  GoogleFonts.gabarito(color: Colors.grey[600]),
                    ),
                    onTap: () async {
                      final picked = await _showCustomTimePicker(false);
                      if (picked != null) {
                        setState(() {
                          punchOutTime = picked;
                        });
                      }
                    },
                  ),
                  const SizedBox(height: 10),
                ],
              ),
            );
          },
        );
      },
    );
  }

  Future<TimeOfDay?> _showCustomTimePicker(bool isPunchIn) async {
    TimeOfDay selectedTime = TimeOfDay.now();

    return await showModalBottomSheet<TimeOfDay>(
      context: context,
      isScrollControlled: true,
      shape:   RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (context) {
        return StatefulBuilder(
          builder: (context, setState) {
            return Container(
              padding:  EdgeInsets.all(16),
              height: 300,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Header
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                        Text(
                        "Set alarm",
                        style:  GoogleFonts.gabarito(fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      IconButton(
                        icon: const Icon(Icons.close),
                        onPressed: () => Navigator.pop(context),
                      ),
                    ],
                  ),
                    Text(
                    "Set an alarm to mark daily attendance",
                    style:  GoogleFonts.gabarito(color: Colors.grey),
                  ),
                    SizedBox(height: 10),

                  // Cupertino picker
                  Expanded(
                    child: CupertinoDatePicker(
                      mode: CupertinoDatePickerMode.time,
                      initialDateTime: DateTime.now(),
                      use24hFormat: false,
                      onDateTimeChanged: (DateTime newDateTime) {
                        setState(() {
                          selectedTime = TimeOfDay.fromDateTime(newDateTime);
                        });
                      },
                    ),
                  ),

                  // Button
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.teal,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      onPressed: () {
                        Navigator.pop(context, selectedTime);
                      },
                      child: const Text("Set Alarm"),
                    ),
                  )
                ],
              ),
            );
          },
        );
      },
    );
  }

  final List<Map<String, dynamic>> gridItems = [
    {'icon': Icons.person_outline_sharp, 'title': 'Profile', 'page': ProfilePage()},
    {'icon': Icons.calendar_today_outlined, 'title': 'view attendence', 'page': AttendancePage()},
    {'icon': Icons.announcement_outlined, 'title': 'anouncements', 'page': Annoucementpage()},
    {'icon': Icons.timer_sharp, 'title': 'set Alarm', 'page': null}, // Alarm added here
    {'icon': Icons.beach_access_outlined, 'title': 'request leave', 'page': LeaveRequestTabs()},
    {'icon': Icons.handshake_outlined, 'title': 'CRM', 'page': Crmpage()},
    {'icon': Icons.attach_money, 'title': 'Request Reimbursement', 'page': Reimbursement()},
    {'icon': Icons.event_note, 'title': 'Notes', 'page': NotePage()},
    {'icon': Icons.calendar_today, 'title': 'Holiday List', 'page': HolidayListPage()},
    {'icon': Icons.file_copy_outlined, 'title': 'My Documents', 'page': DocumentPage()},
    {'icon': Icons.notifications_outlined, 'title': 'Attendence Reminder', 'page': null},
    {'icon': Icons.card_giftcard, 'title': 'Refer & Earn', 'page': ReferAndEarnPage()},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.black,
      body: Container(
        color: Colors.black54,
        child: SafeArea(
          child: Column(
            children: [
              Container(
                height: 220,
                width: double.infinity,
                color: Colors.white,
                child: Column(
                  children: [
                    SizedBox(height: 10),
                    Row(
                      children: [
                        SizedBox(width: 10),
                        Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            color: Colors.yellow,
                            shape: BoxShape.circle,

                            border: Border.all(color: Colors.grey.shade200, width: 1),
                          ),
                          child:
                          Center(child: Text('F',style:  GoogleFonts.gabarito(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 28))),
                        ),
                        SizedBox(width: 10),
                        Text(
                          'Flutter test pvt',
                          style:  GoogleFonts.gabarito(fontSize: 17, fontWeight: FontWeight.bold),
                        ),
                        Spacer(),
                        IconButton(onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => Notification_page(),));
                        }, icon: Icon(Icons.notifications_none_outlined)),
                        // SizedBox(width: 5),
                        IconButton(onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => MoreSettingsPage(),));
                        }, icon: Icon(Icons.more_vert)),
                        SizedBox(width: 10),
                      ],
                    ),
                    SizedBox(height: 20),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => ProfilePage()),
                        );
                      },
                      child: SizedBox(
                        height: 100,
                        width: 100,
                        child: Stack(
                          children: [
                            Container(
                              height: 100,
                              width: 100,
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey.shade200, width: 1),
                                shape: BoxShape.circle,
                              ),
                              child: Icon(Icons.person, size: 50, color: Colors.grey.shade400),
                            ),
                            Positioned(
                              bottom: 0,
                              right: 5,
                              child: Container(
                                height: 30,
                                width: 30,
                                decoration: BoxDecoration(
                                  color: Colors.greenAccent,
                                  shape: BoxShape.circle,
                                  border: Border.all(color: Colors.grey.shade200, width: 1),
                                ),
                                child: Icon(Icons.add_rounded, size: 28, color: Colors.white),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Benson Saju',
                      style:  GoogleFonts.gabarito(fontWeight: FontWeight.bold, fontSize: 17, color: Colors.grey),
                    )
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.grey.shade100,
                  child: Padding(
                    padding: EdgeInsets.all(12.0),
                    child: GridView.count(
                      physics: AlwaysScrollableScrollPhysics(),
                      crossAxisCount: 3,
                      mainAxisSpacing: 6,
                      crossAxisSpacing: 6,
                      childAspectRatio: 0.99,
                      children: gridItems.map((item) {
                        return GridItem(
                          icon: item['icon'],
                          title: item['title'],
                          onTap: () {
                            if (item['title'] == 'Attendence Reminder') {
                              _showAttendanceReminder();
                            } else if (item['title'] == 'set Alarm') {
                              _showAlarmBottomSheet();
                            } else if (item['page'] != null) {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (_) => item['page']),
                              );
                            } else {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(content: Text("Coming soon: ${item['title']}")),
                              );
                            }
                          },
                        );
                      }).toList(),
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

class GridItem extends StatelessWidget {
  final IconData icon;
  final String title;
  final VoidCallback? onTap;

  const GridItem({super.key, required this.icon, required this.title, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 12, horizontal: 8),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(5),
          border: Border.all(color: Colors.grey.shade300, width: 1),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 22,
              backgroundColor: Color(0xff03fc98).withOpacity(0.1),
              child: Icon(
                icon,
                size: 26,
                color: Color(0xff02cc7b),
              ),
            ),
            SizedBox(height: 10),
            Text(
              title,
              style:  GoogleFonts.gabarito(
                  fontSize: 14,height: 1
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}