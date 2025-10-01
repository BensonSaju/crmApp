import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CurrentEmploymentScreen extends StatefulWidget {
  const CurrentEmploymentScreen({super.key});

  @override
  State<CurrentEmploymentScreen> createState() => _CurrentEmploymentScreenState();
}

class _CurrentEmploymentScreenState extends State<CurrentEmploymentScreen> {
  // Form controllers
  final TextEditingController _jobTitleController = TextEditingController(text: 'flutter intern');
  final TextEditingController _dateOfJoiningController = TextEditingController(text: '04 Sep 2025');
  final TextEditingController _dateOfLeavingController = TextEditingController(text: 'DD/MM/YYYY');
  final TextEditingController _employeeIdController = TextEditingController(text: '1234');
  final TextEditingController _officialEmailController = TextEditingController(text: 'benson.flutter.tinos@gmail.com');
  final TextEditingController _pfAcNoController = TextEditingController(text: 'Enter the PF A/C No.');
  final TextEditingController _esiAcNoController = TextEditingController(text: 'Enter the ESI A/C No.');

  // Dropdown values - Only Employee Type
  String? selectedEmployeeType;

  // Dropdown options
  final List<String> employeeTypeOptions = ['Full Time', 'Part Time', 'Contract', 'Intern'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        color: Colors.white, // ✅ Background color
        padding:  EdgeInsets.all(16),
        child: SizedBox(
          width: double.infinity,
          height: 50,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.teal,
              foregroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(6),
              ),
            ),
            onPressed: () {},
            child:   Text(
              "Save Details",
              style:  GoogleFonts.gabarito(fontSize: 16, fontWeight: FontWeight.w500),
            ),
          ),
        ),
      ),
      body: Container(
        color: Colors.black,
        child: SafeArea(
          child: Column(
            children: [
              // Header Section
              Container(
                height: 60,
                width: double.infinity,

                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border( bottom: BorderSide(color: Colors.grey.shade200,width: 2))
                ),
                child: Row(
                  children: [
                    SizedBox(width: 10),
                    IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(
                        CupertinoIcons.left_chevron,
                        size: 30,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(width: 15),
                    Text(
                      'Current Employment',
                      style:  GoogleFonts.gabarito(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Spacer(),
                    Container(
                      height: 40,
                      width: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        color: Colors.teal.shade300,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(Icons.picture_as_pdf_outlined, color: Colors.white, size: 22),
                          Text('Biodata', style:  GoogleFonts.gabarito(color: Colors.white)),
                        ],
                      ),
                    ),
                    SizedBox(width: 10),
                  ],
                ),
              ),

              // Main Content Section
              Expanded(
                child: Container(
                  width: double.infinity,
                  color: Colors.white,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 20),

                          // Branch Section - Text Field
                          _buildSectionTitle('Branch'),
                          SizedBox(height: 5),
                          TextFormField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(3),
                                borderSide: BorderSide.none,
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(3),
                                borderSide: BorderSide.none,
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(3),
                                borderSide: BorderSide(color: Colors.teal.shade300, width: 1.5),
                              ),
                              hintText: 'Main Branch',
                              filled: true,
                              fillColor: Colors.grey.shade100,
                            ),
                          ),
                          SizedBox(height: 15),

                          // Departments Section - Text Field
                          _buildSectionTitle('Departments'),
                          SizedBox(height: 5),
                          TextFormField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(3),
                                borderSide: BorderSide.none,
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(3),
                                borderSide: BorderSide.none,
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(3),
                                borderSide: BorderSide(color: Colors.teal.shade300, width: 1.5),
                              ),
                              hintText: 'All Departments Assigned',
                              filled: true,
                              fillColor: Colors.grey.shade100,
                            ),
                          ),
                          SizedBox(height: 15),

                          // Employee Type Section - Dropdown (Only dropdown with border)
                          _buildSectionTitle('Employee Type'),
                          SizedBox(height: 5),
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(3),
                              border: Border.all(color: Colors.grey),
                            ),
                            child: DropdownButtonFormField<String>(
                              value: selectedEmployeeType,
                              onChanged: (String? newValue) {
                                setState(() {
                                  selectedEmployeeType = newValue;
                                });
                              },
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(3),
                                  borderSide: BorderSide.none,
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(3),
                                  borderSide: BorderSide.none,
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(3),
                                  borderSide: BorderSide(color: Colors.teal.shade300, width: 1.5),
                                ),
                                filled: true,
                                fillColor: Colors.transparent,
                                contentPadding: EdgeInsets.symmetric(horizontal: 12),
                              ),
                              items: employeeTypeOptions.map<DropdownMenuItem<String>>((String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value),
                                );
                              }).toList(),
                              hint: Text('eg. Full Time', style:  GoogleFonts.gabarito(color: Colors.grey)),
                              isExpanded: true,
                            ),
                          ),
                          SizedBox(height: 15),

                          // Job Title Section
                          _buildSectionTitle('Job Title'),
                          SizedBox(height: 5),
                          TextFormField(
                            controller: _jobTitleController,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(3),
                                borderSide: BorderSide.none,
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(3),
                                borderSide: BorderSide.none,
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(3),
                                borderSide: BorderSide(color: Colors.teal.shade300, width: 1.5),
                              ),
                              hintText: 'Enter Job Title',
                              filled: true,
                              fillColor: Colors.grey.shade100,
                            ),
                          ),
                          SizedBox(height: 15),

                          // Date Of Joining Section
                          _buildSectionTitle('Date Of Joining'),
                          SizedBox(height: 5),
                          TextFormField(
                            controller: _dateOfJoiningController,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(3),
                                borderSide: BorderSide.none,
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(3),
                                borderSide: BorderSide.none,
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(3),
                                borderSide: BorderSide(color: Colors.teal.shade300, width: 1.5),
                              ),
                              hintText: 'DD/MM/YYYY',
                              filled: true,
                              fillColor: Colors.grey.shade100,
                              suffixIcon: IconButton(
                                icon: Icon(Icons.calendar_today, color: Colors.grey.shade600),
                                onPressed: () {
                                  _selectDate(context, _dateOfJoiningController);
                                },
                              ),
                            ),
                            readOnly: true,
                            onTap: () {
                              _selectDate(context, _dateOfJoiningController);
                            },
                          ),
                          SizedBox(height: 15),

                          // Date of Leaving Section
                          _buildSectionTitle('Date of Leaving'),
                          SizedBox(height: 5),
                          TextFormField(
                            controller: _dateOfLeavingController,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(3),
                                borderSide: BorderSide.none,
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(3),
                                borderSide: BorderSide.none,
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(3),
                                borderSide: BorderSide(color: Colors.teal.shade300, width: 1.5),
                              ),
                              hintText: 'DD/MM/YYYY',
                              filled: true,
                              fillColor: Colors.grey.shade100,
                              suffixIcon: IconButton(
                                icon: Icon(Icons.calendar_today, color: Colors.grey.shade600),
                                onPressed: () {
                                  _selectDate(context, _dateOfLeavingController);
                                },
                              ),
                            ),
                            readOnly: true,
                            onTap: () {
                              _selectDate(context, _dateOfLeavingController);
                            },
                          ),
                          SizedBox(height: 15),

                          // Employee ID Section
                          _buildSectionTitle('Employee ID'),
                          SizedBox(height: 5),
                          TextFormField(
                            controller: _employeeIdController,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(3),
                                borderSide: BorderSide.none,
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(3),
                                borderSide: BorderSide.none,
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(3),
                                borderSide: BorderSide(color: Colors.teal.shade300, width: 1.5),
                              ),
                              hintText: 'Enter Employee ID',
                              filled: true,
                              fillColor: Colors.grey.shade100,
                            ),
                          ),
                          SizedBox(height: 15),

                          // Official Email ID Section
                          _buildSectionTitle('Official Email ID'),
                          SizedBox(height: 5),
                          TextFormField(
                            controller: _officialEmailController,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(3),
                                borderSide: BorderSide.none,
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(3),
                                borderSide: BorderSide.none,
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(3),
                                borderSide: BorderSide(color: Colors.teal.shade300, width: 1.5),
                              ),
                              hintText: 'Enter Official Email ID',
                              filled: true,
                              fillColor: Colors.grey.shade100,
                            ),
                            keyboardType: TextInputType.emailAddress,
                          ),
                          SizedBox(height: 15),

                          // PF A/C No. Section
                          _buildSectionTitle('PF A/C No.'),
                          SizedBox(height: 5),
                          TextFormField(
                            controller: _pfAcNoController,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(3),
                                borderSide: BorderSide.none,
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(3),
                                borderSide: BorderSide.none,
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(3),
                                borderSide: BorderSide(color: Colors.teal.shade300, width: 1.5),
                              ),
                              hintText: 'Enter the PF A/C No.',
                              filled: true,
                              fillColor: Colors.grey.shade100,
                            ),
                          ),
                          SizedBox(height: 15),

                          // ESI A/C No. Section
                          _buildSectionTitle('ESI A/C No.'),
                          SizedBox(height: 5),
                          TextFormField(
                            controller: _esiAcNoController,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(3),
                                borderSide: BorderSide.none,
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(3),
                                borderSide: BorderSide.none,
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(3),
                                borderSide: BorderSide(color: Colors.teal.shade300, width: 1.5),
                              ),
                              hintText: 'Enter the ESI A/C No.',
                              filled: true,
                              fillColor: Colors.grey.shade100,
                            ),
                          ),
                          SizedBox(height: 30),


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

  // Helper method to build section titles
  Widget _buildSectionTitle(String title) {
    return Text(
      title,
      style:  GoogleFonts.gabarito(
        color: Colors.grey,
        fontSize: 14,
        fontWeight: FontWeight.w500,
      ),
    );
  }

  // Method to select date
  Future<void> _selectDate(BuildContext context, TextEditingController controller) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
    );

    if (picked != null) {
      setState(() {
        controller.text = "${picked.day.toString().padLeft(2, '0')} ${_getMonthName(picked.month)} ${picked.year}";
      });
    }
  }

  // Helper method to get month name
  String _getMonthName(int month) {
    const months = ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'];
    return months[month - 1];
  }

  // Method to handle save functionality

}