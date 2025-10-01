

import 'package:crmapp/addMeeting.dart';
import 'package:crmapp/addtrip.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart'; // For formatting dates

class Crmpage extends StatefulWidget {
  const Crmpage({super.key});

  @override
  State<Crmpage> createState() => _CrmpageState();
}

class _CrmpageState extends State<Crmpage> {
  DateTime _selectedDate = DateTime.now();

  // Function to format DateTime to string (e.g., "30th Sep 2025")
  String _formatDate(DateTime date) {
    final DateFormat formatter = DateFormat('d MMMM yyyy');
    return formatter.format(date);
  }

  // Function to check if selected date is today
  bool _isToday() {
    final now = DateTime.now();
    return _selectedDate.year == now.year &&
        _selectedDate.month == now.month &&
        _selectedDate.day == now.day;
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
    if (_selectedDate.isBefore(DateTime(now.year, now.month, now.day))) {
      setState(() {
        _selectedDate = _selectedDate.add(const Duration(days: 1));
      });
    }
  }

  // Function to show date picker
  Future<void> _selectDate() async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: _selectedDate,
      firstDate: DateTime(2000),
      lastDate: DateTime.now(),
    );
    if (picked != null && picked != _selectedDate) {
      setState(() {
        _selectedDate = picked;
      });
    }
  }

  // Function to get data based on selected date
  Map<String, dynamic> _getTripData(DateTime date) {
    // Replace with actual data fetching logic (e.g., from database or API)
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
            mainAxisSize: MainAxisSize.max, // Ensure Column takes full height
            children: [
              // Header
              Container(
                height: 60,
                width: double.infinity,
                color: Colors.grey.shade800,
                child:   Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Row(
                    children: [
                      Text(
                        'Trips and Meetings',
                        style:  GoogleFonts.gabarito(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              // Date and Stats Section
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
                    const SizedBox(height: 10),
                    Row(
                      children: [
                        const SizedBox(width: 10),
                        GestureDetector(
                          onTap: _previousDate,
                          child: CircleAvatar(
                            radius: 17,
                            backgroundColor: Colors.greenAccent.withOpacity(0.3),
                            child: const Padding(
                              padding: EdgeInsets.only(left: 3),
                              child: Icon(
                                Icons.arrow_back_ios,
                                size: 17,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                        const Spacer(),
                        GestureDetector(
                          onTap: _selectDate,
                          child: Row(
                            children: [
                                Icon(Icons.calendar_today, size: 20),
                                SizedBox(width: 5),
                              Text(
                                _formatDate(_selectedDate),
                                style:    GoogleFonts.gabarito(fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                          Spacer(),
                        GestureDetector(
                          onTap: _nextDate,
                          child: CircleAvatar(
                            radius: 17,
                            backgroundColor: Colors.grey.withOpacity(0.3),
                            child:   Padding(
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
                                      size: 25,
                                    ),
                                      SizedBox(width: 7),
                                    Text(
                                      tripData['distance'],
                                      style:    GoogleFonts.gabarito(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 17,
                                      ),
                                    ),
                                  ],
                                ),
                                  Text(
                                  'Total Distance',
                                  style:  GoogleFonts.gabarito(fontSize: 13),
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
                                      size: 25,
                                    ),
                                      SizedBox(width: 7),
                                    Text(
                                      tripData['meetings'],
                                      style:    GoogleFonts.gabarito(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 17,
                                      ),
                                    ),
                                  ],
                                ),
                                  Text(
                                  'Total Meeting',
                                  style:  GoogleFonts.gabarito(fontSize: 13),
                                ),
                              ],
                            ),
                              SizedBox(width: 20),
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
                                      size: 25,
                                    ),
                                      SizedBox(width: 7),
                                    Text(
                                      tripData['duration'],
                                      style:    GoogleFonts.gabarito(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 17,
                                      ),
                                    ),
                                  ],
                                ),
                                  Text(
                                  'Total Duration',
                                  style:  GoogleFonts.gabarito(fontSize: 13),
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
              // Trip Data Section
              Expanded(
                child: Container(
                  color: Colors.white,
                  child: Center(
                    child: Text(
                      tripData['trips'],
                      style:    GoogleFonts.gabarito(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
              ),
              // Button Section with Conditional Border
              Container(
                height: 80,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  // Only show border when buttons are visible
                  border: _isToday()
                      ? Border(
                    top: BorderSide(
                      color: Colors.grey.shade300,
                      width: 1,
                    ),
                  )
                      : null,
                ),
                child: _isToday()
                    ? Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Addmeeting()),
                        );
                      },
                      child: Container(
                        height: 50,
                        width: 180,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.deepOrange),
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.orange.shade100.withOpacity(0.3),
                        ),
                        child:   Center(
                          child: Text(
                            '+ Add Meeting',
                            style:  GoogleFonts.gabarito(
                              color: Colors.orange,
                              fontWeight: FontWeight.bold,
                              fontSize: 17,
                            ),
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Addtrip()),
                        );
                      },
                      child: Container(
                        height: 50,
                        width: 180,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.greenAccent),
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.greenAccent,
                        ),
                        child:   Center(
                          child: Text(
                            'Start Trip',
                            style:  GoogleFonts.gabarito(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 17,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                )
                    :   SizedBox(), // Empty widget when buttons are hidden
              ),
            ],
          ),
        ),
      ),
    );
  }
}