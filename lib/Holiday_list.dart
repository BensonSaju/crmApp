
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
                      style:  GoogleFonts.gabarito(color: Colors.white, fontSize: 18),
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
                              style:  GoogleFonts.gabarito(color: Colors.black),
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
                      style:  GoogleFonts.gabarito(color: Colors.grey),
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
                      style:  GoogleFonts.gabarito(color: Colors.white, fontSize: 18),
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
                            style:  GoogleFonts.gabarito(
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
                            style:  GoogleFonts.gabarito(color: Color(0xFF00C4B4))),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                      TextButton(
                        child: Text("OK",
                            style:  GoogleFonts.gabarito(color: Color(0xFF00C4B4))),
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
