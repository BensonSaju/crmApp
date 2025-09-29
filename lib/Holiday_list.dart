// import 'package:flutter/material.dart';
//
//
//
//
// class HolidayListPage extends StatefulWidget {
//   @override
//   _HolidayListPageState createState() => _HolidayListPageState();
// }
//
// class _HolidayListPageState extends State<HolidayListPage> {
//   String selectedYear = '2025';
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         color: Colors.black,
//         child: SafeArea(
//           child: Column(
//             children: [
//               // Top Container instead of AppBar
//               Container(
//                 padding: EdgeInsets.all(16.0),
//                 color: Colors.grey[850],
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     IconButton(
//                       icon: Icon(Icons.arrow_back, color: Colors.white),
//                       onPressed: () {},
//                     ),
//                     Text(
//                       'Holiday List',
//                       style: TextStyle(color: Colors.white, fontSize: 18),
//                     ),
//                     GestureDetector(
//                       onTap: () {
//                         _showYearPicker(context);
//                       },
//                       child: Row(
//                         children: [
//                           Text(
//                             selectedYear,
//                             style: TextStyle(color: Colors.white),
//                           ),
//                           Icon(Icons.calendar_today, color: Colors.white),
//                         ],
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//               // Main content
//               Expanded(
//                 child: Container(
//                   color: Colors.white,
//                   width: double.infinity,
//                   child: Center(
//                     child: Text(
//                       'No holidays added\nNo holidays have been added by admin.',
//                       textAlign: TextAlign.center,
//                       style: TextStyle(color: Colors.grey),
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
//   void _showYearPicker(BuildContext context) {
//     showDialog(
//       context: context,
//       builder: (BuildContext context) {
//         return AlertDialog(
//           title: Text('Select Year'),
//           content: SingleChildScrollView(
//             child: Column(
//               mainAxisSize: MainAxisSize.min,
//               children: [
//                 ListTile(
//                   title: Text('2021'),
//                   onTap: () {
//                     setState(() {
//                       selectedYear = '2021';
//                     });
//                     Navigator.pop(context);
//                   },
//                 ),
//                 ListTile(
//                   title: Text('2022'),
//                   onTap: () {
//                     setState(() {
//                       selectedYear = '2022';
//                     });
//                     Navigator.pop(context);
//                   },
//                 ),
//                 ListTile(
//                   title: Text('2023'),
//                   onTap: () {
//                     setState(() {
//                       selectedYear = '2023';
//                     });
//                     Navigator.pop(context);
//                   },
//                 ),
//                 ListTile(
//                   title: Text('2024'),
//                   onTap: () {
//                     setState(() {
//                       selectedYear = '2024';
//                     });
//                     Navigator.pop(context);
//                   },
//                 ),
//                 ListTile(
//                   title: Text('2025'),
//                   onTap: () {
//                     setState(() {
//                       selectedYear = '2025';
//                     });
//                     Navigator.pop(context);
//                   },
//                 ),
//               ],
//             ),
//           ),
//           actions: [
//             TextButton(
//               child: Text('CANCEL'),
//               onPressed: () {
//                 Navigator.pop(context);
//               },
//             ),
//             TextButton(
//               child: Text('OK'),
//               onPressed: () {
//                 Navigator.pop(context);
//               },
//             ),
//           ],
//         );
//       },
//     );
//   }
// }
///....
// import 'package:flutter/material.dart';
// import 'package:flutter/cupertino.dart'; // For CupertinoPicker
//
// class HolidayListPage extends StatefulWidget {
//   @override
//   _HolidayListPageState createState() => _HolidayListPageState();
// }
//
// class _HolidayListPageState extends State<HolidayListPage> {
//   String selectedYear = '2025';
//   final List<String> years = ['2021', '2022', '2023', '2024', '2025'];
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         color: Colors.black,
//         child: SafeArea(
//           child: Column(
//             children: [
//               // Top Container instead of AppBar
//               Container(
//                 padding: EdgeInsets.all(16.0),
//                 color: Colors.grey[850],
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     IconButton(
//                       icon: Icon(Icons.arrow_back, color: Colors.white),
//                       onPressed: () {},
//                     ),
//                     Text(
//                       'Holiday List',
//                       style: TextStyle(color: Colors.white, fontSize: 18),
//                     ),
//                     GestureDetector(
//                       onTap: () {
//                         _showYearPicker(context);
//                       },
//                       child: Row(
//                         children: [
//                           Text(
//                             selectedYear,
//                             style: TextStyle(color: Colors.white),
//                           ),
//                           Icon(Icons.calendar_today, color: Colors.white),
//                         ],
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//               // Main content
//               Expanded(
//                 child: Container(
//                   color: Colors.white,
//                   width: double.infinity,
//                   child: Center(
//                     child: Text(
//                       'No holidays added\nNo holidays have been added by admin.',
//                       textAlign: TextAlign.center,
//                       style: TextStyle(color: Colors.grey),
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
//   void _showYearPicker(BuildContext context) {
//     showModalBottomSheet(
//       context: context,
//       builder: (BuildContext context) {
//         return Container(
//           height: 250,
//           color: Colors.white,
//           child: Column(
//             children: [
//               Expanded(
//                 child: CupertinoPicker(
//                   backgroundColor: Colors.white,
//                   itemExtent: 40,
//                   scrollController: FixedExtentScrollController(
//                     initialItem: years.indexOf(selectedYear),
//                   ),
//                   children: years.map((String year) {
//                     return Center(
//                       child: Text(
//                         year,
//                         style: TextStyle(
//                           fontSize: 20,
//                           color: year == selectedYear
//                               ? Color(0xFF00C4B4) // Teal color from the image
//                               : Colors.black,
//                         ),
//                       ),
//                     );
//                   }).toList(),
//                   onSelectedItemChanged: (int index) {
//                     setState(() {
//                       selectedYear = years[index];
//                     });
//                   },
//                 ),
//               ),
//               Container(
//                 color: Colors.grey[300],
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                   children: [
//                     TextButton(
//                       child: Text('CANCEL', style: TextStyle(color: Colors.black)),
//                       onPressed: () {
//                         Navigator.pop(context);
//                       },
//                     ),
//                     TextButton(
//                       child: Text('OK', style: TextStyle(color: Colors.black)),
//                       onPressed: () {
//                         Navigator.pop(context);
//                       },
//                     ),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         );
//       },
//     );
//   }
// }
///...
// import 'package:flutter/material.dart';
//
// class HolidayListPage extends StatefulWidget {
//   @override
//   _HolidayListPageState createState() => _HolidayListPageState();
// }
//
// class _HolidayListPageState extends State<HolidayListPage> {
//   String selectedYear = '2025';
//   final List<String> years = ['2021', '2022', '2023', '2024', '2025'];
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         color: Colors.black,
//         child: SafeArea(
//           child: Column(
//             children: [
//               // Top Container instead of AppBar
//               Container(
//                 padding: EdgeInsets.all(16.0),
//                 color: Colors.grey[850],
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     IconButton(
//                       icon: Icon(Icons.arrow_back, color: Colors.white),
//                       onPressed: () {},
//                     ),
//                     Text(
//                       'Holiday List',
//                       style: TextStyle(color: Colors.white, fontSize: 18),
//                     ),
//                     GestureDetector(
//                       onTap: () {
//                         _showYearPicker(context);
//                       },
//                       child: Row(
//                         children: [
//                           Text(
//                             selectedYear,
//                             style: TextStyle(color: Colors.white),
//                           ),
//                           SizedBox(width: 6),
//                           Icon(Icons.calendar_today, color: Colors.white),
//                         ],
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//               // Main content
//               Expanded(
//                 child: Container(
//                   color: Colors.white,
//                   width: double.infinity,
//                   child: Center(
//                     child: Text(
//                       'No holidays added\nNo holidays have been added by admin.',
//                       textAlign: TextAlign.center,
//                       style: TextStyle(color: Colors.grey),
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
//   void _showYearPicker(BuildContext context) {
//     String tempSelectedYear = selectedYear;
//
//     showDialog(
//       context: context,
//       builder: (BuildContext context) {
//         return Dialog(
//           shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
//           child: Container(
//             height: 320,
//             child: Column(
//               children: [
//                 // Header
//                 Container(
//                   padding: EdgeInsets.all(16),
//                   width: double.infinity,
//                   decoration: BoxDecoration(
//                     color: Color(0xFF00C4B4), // Teal
//                     borderRadius: BorderRadius.only(
//                       topLeft: Radius.circular(8),
//                       topRight: Radius.circular(8),
//                     ),
//                   ),
//                   child: Center(
//                     child: Text(
//                       "Select Year",
//                       style: TextStyle(color: Colors.white, fontSize: 18),
//                     ),
//                   ),
//                 ),
//
//                 // Year List
//                 Expanded(
//                   child: ListView.builder(
//                     itemCount: years.length,
//                     itemBuilder: (context, index) {
//                       final year = years[index];
//                       return ListTile(
//                         title: Center(
//                           child: Text(
//                             year,
//                             style: TextStyle(
//                               fontSize: 20,
//                               color: year == tempSelectedYear
//                                   ? Color(0xFF00C4B4) // Highlight teal
//                                   : Colors.black,
//                             ),
//                           ),
//                         ),
//                         onTap: () {
//                           setState(() {
//                             tempSelectedYear = year;
//                           });
//                         },
//                       );
//                     },
//                   ),
//                 ),
//
//                 // Buttons
//                 Container(
//                   padding: EdgeInsets.symmetric(vertical: 8),
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                     children: [
//                       TextButton(
//                         child: Text("CANCEL", style: TextStyle(color: Color(0xFF00C4B4))),
//                         onPressed: () {
//                           Navigator.pop(context);
//                         },
//                       ),
//                       TextButton(
//                         child: Text("OK", style: TextStyle(color: Color(0xFF00C4B4))),
//                         onPressed: () {
//                           setState(() {
//                             selectedYear = tempSelectedYear;
//                           });
//                           Navigator.pop(context);
//                         },
//                       ),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         );
//       },
//     );
//   }
// }
///....
// import 'package:flutter/material.dart';
//
// class HolidayListPage extends StatefulWidget {
//   @override
//   _HolidayListPageState createState() => _HolidayListPageState();
// }
//
// class _HolidayListPageState extends State<HolidayListPage> {
//   late String selectedYear;
//   late List<String> years;
//
//   @override
//   void initState() {
//     super.initState();
//     int currentYear = DateTime.now().year;
//     years = List.generate(2040 - 2021 + 1, (index) => (2021 + index).toString());
//     selectedYear = currentYear.toString();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         color: Colors.black,
//         child: SafeArea(
//           child: Column(
//             children: [
//               // Top Container instead of AppBar
//               Container(
//                 padding: EdgeInsets.all(16.0),
//                 color: Colors.grey[850],
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     IconButton(
//                       icon: Icon(Icons.arrow_back, color: Colors.white),
//                       onPressed: () {},
//                     ),
//                     Text(
//                       'Holiday List',
//                       style: TextStyle(color: Colors.white, fontSize: 18),
//                     ),
//                     GestureDetector(
//                       onTap: () {
//                         _showYearPicker(context);
//                       },
//                       child: Row(
//                         children: [
//                           Text(
//                             selectedYear,
//                             style: TextStyle(color: Colors.white),
//                           ),
//                           SizedBox(width: 6),
//                           Icon(Icons.calendar_today, color: Colors.white),
//                         ],
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//               // Main content
//               Expanded(
//                 child: Container(
//                   color: Colors.white,
//                   width: double.infinity,
//                   child: Center(
//                     child: Text(
//                       'No holidays added\nNo holidays have been added by admin.',
//                       textAlign: TextAlign.center,
//                       style: TextStyle(color: Colors.grey),
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
//   void _showYearPicker(BuildContext context) {
//     String tempSelectedYear = selectedYear;
//
//     showDialog(
//       context: context,
//       builder: (BuildContext context) {
//         return Dialog(
//           shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
//           child: Container(
//             height: 320,
//             child: Column(
//               children: [
//                 // Header
//                 Container(
//                   padding: EdgeInsets.all(16),
//                   width: double.infinity,
//                   decoration: BoxDecoration(
//                     color: Color(0xFF00C4B4), // Teal
//                     borderRadius: BorderRadius.only(
//                       topLeft: Radius.circular(8),
//                       topRight: Radius.circular(8),
//                     ),
//                   ),
//                   child: Center(
//                     child: Text(
//                       "Select Year",
//                       style: TextStyle(color: Colors.white, fontSize: 18),
//                     ),
//                   ),
//                 ),
//
//                 // Year List
//                 Expanded(
//                   child: ListView.builder(
//                     controller: ScrollController(
//                       initialScrollOffset: (years.indexOf(selectedYear) * 48).toDouble(),
//                     ),
//                     itemCount: years.length,
//                     itemBuilder: (context, index) {
//                       final year = years[index];
//                       return ListTile(
//                         title: Center(
//                           child: Text(
//                             year,
//                             style: TextStyle(
//                               fontSize: 20,
//                               color: year == tempSelectedYear
//                                   ? Color(0xFF00C4B4) // Highlight teal
//                                   : Colors.black,
//                             ),
//                           ),
//                         ),
//                         onTap: () {
//                           setState(() {
//                             tempSelectedYear = year;
//                           });
//                         },
//                       );
//                     },
//                   ),
//                 ),
//
//                 // Buttons
//                 Container(
//                   padding: EdgeInsets.symmetric(vertical: 8),
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                     children: [
//                       TextButton(
//                         child: Text("CANCEL", style: TextStyle(color: Color(0xFF00C4B4))),
//                         onPressed: () {
//                           Navigator.pop(context);
//                         },
//                       ),
//                       TextButton(
//                         child: Text("OK", style: TextStyle(color: Color(0xFF00C4B4))),
//                         onPressed: () {
//                           setState(() {
//                             selectedYear = tempSelectedYear;
//                           });
//                           Navigator.pop(context);
//                         },
//                       ),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         );
//       },
//     );
//   }
// }
///..
// import 'package:flutter/material.dart';
//
// class HolidayListPage extends StatefulWidget {
//   @override
//   _HolidayListPageState createState() => _HolidayListPageState();
// }
//
// class _HolidayListPageState extends State<HolidayListPage> {
//   late String selectedYear;
//   late List<String> years;
//   late String currentYear;
//
//   @override
//   void initState() {
//     super.initState();
//     currentYear = DateTime.now().year.toString();
//     years = List.generate(2040 - 2021 + 1, (index) => (2021 + index).toString());
//     selectedYear = currentYear; // default highlight current year
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         color: Colors.black,
//         child: SafeArea(
//           child: Column(
//             children: [
//               // Top Container instead of AppBar
//               Container(
//                 padding: EdgeInsets.all(16.0),
//                 color: Colors.grey[850],
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     IconButton(
//                       icon: Icon(Icons.arrow_back, color: Colors.white),
//                       onPressed: () {},
//                     ),
//                     Text(
//                       'Holiday List',
//                       style: TextStyle(color: Colors.white, fontSize: 18),
//                     ),
//                     GestureDetector(
//                       onTap: () {
//                         _showYearPicker(context);
//                       },
//                       child: Row(
//                         children: [
//                           Text(
//                             selectedYear,
//                             style: TextStyle(color: Colors.white),
//                           ),
//                           SizedBox(width: 6),
//                           Icon(Icons.calendar_today, color: Colors.white),
//                         ],
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//               // Main content
//               Expanded(
//                 child: Container(
//                   color: Colors.white,
//                   width: double.infinity,
//                   child: Center(
//                     child: Text(
//                       'No holidays added\nNo holidays have been added by admin.',
//                       textAlign: TextAlign.center,
//                       style: TextStyle(color: Colors.grey),
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
//   void _showYearPicker(BuildContext context) {
//     String tempSelectedYear = selectedYear;
//
//     showDialog(
//       context: context,
//       builder: (BuildContext context) {
//         return Dialog(
//           shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
//           child: Container(
//             height: 360,
//             child: Column(
//               children: [
//                 // Header
//                 Container(
//                   padding: EdgeInsets.all(16),
//                   width: double.infinity,
//                   decoration: BoxDecoration(
//                     color: Color(0xFF00C4B4), // Teal
//                     borderRadius: BorderRadius.only(
//                       topLeft: Radius.circular(8),
//                       topRight: Radius.circular(8),
//                     ),
//                   ),
//                   child: Center(
//                     child: Text(
//                       "Select Year",
//                       style: TextStyle(color: Colors.white, fontSize: 18),
//                     ),
//                   ),
//                 ),
//
//                 // Year List
//                 Expanded(
//                   child: ListView.builder(
//                     controller: ScrollController(
//                       initialScrollOffset:
//                       (years.indexOf(selectedYear) * 48).toDouble(),
//                     ),
//                     itemCount: years.length,
//                     itemBuilder: (context, index) {
//                       final year = years[index];
//                       final bool isSelected = year == tempSelectedYear;
//                       final bool isCurrent = year == currentYear;
//
//                       return ListTile(
//                         title: Center(
//                           child: Text(
//                             year,
//                             style: TextStyle(
//                               fontSize: 20,
//                               fontWeight: isSelected || isCurrent
//                                   ? FontWeight.bold
//                                   : FontWeight.normal,
//                               color: isSelected || isCurrent
//                                   ? Color(0xFF00C4B4) // Highlight teal
//                                   : Colors.black,
//                             ),
//                           ),
//                         ),
//                         onTap: () {
//                           setState(() {
//                             tempSelectedYear = year;
//                           });
//                         },
//                       );
//                     },
//                   ),
//                 ),
//
//                 // Buttons
//                 Container(
//                   padding: EdgeInsets.symmetric(vertical: 8),
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                     children: [
//                       TextButton(
//                         child: Text("CANCEL",
//                             style: TextStyle(color: Color(0xFF00C4B4))),
//                         onPressed: () {
//                           Navigator.pop(context);
//                         },
//                       ),
//                       TextButton(
//                         child: Text("OK",
//                             style: TextStyle(color: Color(0xFF00C4B4))),
//                         onPressed: () {
//                           setState(() {
//                             selectedYear = tempSelectedYear;
//                           });
//                           Navigator.pop(context);
//                         },
//                       ),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         );
//       },
//     );
//   }
// }
///
import 'package:flutter/material.dart';

class HolidayListPage extends StatefulWidget {
  @override
  _HolidayListPageState createState() => _HolidayListPageState();
}

class _HolidayListPageState extends State<HolidayListPage> {
  late String selectedYear;
  late List<String> years;
  late String currentYear;

  @override
  void initState() {
    super.initState();
    currentYear = DateTime.now().year.toString();
    years = List.generate(2040 - 2021 + 1, (index) => (2021 + index).toString());
    selectedYear = currentYear; // default highlight current year
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.black,
        child: SafeArea(
          child: Column(
            children: [
              // Top Container instead of AppBar
              Container(
                height: 60,

                color: Colors.grey[850],
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    IconButton(
                      icon: Icon(Icons.arrow_back, color: Colors.white),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                    Text(
                      'Holiday List',
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                    Spacer(),
                    GestureDetector(
                      onTap: () {
                        _showYearPicker(context);
                      },
                      child: Container(
                        height: 35,
                        width: 90,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              selectedYear,
                              style: TextStyle(color: Colors.black),
                            ),
                            SizedBox(width: 6),
                            Icon(Icons.calendar_today, color: Colors.black),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 10,)
                  ],
                ),
              ),
              // Main content
              Expanded(
                child: Container(
                  color: Colors.white,
                  width: double.infinity,
                  child: Center(
                    child: Text(
                      'No holidays added\nNo holidays have been added by admin.',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.grey),
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

  void _showYearPicker(BuildContext context) {
    String tempSelectedYear = selectedYear;

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          child: Container(
            height: 360,
            child: Column(
              children: [
                // Header
                Container(
                  padding: EdgeInsets.all(16),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Color(0xFF00C4B4), // Teal
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(8),
                      topRight: Radius.circular(8),
                    ),
                  ),
                  child: Center(
                    child: Text(
                      "Select Year",
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  ),
                ),

                // Year List
                Expanded(
                  child: ListView.builder(
                    controller: ScrollController(
                      initialScrollOffset:
                      (years.indexOf(selectedYear) * 48).toDouble(),
                    ),
                    itemCount: years.length,
                    itemBuilder: (context, index) {
                      final year = years[index];
                      final bool isSelected = year == tempSelectedYear;
                      final bool isCurrent = year == currentYear;

                      return ListTile(
                        title: Center(
                          child: Text(
                            year,
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: isSelected || isCurrent
                                  ? FontWeight.bold
                                  : FontWeight.normal,
                              color: isSelected
                                  ? Color(0xFF00C4B4) // teal only for selected
                                  : Colors.black,
                            ),
                          ),
                        ),
                        onTap: () {
                          setState(() {
                            tempSelectedYear = year;
                          });
                        },
                      );
                    },
                  ),
                ),

                // Buttons
                Container(
                  padding: EdgeInsets.symmetric(vertical: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      TextButton(
                        child: Text("CANCEL",
                            style: TextStyle(color: Color(0xFF00C4B4))),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                      TextButton(
                        child: Text("OK",
                            style: TextStyle(color: Color(0xFF00C4B4))),
                        onPressed: () {
                          setState(() {
                            selectedYear = tempSelectedYear;
                          });
                          Navigator.pop(context);
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
