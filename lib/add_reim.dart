// import 'package:flutter/material.dart';
//
// class AddReim extends StatelessWidget {
//   const AddReim({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white, // White background
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: SingleChildScrollView(
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               // Payment Amount
//               TextField(
//                 decoration: InputDecoration(
//                   labelText: "Payment Amount",
//                   prefixText: "₹ ",
//                   labelStyle: TextStyle(color: Colors.teal),
//                   enabledBorder: OutlineInputBorder(
//                     borderSide: BorderSide(color: Colors.teal),
//                     borderRadius: BorderRadius.circular(6),
//                   ),
//                   focusedBorder: OutlineInputBorder(
//                     borderSide: BorderSide(color: Colors.teal, width: 2),
//                     borderRadius: BorderRadius.circular(6),
//                   ),
//                 ),
//                 keyboardType: TextInputType.number,
//               ),
//               SizedBox(height: 12),
//
//               // Date & Notes
//               Row(
//                 children: [
//                   Expanded(
//                     child: TextField(
//                       decoration: InputDecoration(
//                         hintText: "Date of Pay...",
//                         border: OutlineInputBorder(),
//                       ),
//                     ),
//                   ),
//                   SizedBox(width: 10),
//                   Expanded(
//                     child: TextField(
//                       decoration: InputDecoration(
//                         hintText: "Notes",
//                         border: OutlineInputBorder(),
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//               SizedBox(height: 20),
//
//               // Add Attachments
//               Text(
//                 "Add Attachments",
//                 style: TextStyle(fontWeight: FontWeight.bold),
//               ),
//               SizedBox(height: 10),
//               Container(
//                 height: 60,
//                 width: 100,
//                 decoration: BoxDecoration(
//                   border: Border.all(color: Colors.grey),
//                   borderRadius: BorderRadius.circular(6),
//                 ),
//                 child: Center(
//                   child: Text(
//                     "ADD FILE",
//                     style: TextStyle(color: Colors.teal),
//                   ),
//                 ),
//               ),
//               SizedBox(height: 30),
//
//               // Submit Button
//               SizedBox(
//                 width: double.infinity,
//                 height: 50,
//                 child: ElevatedButton(
//                   style: ElevatedButton.styleFrom(
//                     backgroundColor: Colors.teal,
//                   ),
//                   onPressed: () {},
//                   child: Text(
//                     "Add Reimbursement",
//                     style: TextStyle(color: Colors.white, fontSize: 16),
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
///
// import 'package:flutter/material.dart';
//
// class AddReim extends StatelessWidget {
//   const AddReim({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: SingleChildScrollView(
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               // Payment Amount
//               TextField(
//                 decoration: InputDecoration(
//                   labelText: "Payment Amount",
//                   prefixText: "₹ ",
//                   labelStyle: TextStyle(color: Colors.teal),
//                   enabledBorder: OutlineInputBorder(
//                     borderSide: BorderSide(color: Colors.grey), // Grey border
//                     borderRadius: BorderRadius.circular(6),
//                   ),
//                   focusedBorder: OutlineInputBorder(
//                     borderSide: BorderSide(color: Colors.teal, width: 2),
//                     borderRadius: BorderRadius.circular(6),
//                   ),
//                 ),
//                 keyboardType: TextInputType.number,
//               ),
//               SizedBox(height: 12),
//
//               // Date & Notes
//               Row(
//                 children: [
//                   Expanded(
//                     child: TextField(
//                       decoration: InputDecoration(
//                         hintText: "Date of Pay...",
//                         enabledBorder: OutlineInputBorder(
//                           borderSide: BorderSide(color: Colors.grey),
//                           borderRadius: BorderRadius.circular(6),
//                         ),
//                         focusedBorder: OutlineInputBorder(
//                           borderSide:
//                           BorderSide(color: Colors.teal, width: 2),
//                           borderRadius: BorderRadius.circular(6),
//                         ),
//                       ),
//                     ),
//                   ),
//                   SizedBox(width: 10),
//                   Expanded(
//                     child: TextField(
//                       decoration: InputDecoration(
//                         hintText: "Notes",
//                         enabledBorder: OutlineInputBorder(
//                           borderSide: BorderSide(color: Colors.grey),
//                           borderRadius: BorderRadius.circular(6),
//                         ),
//                         focusedBorder: OutlineInputBorder(
//                           borderSide:
//                           BorderSide(color: Colors.teal, width: 2),
//                           borderRadius: BorderRadius.circular(6),
//                         ),
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//               SizedBox(height: 20),
//
//               // Add Attachments
//               Text(
//                 "Add Attachments",
//                 style: TextStyle(fontWeight: FontWeight.bold),
//               ),
//               SizedBox(height: 10),
//               Container(
//                 height: 60,
//                 width: 100,
//                 decoration: BoxDecoration(
//                   border: Border.all(color: Colors.grey),
//                   borderRadius: BorderRadius.circular(6),
//                 ),
//                 child: Center(
//                   child: Text(
//                     "ADD FILE",
//                     style: TextStyle(color: Colors.teal),
//                   ),
//                 ),
//               ),
//               SizedBox(height: 80), // leave space for bottom button
//             ],
//           ),
//         ),
//       ),
//
//       // Bottom button → opens BottomSheet
//       bottomNavigationBar: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: SizedBox(
//           width: double.infinity,
//           height: 50,
//           child: ElevatedButton(
//
//             style: ElevatedButton.styleFrom(
//               backgroundColor: Colors.teal,
//               shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(9))
//             ),
//             onPressed: () {},
//             child: Text(
//               "Add Reimbursement",
//               style: TextStyle(color: Colors.white, fontSize: 16),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
///
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AddReim extends StatefulWidget {
  const AddReim({super.key});

  @override
  State<AddReim> createState() => _AddReimState();
}

class _AddReimState extends State<AddReim> {
  TextEditingController _dateController = TextEditingController();

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
      builder: (BuildContext context, Widget? child) {
        return Theme(
          data: ThemeData.light().copyWith(
            colorScheme: ColorScheme.light(
              primary: Colors.teal, // Header background color
              onPrimary: Colors.white, // Header text color
            ),
            dialogBackgroundColor: Colors.white,
          ),
          child: child!,
        );
      },
    );

    if (picked != null) {
      setState(() {
        // Format the date as you prefer
        _dateController.text = "${picked.day}/${picked.month}/${picked.year}";
        // Alternative formats you can use:
        // _dateController.text = "${picked.day}-${picked.month}-${picked.year}";
        // _dateController.text = "${picked.year}-${picked.month}-${picked.day}";
        // _dateController.text = DateFormat('dd/MM/yyyy').format(picked);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Payment Amount
              TextField(
                decoration: InputDecoration(
                  labelText: "Payment Amount",
                  prefixText: "₹ ",
                  labelStyle:  GoogleFonts.gabarito(color: Colors.teal),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                    borderRadius: BorderRadius.circular(6),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.teal, width: 2),
                    borderRadius: BorderRadius.circular(6),
                  ),
                ),
                keyboardType: TextInputType.number,
              ),
              SizedBox(height: 12),

              // Date & Notes
              Row(
                children: [
                  Expanded(
                    child: TextField(
                      controller: _dateController, // Connect the controller
                      readOnly: true, // Make it read-only so keyboard doesn't show
                      onTap: () => _selectDate(context), // Open date picker on tap
                      decoration: InputDecoration(
                        hintText: "Date of Pay...",
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey),
                          borderRadius: BorderRadius.circular(6),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.teal, width: 2),
                          borderRadius: BorderRadius.circular(6),
                        ),
                        suffixIcon: Icon(Icons.calendar_today, color: Colors.grey),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Notes",
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey),
                          borderRadius: BorderRadius.circular(6),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.teal, width: 2),
                          borderRadius: BorderRadius.circular(6),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),

              // Add Attachments
              Text(
                "Add Attachments",
                style:  GoogleFonts.gabarito(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Container(
                height: 60,
                width: 100,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(6),
                ),
                child: Center(
                  child: Text(
                    "ADD FILE",
                    style:  GoogleFonts.gabarito(color: Colors.teal),
                  ),
                ),
              ),
              SizedBox(height: 80), // leave space for bottom button
            ],
          ),
        ),
      ),

      // Bottom button → opens BottomSheet
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SizedBox(
          width: double.infinity,
          height: 50,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.teal,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(9))
            ),
            onPressed: () {},
            child: Text(
              "Add Reimbursement",
              style:  GoogleFonts.gabarito(color: Colors.white, fontSize: 16),
            ),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _dateController.dispose(); // Clean up the controller
    super.dispose();
  }
}