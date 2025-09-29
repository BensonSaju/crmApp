// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
//
// class Homescreen extends StatefulWidget {
//   const Homescreen({super.key});
//
//   @override
//   State<Homescreen> createState() => _HomescreenState();
// }
//
// class _HomescreenState extends State<Homescreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: Column(
//           children: [
//             // 🔹 Header section
//             Container(
//               height: 220,
//               width: double.infinity,
//               color: Colors.blue,
//               child: Column(
//                 children: [
//                   Row(
//                     children: [
//                        SizedBox(width: 10),
//                       Container(
//                         height: 40,
//                         width: 40,
//                         decoration: BoxDecoration(
//                           color: Colors.white,
//                           shape: BoxShape.circle,
//                           border: Border.all(color: Colors.grey, width: 1),
//                         ),
//                       ),
//                        SizedBox(width: 10),
//                        Text(
//                         'Flutter test pvt',
//                         style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
//                       ),
//                        Spacer(),
//                       const Icon(Icons.notifications_none_outlined),
//                       const SizedBox(width: 10),
//                       const Icon(Icons.more_vert_rounded),
//                       const SizedBox(width: 10),
//                     ],
//                   ),
//                    SizedBox(height: 20),
//                   SizedBox(
//                     height: 100,
//                     width: 100,
//                     child: Stack(
//                       children: [
//                         const CircleAvatar(
//                           radius: 50,
//                           backgroundColor: Colors.white,
//                         ),
//                         Positioned(
//                           bottom: 0,
//                           right: 5,
//                           child: Container(
//                             height: 30,
//                             width: 30,
//                             decoration: BoxDecoration(
//                               color: Colors.greenAccent,
//                               shape: BoxShape.circle,
//                               border: Border.all(color: Colors.grey.shade200, width: 1),
//                             ),
//                             child: const Icon(Icons.add_rounded, size: 28, color: Colors.white),
//                           ),
//                         )
//                       ],
//                     ),
//                   ),
//                   const SizedBox(height: 10),
//                   const Text(
//                     'Benson Saju',
//                     style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
//                   )
//                 ],
//               ),
//             ),
//
//
//             Expanded(
//               child: Padding(
//                 padding:  EdgeInsets.all(12.0),
//                 child: GridView.count(
//                   physics:  NeverScrollableScrollPhysics(),
//                   shrinkWrap: true,
//                   crossAxisCount: 3,
//                   mainAxisSpacing: 6,
//                   crossAxisSpacing: 6,
//                   childAspectRatio: .99,
//                   children: List.generate(12, (index) {
//                     return Container(
//                       padding:  EdgeInsets.symmetric(vertical: 12, horizontal: 8),
//                       decoration: BoxDecoration(
//                         color: Colors.white,
//                         borderRadius: BorderRadius.circular(5),
//                         border: Border.all(color: Colors.grey.shade300, width: 1.2),
//                       ),
//                       child: Column(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: [
//                           CircleAvatar(
//                             radius: 26,
//                             backgroundColor: Colors.blue.shade50,
//                             child: Icon(
//                               Icons.star,
//                               size: 26,
//                               color: Colors.blue.shade700,
//                             ),
//                           ),
//                           const SizedBox(height: 10),
//                           Text(
//                             "Item ${index + 1}",
//                             style: const TextStyle(
//                               fontSize: 13,
//                               fontWeight: FontWeight.w600,
//                             ),
//                           ),
//                         ],
//                       ),
//                     );
//                   }),
//                 ),
//               ),
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
import 'package:crmapp/note_page.dart';
import 'package:crmapp/profile_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Holiday_list.dart';
import 'alarm.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {

  final List<Map<String, dynamic>> gridItems = [
    {'icon': Icons.person_outline_sharp, 'title': 'Profile','page':ProfilePage()},
    {'icon': Icons.calendar_today_outlined, 'title': 'view attendence','page':Crmpage()},
    {'icon': Icons.announcement_outlined, 'title': 'anouncements','page':Annoucementpage()},
    {'icon': Icons.timer_sharp, 'title': 'set Alarm','page':Annoucementpage()},
    {'icon': Icons.beach_access_outlined, 'title': 'request leave','page':LeaveRequestTabs()},
    {'icon': Icons.handshake_outlined, 'title': 'CRM','page':Crmpage()},
    {'icon': Icons.attach_money, 'title': 'Request Reimbursement','page':Crmpage()},
    {'icon': Icons.event_note, 'title': 'Notes','page':NotePage()},
    {'icon': Icons.calendar_today, 'title': 'Holiday List','page':HolidayListPage()},
    {'icon': Icons.file_copy_outlined, 'title': 'My Documents','page':DocumentPage()},
    {'icon': Icons.notifications_outlined, 'title': 'Attendence Reminder','page':Crmpage()},
    {'icon': Icons.card_giftcard, 'title': 'Refer & Earn','page':Crmpage()},
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
                    SizedBox(height: 10,),
                    Row(
                      children: [
                         SizedBox(width: 10),
                        Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                            border: Border.all(color: Colors.grey.shade200, width: 1),
                          ),
                        ),
                          SizedBox(width: 10),
                         Text(
                          'Flutter test pvt',
                          style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                        ),
                          Spacer(),
                          Icon(Icons.notifications_none_outlined),
                          SizedBox(width: 10),
                          Icon(Icons.more_vert_rounded),
                          SizedBox(width: 10),
                      ],
                    ),
                     SizedBox(height: 20),
                    InkWell(onTap:() {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ProfilePage()),
                      );
                    } ,
                      child: SizedBox(
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
                                child:  Icon(Icons.add_rounded, size: 28, color: Colors.white),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                     SizedBox(height: 10),
                     Text(
                      'Benson Saju',
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17,color: Colors.grey),
                    )
                  ],
                ),
              ),

              Expanded(
                child: Container(
                  color: Colors.grey.shade100,
                  child: Padding(
                    padding:  EdgeInsets.all(12.0),
                    child: GridView.count(
                      physics:  AlwaysScrollableScrollPhysics(),
                      // shrinkWrap: true,
                      crossAxisCount: 3,
                      mainAxisSpacing: 6,
                      crossAxisSpacing: 6,
                      childAspectRatio: 0.99,
                      children: gridItems.map((item) {
                        return GridItem(
                          icon: item['icon'],
                          title: item['title'],
                          onTap: () {
                            if (item['page'] != null) {
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


  const GridItem({super.key, required this.icon, required this.title,required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding:  EdgeInsets.symmetric(vertical: 12, horizontal: 8),
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
              style:  TextStyle(
                fontSize: 13,
                // fontWeight: FontWeight.w600,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
