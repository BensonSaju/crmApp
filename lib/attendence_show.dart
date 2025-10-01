// import 'package:flutter/material.dart';
// import 'package:intl/intl.dart';
// import 'package:table_calendar/table_calendar.dart';
//
//
// enum AttendanceStatus { present, absent, halfDay, paidleave, weekoff }
//
// class AttendancePage extends StatefulWidget {
//   @override
//   _AttendancePageState createState() => _AttendancePageState();
// }
//
// class _AttendancePageState extends State<AttendancePage> {
//   DateTime _focusedDay = DateTime.now();
//   CalendarFormat _calendarFormat = CalendarFormat.month;
//
//   Map<DateTime, AttendanceStatus> attendance = {
//     DateTime(2025, 9, 1): AttendanceStatus.absent,
//     DateTime(2025, 9, 17): AttendanceStatus.present,
//     DateTime(2025, 9, 28): AttendanceStatus.paidleave,
//     DateTime(2025, 9, 22): AttendanceStatus.present,
//   };
//
//   Color _getColor(AttendanceStatus? status) {
//     switch (status) {
//       case AttendanceStatus.present:
//         return Colors.green;
//       case AttendanceStatus.absent:
//         return Colors.red.shade700;
//       case AttendanceStatus.halfDay:
//         return Colors.yellow;
//       case AttendanceStatus.paidleave:
//         return Colors.purple;
//       case AttendanceStatus.weekoff:
//         return Colors.grey;
//       default:
//         return Colors.grey.shade300;
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     int present =
//         attendance.values.where((s) => s == AttendanceStatus.present).length;
//     int absent =
//         attendance.values.where((s) => s == AttendanceStatus.absent).length;
//     int halfDay =
//         attendance.values.where((s) => s == AttendanceStatus.halfDay).length;
//     int leave =
//         attendance.values.where((s) => s == AttendanceStatus.paidleave).length;
//     int weekoff =
//         attendance.values.where(((s) => s == AttendanceStatus.weekoff)).length;
//
//     return Scaffold(
//
//       body: Container(
//         color: Colors.black,
//         child: SafeArea(
//           child: SingleChildScrollView(
//             child: Container(
//               // inner padding
//               decoration: BoxDecoration(
//                 color: Colors.white,
//
//               ),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.stretch,
//                 children: [
//                   // Custom Header
//                   Container(
//                     color: Colors.yellow.shade50,
//                     child: Padding(
//                       padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
//                       child: Row(
//                         children: [
//                           Icon(
//                             Icons.info_outline_rounded,
//                             color: Colors.yellow.shade800,
//                             size: 28,
//                           ),
//                           const SizedBox(width: 6),
//                           Text(
//                             "Attendance For",
//                             style: TextStyle(
//                               fontSize: 17,
//                               fontWeight: FontWeight.bold,
//                               color: Colors.yellow.shade800,
//                             ),
//                           ),
//                           const SizedBox(width: 10),
//                           GestureDetector(
//                             onTap: () {
//                               _showMonthPickerBottomSheet();
//                             },
//                             child: Container(
//                               height: 36,
//                               width: 100,
//                               decoration: BoxDecoration(
//                                 border: Border.all(color: Colors.grey.shade400),
//                                 borderRadius: BorderRadius.circular(19),
//                               ),
//                               child: Row(
//                                 mainAxisAlignment: MainAxisAlignment.center,
//                                 children: [
//                                   const Icon(Icons.calendar_today,
//                                       size: 12, color: Colors.black),
//                                   const SizedBox(width: 6),
//                                   Text(
//                                     DateFormat('MMM yyyy').format(_focusedDay),
//                                     style: const TextStyle(
//                                       fontSize: 11,
//                                       fontWeight: FontWeight.bold,
//                                     ),
//                                   ),
//                                   const Icon(Icons.keyboard_arrow_down_sharp,
//                                       color: Colors.black),
//                                 ],
//                               ),
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//                   Divider(thickness: 1, color: Colors.grey.shade300),
//
//                   // Summary row
//                   Padding(
//                     padding: const EdgeInsets.symmetric(horizontal: 6),
//                     child: Container(
//                       height: 60,
//                       color: Colors.grey.shade100,
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                         children: [
//                           _buildSummary("Present", present, Colors.green),
//                           _buildSummary("Absent", absent, Colors.red.shade700),
//                           _buildSummary("Half Day", halfDay, Colors.yellow),
//                           _buildSummary("Paid Leave", leave, Colors.purple),
//                           _buildSummary("Week Off", weekoff, Colors.grey),
//                         ],
//                       ),
//                     ),
//                   ),
//                   Divider(thickness: 1, color: Colors.grey.shade300),
//
//                   // Calendar
//                   SizedBox(
//                     height: 400, // 👈 fixed height so it doesn't overflow
//                     child: TableCalendar(
//                       calendarStyle: CalendarStyle(
//                         outsideDaysVisible: false,
//                         tablePadding: const EdgeInsets.all(5),
//                         isTodayHighlighted: false,
//                       ),
//                       firstDay: DateTime.utc(2020, 1, 1),
//                       lastDay: DateTime.utc(2030, 12, 31),
//                       focusedDay: _focusedDay,
//                       calendarFormat: _calendarFormat,
//                       headerStyle: const HeaderStyle(
//                         formatButtonVisible: false,
//                         leftChevronVisible: false,
//                         rightChevronVisible: false,
//                         titleTextStyle: TextStyle(fontSize: 0),
//                       ),
//                       calendarBuilders: CalendarBuilders(
//                         defaultBuilder: (context, day, _) {
//                           final status = attendance[DateTime(day.year, day.month, day.day)];
//                           return Container(
//                             margin: const EdgeInsets.all(4),
//                             decoration: BoxDecoration(
//                               color: _getColor(status),
//                               borderRadius: BorderRadius.circular(6),
//                             ),
//                             child: Center(
//                               child: Text(
//                                 "${day.day}",
//                                 style: const TextStyle(
//                                   color: Colors.white,
//                                   fontWeight: FontWeight.bold,
//                                 ),
//                               ),
//                             ),
//                           );
//                         },
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ),
//       ),
//
//     );
//   }
//
//   /// Bottom sheet for year + month selection
//   void _showMonthPickerBottomSheet() {
//     int selectedYear = _focusedDay.year;
//     int selectedMonth = _focusedDay.month;
//
//     showModalBottomSheet(
//       context: context,
//       shape: RoundedRectangleBorder(
//         borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
//       ),
//       builder: (context) {
//         return StatefulBuilder(
//           builder: (context, setModalState) {
//             return Container(
//               padding: EdgeInsets.all(16),
//               height: 400,
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text(
//                     "Select Year",
//                     style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
//                   ),
//                   SizedBox(height: 6),
//                   Container(
//                     width: 100,
//                     height: 40,
//                     padding: EdgeInsets.symmetric(horizontal: 12),
//                     decoration: BoxDecoration(
//                       color: Colors.greenAccent.shade100,
//                       border: Border.all(color: Colors.greenAccent),
//                       borderRadius: BorderRadius.circular(15),
//                     ),
//                     child: DropdownButtonHideUnderline(
//                       child: SizedBox(
//                         width: 120, // 👈 controls dropdown button width
//                         child: DropdownButton<int>(
//                           value: selectedYear,
//                           isExpanded: true,
//                           icon: Icon(
//                             Icons.arrow_drop_down,
//                             color: Colors.black,
//                           ),
//                           style: TextStyle(fontSize: 15, color: Colors.black),
//                           items: List.generate(10, (index) {
//                             int year = DateTime.now().year - 5 + index;
//                             return DropdownMenuItem(
//                               value: year,
//                               child: Center(
//                                 // 👈 keeps item text centered
//                                 child: Text(year.toString()),
//                               ),
//                             );
//                           }),
//                           onChanged: (val) {
//                             setModalState(() {
//                               selectedYear = val!;
//                             });
//                           },
//                         ),
//                       ),
//                     ),
//                   ),
//
//                   SizedBox(height: 10),
//                   Text(
//                     "Select Month",
//                     style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
//                   ),
//                   Expanded(
//                     child: GridView.builder(
//                       gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//                         crossAxisCount: 3,
//                         childAspectRatio: 2.5,
//                       ),
//                       itemCount: 12,
//                       itemBuilder: (context, index) {
//                         final monthName = DateFormat(
//                           'MMMM',
//                         ).format(DateTime(0, index + 1));
//                         final isSelected = (selectedMonth == index + 1);
//                         return GestureDetector(
//                           onTap: () {
//                             setModalState(() {
//                               selectedMonth = index + 1;
//                             });
//                           },
//                           child: Container(
//                             margin: EdgeInsets.all(6),
//                             decoration: BoxDecoration(
//                               color:
//                               isSelected
//                                   ? Colors.teal
//                                   : Colors.grey.shade200,
//                               borderRadius: BorderRadius.circular(10),
//                             ),
//                             child: Center(
//                               child: Text(
//                                 monthName,
//                                 style: TextStyle(
//                                   color:
//                                   isSelected ? Colors.white : Colors.black,
//                                   fontWeight: FontWeight.w500,
//                                 ),
//                               ),
//                             ),
//                           ),
//                         );
//                       },
//                     ),
//                   ),
//                   SizedBox(height: 10),
//                   ElevatedButton(
//                     style: ElevatedButton.styleFrom(
//                       minimumSize: Size(double.infinity, 48),
//                       backgroundColor: Colors.teal,
//                       shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(12),
//                       ),
//                     ),
//                     onPressed: () {
//                       setState(() {
//                         _focusedDay = DateTime(selectedYear, selectedMonth, 1);
//                       });
//                       Navigator.pop(context);
//                     },
//                     child: Text(
//                       "Confirm",
//                       style: TextStyle(fontSize: 16, color: Colors.white),
//                     ),
//                   ),
//                 ],
//               ),
//             );
//           },
//         );
//       },
//     );
//   }
//
//   Widget _buildSummary(String label, int count, Color color) {
//     return Row(
//       children: [
//         Container(width: 4, height: 60, color: color),
//         SizedBox(width: 6),
//         Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             SizedBox(height: 5),
//             Text(label, style: TextStyle(fontSize: 14)),
//             Text(
//               "$count",
//               style: TextStyle(
//                 fontSize: 20,
//                 fontWeight: FontWeight.bold,
//                 color: Colors.black,
//               ),
//             ),
//           ],
//         ),
//       ],
//     );
//   }
// }
///
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:table_calendar/table_calendar.dart';

enum AttendanceStatus { present, absent, halfDay, paidleave, weekoff }

class AttendancePage extends StatefulWidget {
  @override
  _AttendancePageState createState() => _AttendancePageState();
}

class _AttendancePageState extends State<AttendancePage> {
  DateTime _focusedDay = DateTime.now();
  CalendarFormat _calendarFormat = CalendarFormat.month;

  Map<DateTime, AttendanceStatus> attendance = {
    DateTime(2025, 9, 1): AttendanceStatus.absent,
    DateTime(2025, 9, 17): AttendanceStatus.present,
    DateTime(2025, 9, 28): AttendanceStatus.paidleave,
    DateTime(2025, 9, 22): AttendanceStatus.present,
  };

  Color _getColor(AttendanceStatus? status) {
    switch (status) {
      case AttendanceStatus.present:
        return Colors.green;
      case AttendanceStatus.absent:
        return Colors.red.shade700;
      case AttendanceStatus.halfDay:
        return Colors.yellow;
      case AttendanceStatus.paidleave:
        return Colors.purple;
      case AttendanceStatus.weekoff:
        return Colors.grey;
      default:
        return Colors.grey.shade300;
    }
  }

  @override
  Widget build(BuildContext context) {
    int present =
        attendance.values.where((s) => s == AttendanceStatus.present).length;
    int absent =
        attendance.values.where((s) => s == AttendanceStatus.absent).length;
    int halfDay =
        attendance.values.where((s) => s == AttendanceStatus.halfDay).length;
    int leave =
        attendance.values.where((s) => s == AttendanceStatus.paidleave).length;
    int weekoff =
        attendance.values.where(((s) => s == AttendanceStatus.weekoff)).length;

    return Scaffold(
      body: Container(
        color: Colors.black,
        child: SafeArea(
          child: Container(
            color: Colors.white, // This ensures the entire safe area is white
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Container(
                    height: 60,
                    color: Colors.grey.shade800,
                    child: Row(
                      children: [
                        SizedBox(width: 5),
                        IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: Icon(CupertinoIcons.back, color: Colors.white, size: 35),
                        ),
                        SizedBox(width: 20),
                        Text(
                          'Benson Sajus Documents',
                          style:  GoogleFonts.gabarito(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                      ],
                    ),
                  ),
                  // Custom Header
                  Container(
                    color: Colors.yellow.shade50,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                      child: Row(
                        children: [
                          Icon(
                            Icons.info_outline_rounded,
                            color: Colors.yellow.shade800,
                            size: 28,
                          ),
                            SizedBox(width: 6),
                          Text(
                            "Attendance For",
                            style:  GoogleFonts.gabarito(
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                              color: Colors.yellow.shade800,
                            ),
                          ),
                            SizedBox(width: 10),
                          GestureDetector(
                            onTap: () {
                              _showMonthPickerBottomSheet();
                            },
                            child: Container(
                              height: 36,
                              width: 100,
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey.shade400),
                                borderRadius: BorderRadius.circular(19),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                    Icon(Icons.calendar_today,
                                      size: 12, color: Colors.black),
                                    SizedBox(width: 6),
                                  Text(
                                    DateFormat('MMM yyyy').format(_focusedDay),
                                    style:    GoogleFonts.gabarito(
                                      fontSize: 11,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                    Icon(Icons.keyboard_arrow_down_sharp,
                                      color: Colors.black),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Divider(thickness: 1, color: Colors.grey.shade300),

                  // Summary row
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 6),
                    child: Container(
                      height: 60,
                      color: Colors.grey.shade100,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          _buildSummary("Present", present, Colors.green),
                          _buildSummary("Absent", absent, Colors.red.shade700),
                          _buildSummary("Half Day", halfDay, Colors.yellow),
                          _buildSummary("Paid Leave", leave, Colors.purple),
                          _buildSummary("Week Off", weekoff, Colors.grey),
                        ],
                      ),
                    ),
                  ),
                  Divider(thickness: 1, color: Colors.grey.shade300),

                  // Calendar
                  Container(
                    height: 673, // Fixed height so it doesn't overflow
                    color: Colors.white, // Ensure calendar background is white
                    child: TableCalendar(
                      calendarStyle: CalendarStyle(
                        outsideDaysVisible: false,
                        tablePadding: const EdgeInsets.all(5),
                        isTodayHighlighted: false,
                      ),
                      firstDay: DateTime.utc(2020, 1, 1),
                      lastDay: DateTime.utc(2030, 12, 31),
                      focusedDay: _focusedDay,
                      calendarFormat: _calendarFormat,
                      headerStyle: HeaderStyle(
                        formatButtonVisible: false,
                        leftChevronVisible: false,
                        rightChevronVisible: false,
                        titleTextStyle:  GoogleFonts.gabarito(fontSize: 0),
                      ),
                      calendarBuilders: CalendarBuilders(
                        defaultBuilder: (context, day, _) {
                          final status = attendance[DateTime(day.year, day.month, day.day)];
                          return Container(
                            margin: const EdgeInsets.all(4),
                            decoration: BoxDecoration(
                              color: _getColor(status),
                              borderRadius: BorderRadius.circular(6),
                            ),
                            child: Center(
                              child: Text(
                                "${day.day}",
                                style:    GoogleFonts.gabarito(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                  // Add some padding at the bottom to ensure white background fills screen
                  // Container(
                  //   height: 50,
                  //   color: Colors.white,
                  // ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Bottom sheet for year + month selection
  void _showMonthPickerBottomSheet() {
    int selectedYear = _focusedDay.year;
    int selectedMonth = _focusedDay.month;

    showModalBottomSheet(
      context: context,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (context) {
        return StatefulBuilder(
          builder: (context, setModalState) {
            return Container(
              padding: EdgeInsets.all(16),
              height: 400,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Select Year",
                    style:  GoogleFonts.gabarito(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 6),
                  Container(
                    width: 100,
                    height: 40,
                    padding: EdgeInsets.symmetric(horizontal: 12),
                    decoration: BoxDecoration(
                      color: Colors.greenAccent.shade100,
                      border: Border.all(color: Colors.greenAccent),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: DropdownButtonHideUnderline(
                      child: SizedBox(
                        width: 120, // controls dropdown button width
                        child: DropdownButton<int>(
                          value: selectedYear,
                          isExpanded: true,
                          icon: Icon(
                            Icons.arrow_drop_down,
                            color: Colors.black,
                          ),
                          style:  GoogleFonts.gabarito(fontSize: 15, color: Colors.black),
                          items: List.generate(10, (index) {
                            int year = DateTime.now().year - 5 + index;
                            return DropdownMenuItem(
                              value: year,
                              child: Center(
                                // keeps item text centered
                                child: Text(year.toString()),
                              ),
                            );
                          }),
                          onChanged: (val) {
                            setModalState(() {
                              selectedYear = val!;
                            });
                          },
                        ),
                      ),
                    ),
                  ),

                  SizedBox(height: 10),
                  Text(
                    "Select Month",
                    style:  GoogleFonts.gabarito(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  Expanded(
                    child: GridView.builder(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        childAspectRatio: 2.5,
                      ),
                      itemCount: 12,
                      itemBuilder: (context, index) {
                        final monthName = DateFormat(
                          'MMMM',
                        ).format(DateTime(0, index + 1));
                        final isSelected = (selectedMonth == index + 1);
                        return GestureDetector(
                          onTap: () {
                            setModalState(() {
                              selectedMonth = index + 1;
                            });
                          },
                          child: Container(
                            margin: EdgeInsets.all(6),
                            decoration: BoxDecoration(
                              color:
                              isSelected
                                  ? Colors.teal
                                  : Colors.grey.shade200,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Center(
                              child: Text(
                                monthName,
                                style:  GoogleFonts.gabarito(
                                  color:
                                  isSelected ? Colors.white : Colors.black,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  SizedBox(height: 10),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(double.infinity, 48),
                      backgroundColor: Colors.teal,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    onPressed: () {
                      setState(() {
                        _focusedDay = DateTime(selectedYear, selectedMonth, 1);
                      });
                      Navigator.pop(context);
                    },
                    child: Text(
                      "Confirm",
                      style:  GoogleFonts.gabarito(fontSize: 16, color: Colors.white),
                    ),
                  ),
                ],
              ),
            );
          },
        );
      },
    );
  }

  Widget _buildSummary(String label, int count, Color color) {
    return Row(
      children: [
        Container(width: 4, height: 60, color: color),
        SizedBox(width: 6),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 5),
            Text(label, style:  GoogleFonts.gabarito(fontSize: 14)),
            Text(
              "$count",
              style:  GoogleFonts.gabarito(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ],
    );
  }
}