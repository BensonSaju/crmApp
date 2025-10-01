// import 'package:flutter/material.dart';
//
// class ReimHistory extends StatefulWidget {
//   const ReimHistory({super.key});
//
//   @override
//   State<ReimHistory> createState() => _ReimHistoryState();
// }
//
// class _ReimHistoryState extends State<ReimHistory> {
//   String selectedFilter = "Pending"; // Default selected
//
//   final List<String> filters = ["All", "Pending", "Approved", "Rejected"];
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white, // White background
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             // Month Selector
//             Container(
//               padding: EdgeInsets.all(12),
//               decoration: BoxDecoration(
//                 color: Colors.amber[50],
//                 borderRadius: BorderRadius.circular(8),
//               ),
//               child: Row(
//                 children: [
//                   Text(
//                     "Select Month : ",
//                     style: TextStyle(fontWeight: FontWeight.bold),
//                   ),
//                   SizedBox(width: 8),
//                   Container(
//                     padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
//                     decoration: BoxDecoration(
//                       border: Border.all(color: Colors.grey),
//                       borderRadius: BorderRadius.circular(20),
//                     ),
//                     child: Row(
//                       children: [
//                         Icon(Icons.calendar_today, size: 16),
//                         SizedBox(width: 6),
//                         Text("Sep 2025"),
//                       ],
//                     ),
//                   )
//                 ],
//               ),
//             ),
//             SizedBox(height: 20),
//
//             // Filter Buttons
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: filters.map((filter) {
//                 final isSelected = selectedFilter == filter;
//                 return GestureDetector(
//                   onTap: () {
//                     setState(() {
//                       selectedFilter = filter;
//                     });
//                   },
//                   child: Container(
//                     padding:
//                     EdgeInsets.symmetric(horizontal: 16, vertical: 8),
//                     decoration: BoxDecoration(
//                       color: isSelected ? Colors.teal : Colors.transparent,
//                       borderRadius: BorderRadius.circular(20),
//                       border: Border.all(
//                         color: isSelected ? Colors.teal : Colors.grey,
//                       ),
//                     ),
//                     child: Text(
//                       filter,
//                       style: TextStyle(
//                         color: isSelected ? Colors.white : Colors.black,
//                         fontWeight: isSelected
//                             ? FontWeight.bold
//                             : FontWeight.normal,
//                       ),
//                     ),
//                   ),
//                 );
//               }).toList(),
//             ),
//             SizedBox(height: 40),
//
//             // Payments Section
//             Expanded(
//               child: Center(
//                 child: Text(
//                   _getMessage(),
//                   style: TextStyle(color: Colors.grey, fontSize: 16),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
//
//   String _getMessage() {
//     switch (selectedFilter) {
//       case "All":
//         return "No Payments Added";
//       case "Pending":
//         return "No Pending Payments";
//       case "Approved":
//         return "No Approved Payments";
//       case "Rejected":
//         return "No Rejected Payments";
//       default:
//         return "No Payments";
//     }
//   }
// }
///
// import 'package:flutter/material.dart';
//
// class ReimHistory extends StatefulWidget {
//   const ReimHistory({super.key});
//
//   @override
//   State<ReimHistory> createState() => _ReimHistoryState();
// }
//
// class _ReimHistoryState extends State<ReimHistory> {
//   String selectedFilter = "Pending";
//   final List<String> filters = ["All", "Pending", "Approved", "Rejected"];
//
//   DateTime selectedDate = DateTime.now();
//
//   Future<void> _pickMonth() async {
//     DateTime? picked = await showDatePicker(
//       context: context,
//       initialDate: selectedDate,
//       firstDate: DateTime(2020),
//       lastDate: DateTime(2040),
//       helpText: "Select Month",
//     );
//     if (picked != null) {
//       setState(() {
//         selectedDate = picked;
//       });
//     }
//   }
//
//   String getMonthYear(DateTime date) {
//     return "${_monthNames[date.month - 1]} ${date.year}";
//   }
//
//   final List<String> _monthNames = const [
//     "Jan",
//     "Feb",
//     "Mar",
//     "Apr",
//     "May",
//     "Jun",
//     "Jul",
//     "Aug",
//     "Sep",
//     "Oct",
//     "Nov",
//     "Dec"
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             // Month Selector
//             Container(
//               padding: EdgeInsets.all(12),
//               decoration: BoxDecoration(
//                 color: Colors.amber[50],
//                 borderRadius: BorderRadius.circular(8),
//               ),
//               child: Row(
//                 children: [
//                   Text(
//                     "Select Month : ",
//                     style: TextStyle(fontWeight: FontWeight.bold),
//                   ),
//                   SizedBox(width: 8),
//                   GestureDetector(
//                     onTap: _pickMonth,
//                     child: Container(
//                       padding:
//                       EdgeInsets.symmetric(horizontal: 12, vertical: 6),
//                       decoration: BoxDecoration(
//                         border: Border.all(color: Colors.grey),
//                         borderRadius: BorderRadius.circular(20),
//                       ),
//                       child: Row(
//                         children: [
//                           Icon(Icons.calendar_today, size: 16),
//                           SizedBox(width: 6),
//                           Text(getMonthYear(selectedDate)),
//                         ],
//                       ),
//                     ),
//                   )
//                 ],
//               ),
//             ),
//             SizedBox(height: 20),
//
//             // Filter Buttons
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: filters.map((filter) {
//                 final isSelected = selectedFilter == filter;
//                 return GestureDetector(
//                   onTap: () {
//                     setState(() {
//                       selectedFilter = filter;
//                     });
//                   },
//                   child: Container(
//                     padding:
//                     EdgeInsets.symmetric(horizontal: 16, vertical: 8),
//                     decoration: BoxDecoration(
//                       color: isSelected ? Colors.teal : Colors.transparent,
//                       borderRadius: BorderRadius.circular(20),
//                       border: Border.all(
//                         color: isSelected ? Colors.teal : Colors.grey,
//                       ),
//                     ),
//                     child: Text(
//                       filter,
//                       style: TextStyle(
//                         color: isSelected ? Colors.white : Colors.black,
//                         fontWeight: isSelected
//                             ? FontWeight.bold
//                             : FontWeight.normal,
//                       ),
//                     ),
//                   ),
//                 );
//               }).toList(),
//             ),
//             SizedBox(height: 40),
//
//             // Payments Section
//             Expanded(
//               child: Center(
//                 child: Text(
//                   _getMessage(),
//                   style: TextStyle(color: Colors.grey, fontSize: 16),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
//
//   String _getMessage() {
//     switch (selectedFilter) {
//       case "All":
//         return "No Payments Added";
//       case "Pending":
//         return "No Pending Payments";
//       case "Approved":
//         return "No Approved Payments";
//       case "Rejected":
//         return "No Rejected Payments";
//       default:
//         return "No Payments";
//     }
//   }
// }
//
///
// import 'package:flutter/material.dart';
//
// class ReimHistory extends StatefulWidget {
//   const ReimHistory({super.key});
//
//   @override
//   State<ReimHistory> createState() => _ReimHistoryState();
// }
//
// class _ReimHistoryState extends State<ReimHistory> {
//   String selectedFilter = "Pending";
//   final List<String> filters = ["All", "Pending", "Approved", "Rejected"];
//
//   DateTime selectedMonth = DateTime.now();
//
//   Future<void> _pickMonth() async {
//     int tempYear = selectedMonth.year;
//     int tempMonth = selectedMonth.month;
//
//     await showDialog(
//       context: context,
//       builder: (context) {
//         return AlertDialog(
//           title: Text("Select Month"),
//           content: Column(
//             mainAxisSize: MainAxisSize.min,
//             children: [
//               // Year Picker
//               SizedBox(
//                 height: 150,
//                 width: 300,
//                 child: YearPicker(
//                   firstDate: DateTime(2020),
//                   lastDate: DateTime(2040),
//                   initialDate: DateTime(tempYear),
//                   selectedDate: DateTime(tempYear),
//                   onChanged: (date) {
//                     tempYear = date.year;
//                   },
//                 ),
//               ),
//               SizedBox(height: 10),
//
//               // Month Picker Grid
//               Wrap(
//                 spacing: 8,
//                 runSpacing: 8,
//                 children: List.generate(12, (index) {
//                   final isSelected = tempMonth == index + 1;
//                   return GestureDetector(
//                     onTap: () {
//                       setState(() {
//                         selectedMonth = DateTime(tempYear, index + 1);
//                       });
//                       Navigator.pop(context);
//                     },
//                     child: Container(
//                       padding: EdgeInsets.symmetric(
//                           horizontal: 12, vertical: 8),
//                       decoration: BoxDecoration(
//                         color: isSelected ? Colors.teal : Colors.grey[200],
//                         borderRadius: BorderRadius.circular(8),
//                       ),
//                       child: Text(
//                         _monthNames[index],
//                         style: TextStyle(
//                           color: isSelected ? Colors.white : Colors.black,
//                         ),
//                       ),
//                     ),
//                   );
//                 }),
//               ),
//             ],
//           ),
//         );
//       },
//     );
//   }
//
//   String getMonthYear(DateTime date) {
//     return "${_monthNames[date.month - 1]} ${date.year}";
//   }
//
//   final List<String> _monthNames = const [
//     "Jan",
//     "Feb",
//     "Mar",
//     "Apr",
//     "May",
//     "Jun",
//     "Jul",
//     "Aug",
//     "Sep",
//     "Oct",
//     "Nov",
//     "Dec"
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             // Month Selector
//             Container(
//               padding: EdgeInsets.all(12),
//               decoration: BoxDecoration(
//                 color: Colors.amber[50],
//                 borderRadius: BorderRadius.circular(8),
//               ),
//               child: Row(
//                 children: [
//                   Text(
//                     "Select Month : ",
//                     style: TextStyle(fontWeight: FontWeight.bold),
//                   ),
//                   SizedBox(width: 8),
//                   GestureDetector(
//                     onTap: _pickMonth,
//                     child: Container(
//                       padding:
//                       EdgeInsets.symmetric(horizontal: 12, vertical: 6),
//                       decoration: BoxDecoration(
//                         border: Border.all(color: Colors.grey),
//                         borderRadius: BorderRadius.circular(20),
//                       ),
//                       child: Row(
//                         children: [
//                           Icon(Icons.calendar_today, size: 16),
//                           SizedBox(width: 6),
//                           Text(getMonthYear(selectedMonth)),
//                         ],
//                       ),
//                     ),
//                   )
//                 ],
//               ),
//             ),
//             SizedBox(height: 20),
//
//             // Filter Buttons
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: filters.map((filter) {
//                 final isSelected = selectedFilter == filter;
//                 return GestureDetector(
//                   onTap: () {
//                     setState(() {
//                       selectedFilter = filter;
//                     });
//                   },
//                   child: Container(
//                     padding:
//                     EdgeInsets.symmetric(horizontal: 16, vertical: 8),
//                     decoration: BoxDecoration(
//                       color: isSelected ? Colors.teal : Colors.transparent,
//                       borderRadius: BorderRadius.circular(20),
//                       border: Border.all(
//                         color: isSelected ? Colors.teal : Colors.grey,
//                       ),
//                     ),
//                     child: Text(
//                       filter,
//                       style: TextStyle(
//                         color: isSelected ? Colors.white : Colors.black,
//                         fontWeight: isSelected
//                             ? FontWeight.bold
//                             : FontWeight.normal,
//                       ),
//                     ),
//                   ),
//                 );
//               }).toList(),
//             ),
//             SizedBox(height: 40),
//
//             // Payments Section
//             Expanded(
//               child: Center(
//                 child: Text(
//                   _getMessage(),
//                   style: TextStyle(color: Colors.grey, fontSize: 16),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
//
//   String _getMessage() {
//     switch (selectedFilter) {
//       case "All":
//         return "No Payments Added for ${getMonthYear(selectedMonth)}";
//       case "Pending":
//         return "No Pending Payments for ${getMonthYear(selectedMonth)}";
//       case "Approved":
//         return "No Approved Payments for ${getMonthYear(selectedMonth)}";
//       case "Rejected":
//         return "No Rejected Payments for ${getMonthYear(selectedMonth)}";
//       default:
//         return "No Payments";
//     }
//   }
// }
///
// import 'package:flutter/material.dart';
// import 'package:month_picker_dialog/month_picker_dialog.dart';
//
// class ReimHistory extends StatefulWidget {
//   @override
//   _ReimHistoryState createState() => _ReimHistoryState();
// }
//
// class _ReimHistoryState extends State<ReimHistory> {
//   DateTime selectedMonth = DateTime.now();
//
//   void _pickMonth() async {
//     final picked = await showMonthPicker(
//       context: context,
//       initialDate: selectedMonth,
//       firstDate: DateTime(2000),
//       lastDate: DateTime(2040),
//       // ✅ confirm & cancel buttons
//       confirmWidget: const Text("OK", style: TextStyle(color: Colors.teal)),
//       cancelWidget: const Text("CANCEL", style: TextStyle(color: Colors.teal)),
//     );
//
//     if (picked != null) {
//       setState(() {
//         selectedMonth = picked;
//       });
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text("History")),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text(
//               "Selected Month: ${selectedMonth.month}-${selectedMonth.year}",
//               style: const TextStyle(fontSize: 18),
//             ),
//             const SizedBox(height: 20),
//             ElevatedButton(
//               onPressed: _pickMonth,
//               child: const Text("Select Month"),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
///
// import 'package:flutter/material.dart';
//
// class ReimHistory extends StatefulWidget {
//   const ReimHistory({super.key});
//
//   @override
//   State<ReimHistory> createState() => _ReimHistoryState();
// }
//
// class _ReimHistoryState extends State<ReimHistory> {
//   String selectedFilter = "Pending";
//   final List<String> filters = ["All", "Pending", "Approved", "Rejected"];
//
//   DateTime selectedMonth = DateTime.now();
//
//   Future<void> _pickMonth() async {
//     int tempYear = selectedMonth.year;
//     int tempMonth = selectedMonth.month;
//
//     await showDialog(
//       context: context,
//       builder: (context) {
//         return AlertDialog(
//           titlePadding: EdgeInsets.zero,
//           contentPadding: EdgeInsets.zero,
//           title: Container(
//             color: Colors.teal,
//             padding: const EdgeInsets.all(16),
//             child: Column(
//               children: [
//                 const Text(
//                   "Select Month",
//                   style: TextStyle(color: Colors.white, fontSize: 16),
//                 ),
//                 const SizedBox(height: 8),
//                 Text(
//                   "${_monthNames[tempMonth - 1]} $tempYear",
//                   style: const TextStyle(
//                       color: Colors.white,
//                       fontSize: 22,
//                       fontWeight: FontWeight.bold),
//                 ),
//               ],
//             ),
//           ),
//           content: SizedBox(
//             height: 300,
//             width: 320,
//             child: Column(
//               children: [
//                 // Year Picker
//                 SizedBox(
//                   height: 100,
//                   child: YearPicker(
//                     firstDate: DateTime(2020),
//                     lastDate: DateTime(2040),
//                     initialDate: DateTime(tempYear),
//                     selectedDate: DateTime(tempYear),
//                     onChanged: (date) {
//                       setState(() {
//                         tempYear = date.year;
//                       });
//                     },
//                   ),
//                 ),
//                 const Divider(),
//
//                 // Month Picker Grid
//                 Expanded(
//                   child: GridView.builder(
//                     gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//                         crossAxisCount: 4,
//                         mainAxisSpacing: 8,
//                         crossAxisSpacing: 8),
//                     itemCount: 12,
//                     itemBuilder: (context, index) {
//                       final isSelected = tempMonth == index + 1;
//                       return GestureDetector(
//                         onTap: () {
//                           setState(() {
//                             selectedMonth = DateTime(tempYear, index + 1);
//                           });
//                           Navigator.pop(context);
//                         },
//                         child: Container(
//                           alignment: Alignment.center,
//                           decoration: BoxDecoration(
//                             color: isSelected ? Colors.teal : Colors.grey[200],
//                             borderRadius: BorderRadius.circular(50),
//                           ),
//                           child: Text(
//                             _monthNames[index],
//                             style: TextStyle(
//                               color: isSelected ? Colors.white : Colors.black,
//                               fontWeight: isSelected
//                                   ? FontWeight.bold
//                                   : FontWeight.normal,
//                             ),
//                           ),
//                         ),
//                       );
//                     },
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           actions: [
//             TextButton(
//               onPressed: () => Navigator.pop(context),
//               child: const Text("CANCEL",
//                   style: TextStyle(color: Colors.teal)),
//             ),
//             TextButton(
//               onPressed: () => Navigator.pop(context),
//               child: const Text("OK", style: TextStyle(color: Colors.teal)),
//             ),
//           ],
//         );
//       },
//     );
//   }
//
//   String getMonthYear(DateTime date) {
//     return "${_monthNames[date.month - 1]} ${date.year}";
//   }
//
//   final List<String> _monthNames = const [
//     "Jan",
//     "Feb",
//     "Mar",
//     "Apr",
//     "May",
//     "Jun",
//     "Jul",
//     "Aug",
//     "Sep",
//     "Oct",
//     "Nov",
//     "Dec"
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             // Month Selector
//             Container(
//               padding: const EdgeInsets.all(12),
//               decoration: BoxDecoration(
//                 color: Colors.amber[50],
//                 borderRadius: BorderRadius.circular(8),
//               ),
//               child: Row(
//                 children: [
//                   const Text(
//                     "Select Month : ",
//                     style: TextStyle(fontWeight: FontWeight.bold),
//                   ),
//                   const SizedBox(width: 8),
//                   GestureDetector(
//                     onTap: _pickMonth,
//                     child: Container(
//                       padding: const EdgeInsets.symmetric(
//                           horizontal: 12, vertical: 6),
//                       decoration: BoxDecoration(
//                         border: Border.all(color: Colors.grey),
//                         borderRadius: BorderRadius.circular(20),
//                       ),
//                       child: Row(
//                         children: [
//                           const Icon(Icons.calendar_today, size: 16),
//                           const SizedBox(width: 6),
//                           Text(getMonthYear(selectedMonth)),
//                         ],
//                       ),
//                     ),
//                   )
//                 ],
//               ),
//             ),
//             const SizedBox(height: 20),
//
//             // Filter Buttons
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: filters.map((filter) {
//                 final isSelected = selectedFilter == filter;
//                 return GestureDetector(
//                   onTap: () {
//                     setState(() {
//                       selectedFilter = filter;
//                     });
//                   },
//                   child: Container(
//                     padding:
//                     const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
//                     decoration: BoxDecoration(
//                       color: isSelected ? Colors.teal : Colors.transparent,
//                       borderRadius: BorderRadius.circular(20),
//                       border: Border.all(
//                         color: isSelected ? Colors.teal : Colors.grey,
//                       ),
//                     ),
//                     child: Text(
//                       filter,
//                       style: TextStyle(
//                         color: isSelected ? Colors.white : Colors.black,
//                         fontWeight: isSelected
//                             ? FontWeight.bold
//                             : FontWeight.normal,
//                       ),
//                     ),
//                   ),
//                 );
//               }).toList(),
//             ),
//             const SizedBox(height: 40),
//
//             // Payments Section
//             Expanded(
//               child: Center(
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     Text(
//                       _getMessage(),
//                       style: const TextStyle(color: Colors.grey, fontSize: 16),
//                       textAlign: TextAlign.center,
//                     ),
//                     if (selectedFilter == "Approved") ...[
//                       const SizedBox(height: 20),
//                       const Text(
//                         "Total Reimbursement: 0.0 Rs",
//                         style: TextStyle(
//                             fontSize: 16,
//                             fontWeight: FontWeight.bold,
//                             color: Colors.teal),
//                       ),
//                     ]
//                   ],
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
//
//   String _getMessage() {
//     switch (selectedFilter) {
//       case "All":
//         return "No Payments Added for ${getMonthYear(selectedMonth)}";
//       case "Pending":
//         return "No Pending Payments for ${getMonthYear(selectedMonth)}";
//       case "Approved":
//         return "No Approved Payments for ${getMonthYear(selectedMonth)}";
//       case "Rejected":
//         return "No Rejected Payments for ${getMonthYear(selectedMonth)}";
//       default:
//         return "No Payments";
//     }
//   }
// }
///
// import 'package:flutter/material.dart';
//
// class ReimHistory extends StatefulWidget {
//   const ReimHistory({super.key});
//
//   @override
//   State<ReimHistory> createState() => _ReimHistoryState();
// }
//
// class _ReimHistoryState extends State<ReimHistory> {
//   String selectedFilter = "Pending";
//   final List<String> filters = ["All", "Pending", "Approved", "Rejected"];
//
//   DateTime selectedMonth = DateTime.now();
//   bool isLoading = false;
//
//   Future<void> _pickMonth() async {
//     int tempYear = selectedMonth.year;
//     int tempMonth = selectedMonth.month;
//
//     await showDialog(
//       context: context,
//       builder: (context) {
//         return AlertDialog(
//           shape: RoundedRectangleBorder(
//             borderRadius: BorderRadius.circular(12),
//           ),
//           title: Container(
//             padding: const EdgeInsets.all(12),
//             color: Colors.teal,
//             child: Center(
//               child: Text(
//                 "Select Month",
//                 style: const TextStyle(
//                   color: Colors.white,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//             ),
//           ),
//           content: Column(
//             mainAxisSize: MainAxisSize.min,
//             children: [
//               // Year Picker
//               SizedBox(
//                 height: 150,
//                 width: 300,
//                 child: YearPicker(
//                   firstDate: DateTime(2020),
//                   lastDate: DateTime(2040),
//                   initialDate: DateTime(tempYear),
//                   selectedDate: DateTime(tempYear),
//                   onChanged: (date) {
//                     setState(() {
//                       tempYear = date.year;
//                     });
//                   },
//                 ),
//               ),
//               const SizedBox(height: 10),
//
//               // Month Picker Grid
//               Wrap(
//                 spacing: 8,
//                 runSpacing: 8,
//                 children: List.generate(12, (index) {
//                   final isSelected = tempMonth == index + 1 &&
//                       tempYear == selectedMonth.year;
//                   return GestureDetector(
//                     onTap: () {
//                       setState(() {
//                         selectedMonth = DateTime(tempYear, index + 1);
//                       });
//                       Navigator.pop(context);
//                     },
//                     child: Container(
//                       padding:
//                       const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
//                       decoration: BoxDecoration(
//                         color: isSelected ? Colors.teal : Colors.grey[200],
//                         borderRadius: BorderRadius.circular(30),
//                       ),
//                       child: Text(
//                         _monthNames[index],
//                         style: TextStyle(
//                           fontSize: 14,
//                           color: isSelected ? Colors.white : Colors.black,
//                           fontWeight:
//                           isSelected ? FontWeight.bold : FontWeight.normal,
//                         ),
//                       ),
//                     ),
//                   );
//                 }),
//               ),
//             ],
//           ),
//           actions: [
//             TextButton(
//               onPressed: () => Navigator.pop(context),
//               child: const Text("CANCEL", style: TextStyle(color: Colors.teal)),
//             ),
//           ],
//         );
//       },
//     );
//   }
//
//   String getMonthYear(DateTime date) {
//     return "${_monthNames[date.month - 1]} ${date.year}";
//   }
//
//   final List<String> _monthNames = const [
//     "Jan",
//     "Feb",
//     "Mar",
//     "Apr",
//     "May",
//     "Jun",
//     "Jul",
//     "Aug",
//     "Sep",
//     "Oct",
//     "Nov",
//     "Dec"
//   ];
//
//   void _changeFilter(String filter) {
//     setState(() {
//       isLoading = true;
//       selectedFilter = filter;
//     });
//
//     Future.delayed(const Duration(seconds: 1), () {
//       setState(() {
//         isLoading = false;
//       });
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             // Month Selector
//             Container(
//               padding: const EdgeInsets.all(12),
//               decoration: BoxDecoration(
//                 color: Colors.amber[50],
//                 borderRadius: BorderRadius.circular(8),
//               ),
//               child: Row(
//                 children: [
//                   const Text(
//                     "Select Month : ",
//                     style: TextStyle(fontWeight: FontWeight.bold),
//                   ),
//                   const SizedBox(width: 8),
//                   GestureDetector(
//                     onTap: _pickMonth,
//                     child: Container(
//                       padding: const EdgeInsets.symmetric(
//                           horizontal: 12, vertical: 6),
//                       decoration: BoxDecoration(
//                         border: Border.all(color: Colors.grey),
//                         borderRadius: BorderRadius.circular(20),
//                       ),
//                       child: Row(
//                         children: [
//                           const Icon(Icons.calendar_today, size: 16),
//                           const SizedBox(width: 6),
//                           Text(getMonthYear(selectedMonth)),
//                         ],
//                       ),
//                     ),
//                   )
//                 ],
//               ),
//             ),
//             const SizedBox(height: 20),
//
//             // Filter Buttons
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: filters.map((filter) {
//                 final isSelected = selectedFilter == filter;
//                 return GestureDetector(
//                   onTap: () => _changeFilter(filter),
//                   child: Container(
//                     padding:
//                     const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
//                     decoration: BoxDecoration(
//                       color: isSelected ? Colors.teal : Colors.transparent,
//                       borderRadius: BorderRadius.circular(20),
//                       border: Border.all(
//                         color: isSelected ? Colors.teal : Colors.grey,
//                       ),
//                     ),
//                     child: Text(
//                       filter,
//                       style: TextStyle(
//                         color: isSelected ? Colors.white : Colors.black,
//                         fontWeight:
//                         isSelected ? FontWeight.bold : FontWeight.normal,
//                       ),
//                     ),
//                   ),
//                 );
//               }).toList(),
//             ),
//             const SizedBox(height: 20),
//
//             // Approved Section → Show total
//             if (selectedFilter == "Approved") ...[
//               Text(
//                 "Total Reimbursement: 0.0 ₹",
//                 style: const TextStyle(
//                     fontWeight: FontWeight.bold, fontSize: 16),
//               ),
//               const Divider(thickness: 1),
//               const SizedBox(height: 10),
//             ],
//
//             // Content Section
//             Expanded(
//               child: Center(
//                 child: isLoading
//                     ? const CircularProgressIndicator(color: Colors.teal)
//                     : Text(
//                   _getMessage(),
//                   style:
//                   const TextStyle(color: Colors.grey, fontSize: 16),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
//
//   String _getMessage() {
//     switch (selectedFilter) {
//       case "All":
//         return "No Payments Added for ${getMonthYear(selectedMonth)}";
//       case "Pending":
//         return "No Pending Payments for ${getMonthYear(selectedMonth)}";
//       case "Approved":
//         return "No Approved Payments for ${getMonthYear(selectedMonth)}";
//       case "Rejected":
//         return "No Rejected Payments for ${getMonthYear(selectedMonth)}";
//       default:
//         return "No Payments";
//     }
//   }
// }
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:month_picker_dialog/month_picker_dialog.dart';

class ReimHistory extends StatefulWidget {
  const ReimHistory({super.key});

  @override
  State<ReimHistory> createState() => _ReimHistoryState();
}

class _ReimHistoryState extends State<ReimHistory> {
  String selectedFilter = "Pending";
  final List<String> filters = ["All", "Pending", "Approved", "Rejected"];

  DateTime selectedMonth = DateTime.now();
  bool isLoading = false;

  Future<void> _pickMonth() async {
    final picked = await showMonthPicker(

      headerColor: Colors.teal,
      unselectedMonthTextColor: Colors.black,
      context: context,
      initialDate: selectedMonth,
      firstDate: DateTime(2020),
      lastDate: DateTime(2040),
      confirmWidget:  Text("OK", style:  GoogleFonts.gabarito(color: Colors.teal)),
      cancelWidget:  Text("CANCEL", style:  GoogleFonts.gabarito(color: Colors.teal)),
    );

    if (picked != null) {
      setState(() {
        selectedMonth = picked;
      });
    }
  }

  String getMonthYear(DateTime date) {
    return "${_monthNames[date.month - 1]} ${date.year}";
  }

  final List<String> _monthNames = const [
    "Jan", "Feb", "Mar", "Apr", "May", "Jun",
    "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"
  ];

  void _changeFilter(String filter) {
    setState(() {
      isLoading = true;
      selectedFilter = filter;
    });

    Future.delayed(const Duration(seconds: 1), () {
      setState(() {
        isLoading = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.amber[50],
                borderRadius: BorderRadius.circular(8),
              ),
              child: Row(
                children: [
                    Text(
                    "Select Month : ",
                    style:  GoogleFonts.gabarito(fontWeight: FontWeight.bold),
                  ),
                    SizedBox(width: 8),
                  GestureDetector(
                    onTap: _pickMonth,
                    child: Container(
                      padding:   EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Row(
                        children: [
                          const Icon(Icons.calendar_today, size: 16, color: Colors.teal),
                          const SizedBox(width: 6),
                          Text(getMonthYear(selectedMonth)),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(height: 20),

            // Filter Buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: filters.map((filter) {
                final isSelected = selectedFilter == filter;
                return GestureDetector(
                  onTap: () => _changeFilter(filter),
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    decoration: BoxDecoration(
                      color: isSelected ? Colors.teal : Colors.transparent,
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                        color: isSelected ? Colors.teal : Colors.grey,
                      ),
                    ),
                    child: Text(
                      filter,
                      style:  GoogleFonts.gabarito(
                        color: isSelected ? Colors.white : Colors.black,
                        fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
                      ),
                    ),
                  ),
                );
              }).toList(),
            ),
              SizedBox(height: 20),

            // Approved Section → Show total
            if (selectedFilter == "Approved") ...[
              Text(
                "Total Reimbursement: 0.0 ₹",
                style:    GoogleFonts.gabarito(fontWeight: FontWeight.bold, fontSize: 16),
              ),
                Divider(thickness: 1),
                SizedBox(height: 10),
            ],

            // Content Section
            Expanded(
              child: Center(
                child: isLoading
                    ?   CircularProgressIndicator(color: Colors.teal)
                    : Text(
                  _getMessage(),
                  style:    GoogleFonts.gabarito(color: Colors.grey, fontSize: 16),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  String _getMessage() {
    switch (selectedFilter) {
      case "All":
        return "No Payments Added for ${getMonthYear(selectedMonth)}";
      case "Pending":
        return "No Pending Payments for ${getMonthYear(selectedMonth)}";
      case "Approved":
        return "No Approved Payments for ${getMonthYear(selectedMonth)}";
      case "Rejected":
        return "No Rejected Payments for ${getMonthYear(selectedMonth)}";
      default:
        return "No Payments";
    }
  }
}
