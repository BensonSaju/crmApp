//
// import 'package:flutter/material.dart';
//
// class PersonalDetailsScreen extends StatefulWidget {
//   const PersonalDetailsScreen({super.key});
//
//   @override
//   State<PersonalDetailsScreen> createState() => _PersonalDetailsScreenState();
// }
//
// class _PersonalDetailsScreenState extends State<PersonalDetailsScreen> {
//   final TextEditingController nameController =
//   TextEditingController(text: "Benson Saju");
//   final TextEditingController mobileController =
//   TextEditingController(text: "8921705456");
//   final TextEditingController emailController = TextEditingController();
//   final TextEditingController dobController =
//   TextEditingController(text: "17 Sep 2005");
//   final TextEditingController guardianController = TextEditingController();
//   final TextEditingController emergencyNameController = TextEditingController();
//   final TextEditingController emergencyRelationController =
//   TextEditingController();
//   final TextEditingController emergencyMobileController =
//   TextEditingController();
//   final TextEditingController emergencyAddressController =
//   TextEditingController();
//
//   String? gender;
//   String? maritalStatus;
//   String? bloodGroup;
//
//   final Color primaryColor = Colors.teal;
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white, // ✅ White background
//       appBar: AppBar(
//         elevation: 0,
//         backgroundColor: Colors.white,
//         leading: const Icon(Icons.arrow_back, color: Colors.black),
//         title: const Text(
//           "Personal Details",
//           style: TextStyle(color: Colors.black, fontWeight: FontWeight.w600),
//         ),
//         actions: [
//           ElevatedButton.icon(
//             style: ElevatedButton.styleFrom(
//               backgroundColor: primaryColor,
//               foregroundColor: Colors.white,
//               padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
//               shape: RoundedRectangleBorder(
//                 borderRadius: BorderRadius.circular(6),
//               ),
//             ),
//             onPressed: () {},
//             icon: const Icon(Icons.picture_as_pdf, size: 18),
//             label: const Text("Biodata"),
//           ),
//           const SizedBox(width: 10),
//         ],
//       ),
//       body: SafeArea(
//         child: SingleChildScrollView(
//           padding: const EdgeInsets.all(16),
//           child: Column(
//             children: [
//               _buildTextField("Staff Name", nameController, readOnly: true),
//               _buildPhoneField("Mobile Number", mobileController),
//               _buildTextField("Personal Email ID", emailController,
//                   hint: "eg. personal_email@gmail.com"),
//               _buildTextField("Date Of Birth", dobController, readOnly: true),
//               _buildDropdown("Gender", ["Male", "Female", "Other"], (val) {
//                 setState(() => gender = val);
//               }),
//               _buildDropdown(
//                   "Marital Status", ["Unmarried", "Married"], (val) {
//                 setState(() => maritalStatus = val);
//               }),
//               _buildDropdown("Blood Group",
//                   ["O+", "A+", "B+", "AB+", "O-", "A-", "B-", "AB-"], (val) {
//                     setState(() => bloodGroup = val);
//                   }),
//               _buildTextField("Guardian's Name", guardianController,
//                   hint: "eg. Name"),
//               _buildTextField("Emergency Contact Name",
//                   emergencyNameController, hint: "Contact Name"),
//               _buildTextField("Emergency Contact Relationship",
//                   emergencyRelationController,
//                   hint: "eg. Father"),
//               _buildPhoneField(
//                   "Emergency Contact Mobile", emergencyMobileController),
//               _buildTextField("Emergency Contact Address",
//                   emergencyAddressController,
//                   hint: "eg. XYZ Society, sector 101, Gurgaon"),
//               const SizedBox(height: 30),
//               SizedBox(
//                 width: double.infinity,
//                 height: 50,
//                 child: ElevatedButton(
//                   style: ElevatedButton.styleFrom(
//                     backgroundColor: primaryColor,
//                     foregroundColor: Colors.white,
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(6),
//                     ),
//                   ),
//                   onPressed: () {},
//                   child: const Text(
//                     "Save Details",
//                     style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
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
//   Widget _buildTextField(String label, TextEditingController controller,
//       {String? hint, bool readOnly = false}) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(vertical: 8),
//       child: TextField(
//         controller: controller,
//         readOnly: readOnly,
//         decoration: InputDecoration(
//           labelText: label,
//           hintText: hint,
//           labelStyle: const TextStyle(color: Colors.black54),
//           hintStyle: const TextStyle(color: Colors.grey),
//           border: OutlineInputBorder(
//             borderRadius: BorderRadius.circular(6),
//             borderSide: const BorderSide(color: Colors.grey),
//           ),
//           enabledBorder: OutlineInputBorder(
//             borderRadius: BorderRadius.circular(6),
//             borderSide: const BorderSide(color: Colors.grey),
//           ),
//           focusedBorder: OutlineInputBorder(
//             borderRadius: BorderRadius.circular(6),
//             borderSide: BorderSide(color: primaryColor, width: 1.5),
//           ),
//           contentPadding:
//           const EdgeInsets.symmetric(horizontal: 12, vertical: 14),
//         ),
//       ),
//     );
//   }
//
//   Widget _buildPhoneField(String label, TextEditingController controller) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(vertical: 8),
//       child: Row(
//         children: [
//           Container(
//             padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 14),
//             decoration: BoxDecoration(
//               border: Border.all(color: Colors.grey),
//               borderRadius: BorderRadius.circular(6),
//             ),
//             child: const Text("+91", style: TextStyle(fontWeight: FontWeight.w500)),
//           ),
//           const SizedBox(width: 8),
//           Expanded(
//             child: TextField(
//               controller: controller,
//               keyboardType: TextInputType.phone,
//               decoration: InputDecoration(
//                 labelText: label,
//                 border: OutlineInputBorder(
//                   borderRadius: BorderRadius.circular(6),
//                 ),
//                 enabledBorder: OutlineInputBorder(
//                   borderRadius: BorderRadius.circular(6),
//                   borderSide: const BorderSide(color: Colors.grey),
//                 ),
//                 focusedBorder: OutlineInputBorder(
//                   borderRadius: BorderRadius.circular(6),
//                   borderSide: BorderSide(color: primaryColor, width: 1.5),
//                 ),
//                 contentPadding:
//                 const EdgeInsets.symmetric(horizontal: 12, vertical: 14),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
//
//   Widget _buildDropdown(
//       String label, List<String> items, ValueChanged<String?> onChanged) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(vertical: 8),
//       child: DropdownButtonFormField<String>(
//         decoration: InputDecoration(
//           labelText: label,
//           labelStyle: const TextStyle(color: Colors.black54),
//           border: OutlineInputBorder(
//             borderRadius: BorderRadius.circular(6),
//           ),
//           enabledBorder: OutlineInputBorder(
//             borderRadius: BorderRadius.circular(6),
//             borderSide: const BorderSide(color: Colors.grey),
//           ),
//           focusedBorder: OutlineInputBorder(
//             borderRadius: BorderRadius.circular(6),
//             borderSide: BorderSide(color: Colors.teal, width: 1.5),
//           ),
//           contentPadding:
//           const EdgeInsets.symmetric(horizontal: 12, vertical: 14),
//         ),
//         items: items
//             .map((e) => DropdownMenuItem(value: e, child: Text(e)))
//             .toList(),
//         onChanged: onChanged,
//       ),
//     );
//   }
// }
// class PersonalDetailsScreen extends StatefulWidget {
//   const PersonalDetailsScreen({super.key});
//
//   @override
//   State<PersonalDetailsScreen> createState() => _PersonalDetailsScreenState();
// }
//
// class _PersonalDetailsScreenState extends State<PersonalDetailsScreen> {
//   final TextEditingController nameController =
//   TextEditingController(text: "Benson Saju");
//   final TextEditingController mobileController =
//   TextEditingController(text: "8921705456");
//   final TextEditingController emailController =
//   TextEditingController(text: "personal.email@gmail.com");
//   final TextEditingController dobController =
//   TextEditingController(text: "17 Sep 2005");
//   final TextEditingController guardianController = TextEditingController();
//   final TextEditingController emergencyNameController =
//   TextEditingController();
//   final TextEditingController emergencyRelationController =
//   TextEditingController();
//   final TextEditingController emergencyMobileController =
//   TextEditingController();
//   final TextEditingController emergencyAddressController =
//   TextEditingController();
//
//   String? gender = "e.g. Male";
//   String? maritalStatus = "e.g. Unmarried";
//   String? bloodGroup = "e.g. O+";
//
//   final Color primaryColor = const Color(0xFF00A651); // Green from the image
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//
//       bottomNavigationBar: Padding(
//         padding:  EdgeInsets.all(16),
//         child: SizedBox(
//           width: double.infinity,
//           height: 50,
//           child: ElevatedButton(
//             style: ElevatedButton.styleFrom(
//               backgroundColor: primaryColor,
//               foregroundColor: Colors.white,
//               elevation: 0,
//               shape: RoundedRectangleBorder(
//                 borderRadius: BorderRadius.circular(6),
//               ),
//             ),
//             onPressed: () {},
//             child: const Text(
//               "Save Details",
//               style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
//             ),
//           ),
//         ),
//       ),
//       body: Container(
//
//         child: SafeArea(
//           child: SingleChildScrollView(
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Container(
//                   height: 60,
//                   width: double.infinity,
//                   color: Colors.white,
//                   child: Row(
//                     children: [
//                       SizedBox(width: 10),
//                       IconButton(onPressed: (){
//                         Navigator.pop(context);
//                       },
//                         icon: Icon( CupertinoIcons.left_chevron,
//                           size: 30,
//                           color: Colors.black,
//                         ),),
//                       SizedBox(width: 25),
//                       Text(
//                         'Benson Saju',
//                         style: TextStyle(
//                           fontSize: 20,
//
//                         ),
//                       ),
//                       Spacer(),
//                       Container(
//                         height: 40,
//                         width: 100,
//                         decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(4),
//                             color: Colors.teal.shade300
//                         ),
//                         child:
//                         Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                           children: [
//                             Icon(Icons.picture_as_pdf_outlined,color: Colors.white,size: 22,),
//                             Text('Biodata',style: TextStyle(color: Colors.white),)
//                           ],
//                         ),
//                       ),
//                       SizedBox(width: 10,),
//                     ],
//                   ),
//                 ),
//                 _buildTextField("Staff Name", nameController, readOnly: true),
//                 _buildPhoneField("Mobile Number", mobileController,
//                     readOnly: true),
//                 _buildTextField(
//                     "Personal Email ID", emailController,
//                     hint: "e.g. personal.email@gmail.com"),
//                 _buildTextField("Date of Birth", dobController, readOnly: true),
//                 _buildDropdown("Gender", ["e.g. Male", "e.g. Female"],
//                         (val) => gender = val, initialValue: gender),
//                 _buildDropdown("Marital Status", ["e.g. Unmarried", "e.g. Married"],
//                         (val) => maritalStatus = val, initialValue: maritalStatus),
//                 _buildDropdown(
//                     "Blood Group",
//                     ["e.g. O+", "e.g. A+", "e.g. B+", "e.g. AB+", "e.g. O-", "e.g. A-", "e.g. B-", "e.g. AB-"],
//                         (val) => bloodGroup = val,
//                     initialValue: bloodGroup),
//                 _buildTextField("Guardian's Name", guardianController,
//                     hint: "e.g. Name"),
//                 const SizedBox(height: 20),
//                 const Text(
//                   "Emergency Contact",
//                   style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//                 ),
//                 _buildTextField("Emergency Contact Name", emergencyNameController,
//                     hint: "e.g. Contact Name"),
//                 _buildTextField("Emergency Contact Relationship",
//                     emergencyRelationController, hint: "e.g. Father"),
//                 _buildPhoneField("Emergency Contact Mobile",
//                     emergencyMobileController),
//                 _buildTextField("Emergency Contact Address",
//                     emergencyAddressController,
//                     hint: "e.g. XYZ Society, sector 101, Gurgaon"),
//                 const SizedBox(height: 80), // Space for bottom button
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
//
//   Widget _buildTextField(String label, TextEditingController controller,
//       {String? hint, bool readOnly = false}) {
//     return Padding(
//       padding: const EdgeInsets.only(top: 12, bottom: 6),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Text(
//             label,
//             style: const TextStyle(
//                 fontWeight: FontWeight.w500, fontSize: 14, color: Colors.black87),
//           ),
//           const SizedBox(height: 6),
//           TextField(
//             controller: controller,
//             readOnly: readOnly,
//             decoration: InputDecoration(
//               hintText: hint,
//               filled: readOnly,
//               fillColor: readOnly ? Colors.grey.shade100 : null,
//               border: OutlineInputBorder(
//                 borderRadius: BorderRadius.circular(6),
//                 borderSide: const BorderSide(color: Colors.grey),
//               ),
//               enabledBorder: OutlineInputBorder(
//                 borderRadius: BorderRadius.circular(6),
//                 borderSide: const BorderSide(color: Colors.grey),
//               ),
//               focusedBorder: OutlineInputBorder(
//                 borderRadius: BorderRadius.circular(6),
//                 borderSide: BorderSide(color: primaryColor, width: 1.5),
//               ),
//               contentPadding:
//               const EdgeInsets.symmetric(horizontal: 12, vertical: 14),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
//
//   Widget _buildPhoneField(String label, TextEditingController controller,
//       {bool readOnly = false}) {
//     return Padding(
//       padding: const EdgeInsets.only(top: 12, bottom: 6),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Text(
//             label,
//             style: const TextStyle(
//                 fontWeight: FontWeight.w500, fontSize: 14, color: Colors.black87),
//           ),
//           const SizedBox(height: 6),
//           IntlPhoneField(
//             controller: controller,
//             initialCountryCode: 'IN',
//             readOnly: readOnly,
//             decoration: InputDecoration(
//               filled: readOnly,
//               fillColor: readOnly ? Colors.grey.shade100 : null,
//               border: OutlineInputBorder(
//                 borderRadius: BorderRadius.circular(6),
//                 borderSide: const BorderSide(color: Colors.grey),
//               ),
//               enabledBorder: OutlineInputBorder(
//                 borderRadius: BorderRadius.circular(6),
//                 borderSide: const BorderSide(color: Colors.grey),
//               ),
//               focusedBorder: OutlineInputBorder(
//                 borderRadius: BorderRadius.circular(6),
//                 borderSide: BorderSide(color: primaryColor, width: 1.5),
//               ),
//               contentPadding:
//               const EdgeInsets.symmetric(horizontal: 12, vertical: 14),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
//
//   Widget _buildDropdown(String label, List<String> items,
//       ValueChanged<String?> onChanged, {String? initialValue}) {
//     return Padding(
//       padding: const EdgeInsets.only(top: 12, bottom: 6),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Text(
//             label,
//             style: const TextStyle(
//                 fontWeight: FontWeight.w500, fontSize: 14, color: Colors.black87),
//           ),
//           const SizedBox(height: 6),
//           DropdownButtonFormField<String>(
//             value: initialValue,
//             decoration: InputDecoration(
//               border: OutlineInputBorder(
//                 borderRadius: BorderRadius.circular(6),
//                 borderSide: const BorderSide(color: Colors.grey),
//               ),
//               enabledBorder: OutlineInputBorder(
//                 borderRadius: BorderRadius.circular(6),
//                 borderSide: const BorderSide(color: Colors.grey),
//               ),
//               focusedBorder: OutlineInputBorder(
//                 borderRadius: BorderRadius.circular(6),
//                 borderSide: BorderSide(color: primaryColor, width: 1.5),
//               ),
//               contentPadding:
//               const EdgeInsets.symmetric(horizontal: 12, vertical: 14),
//             ),
//             items: items.map((String value) {
//               return DropdownMenuItem<String>(
//                 value: value,
//                 child: Text(value),
//               );
//             }).toList(),
//             onChanged: onChanged,
//           ),
//         ],
//       ),
//     );
//   }
// }
///...
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:intl_phone_field/intl_phone_field.dart';
//
// class PersonalDetailsScreen extends StatelessWidget {
//   const PersonalDetailsScreen({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         color: Colors.black,
//         child: SafeArea(
//           child: Column(
//             children: [
//               // Header Section
//               Container(
//                 height: 60,
//                 width: double.infinity,
//                 color: Colors.white,
//                 child: Row(
//                   children: [
//                     const SizedBox(width: 10),
//                     IconButton(
//                       onPressed: () {
//                         Navigator.pop(context);
//                       },
//                       icon: const Icon(
//                         CupertinoIcons.left_chevron,
//                         size: 30,
//                         color: Colors.black,
//                       ),
//                     ),
//                     const SizedBox(width: 15),
//                     const Text(
//                       'Personal Details',
//                       style: TextStyle(
//                         fontSize: 18,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                     const Spacer(),
//                     Container(
//                       height: 40,
//                       width: 100,
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(4),
//                         color: Colors.teal.shade300,
//                       ),
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                         children: [
//                           Icon(Icons.picture_as_pdf_outlined, color: Colors.white, size: 22),
//                           Text('Biodata', style: TextStyle(color: Colors.white)),
//                         ],
//                       ),
//                     ),
//                     const SizedBox(width: 10),
//                   ],
//                 ),
//               ),
//
//               // Main Content Section
//               Expanded(
//                 child: Container(
//                   width: double.infinity,
//                   color: Colors.white,
//                   child: Padding(
//                     padding: const EdgeInsets.symmetric(horizontal: 20),
//                     child: SingleChildScrollView(
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           const SizedBox(height: 20),
//
//                           // Staff Name Section
//                           _buildSectionTitle('Staff Name'),
//                           const SizedBox(height: 5),
//                           TextFormField(
//                             decoration: InputDecoration(
//                               border: OutlineInputBorder(
//                                 borderRadius: BorderRadius.circular(3),
//                                 borderSide: BorderSide.none,
//                               ),
//                               filled: true,
//                               fillColor: Colors.grey.shade100,
//                               hintText: 'Benson Saju',
//                             ),
//                           ),
//                           const SizedBox(height: 15),
//
//                           // Mobile Number Section
//                           _buildSectionTitle('Mobile Number'),
//                           const SizedBox(height: 5),
//                           IntlPhoneField(
//                             decoration: InputDecoration(
//                               hintText: '8921705456',
//                               border: OutlineInputBorder(
//                                 borderRadius: BorderRadius.circular(6),
//                                 borderSide: const BorderSide(color: Colors.grey),
//                               ),
//                               enabledBorder: OutlineInputBorder(
//                                 borderRadius: BorderRadius.circular(6),
//                                 borderSide: const BorderSide(color: Colors.grey),
//                               ),
//                               focusedBorder: OutlineInputBorder(
//                                 borderRadius: BorderRadius.circular(6),
//                                 borderSide: BorderSide(color: Colors.teal.shade300, width: 1.5),
//                               ),
//                               filled: true,
//                               fillColor: Colors.grey.shade100,
//                             ),
//                             initialCountryCode: 'IN',
//                             onChanged: (phone) {
//                               print(phone.completeNumber);
//                             },
//                           ),
//                           const SizedBox(height: 15),
//
//                           // Personal Email ID Section
//                           _buildSectionTitle('Personal Email ID'),
//                           const SizedBox(height: 5),
//                           TextFormField(
//                             decoration: InputDecoration(
//                               border: OutlineInputBorder(
//                                 borderRadius: BorderRadius.circular(3),
//                                 borderSide: const BorderSide(color: Colors.black),
//                               ),
//                               enabledBorder: OutlineInputBorder(
//                                 borderRadius: BorderRadius.circular(3),
//                                 borderSide: BorderSide(color: Colors.grey.shade500),
//                               ),
//                               focusedBorder: OutlineInputBorder(
//                                 borderRadius: BorderRadius.circular(3),
//                                 borderSide: BorderSide(color: Colors.teal.shade300),
//                               ),
//                               hintText: 'eg. personal_email@gmail.com',
//                               filled: true,
//                               fillColor: Colors.grey.shade100,
//                             ),
//                           ),
//                           const SizedBox(height: 15),
//
//                           // Date of Birth Section
//                           _buildSectionTitle('Date Of Birth'),
//                           const SizedBox(height: 5),
//                           TextFormField(
//                             decoration: InputDecoration(
//                               border: OutlineInputBorder(
//                                 borderRadius: BorderRadius.circular(3),
//                                 borderSide: const BorderSide(color: Colors.black),
//                               ),
//                               enabledBorder: OutlineInputBorder(
//                                 borderRadius: BorderRadius.circular(3),
//                                 borderSide: BorderSide(color: Colors.grey.shade500),
//                               ),
//                               focusedBorder: OutlineInputBorder(
//                                 borderRadius: BorderRadius.circular(3),
//                                 borderSide: BorderSide(color: Colors.teal.shade300),
//                               ),
//                               hintText: '17 Sep 2005',
//                               filled: true,
//                               fillColor: Colors.grey.shade100,
//                             ),
//                           ),
//                           const SizedBox(height: 15),
//
//                           // Gender Section
//                           _buildSectionTitle('Gender'),
//                           const SizedBox(height: 5),
//                           TextFormField(
//                             decoration: InputDecoration(
//                               border: OutlineInputBorder(
//                                 borderRadius: BorderRadius.circular(3),
//                                 borderSide: const BorderSide(color: Colors.black),
//                               ),
//                               enabledBorder: OutlineInputBorder(
//                                 borderRadius: BorderRadius.circular(3),
//                                 borderSide: BorderSide(color: Colors.grey.shade500),
//                               ),
//                               focusedBorder: OutlineInputBorder(
//                                 borderRadius: BorderRadius.circular(3),
//                                 borderSide: BorderSide(color: Colors.teal.shade300),
//                               ),
//                               hintText: 'eg. Male',
//                               filled: true,
//                               fillColor: Colors.grey.shade100,
//                             ),
//                           ),
//                           const SizedBox(height: 15),
//
//                           // Marital Status Section
//                           _buildSectionTitle('Marital Status'),
//                           const SizedBox(height: 5),
//                           TextFormField(
//                             decoration: InputDecoration(
//                               border: OutlineInputBorder(
//                                 borderRadius: BorderRadius.circular(3),
//                                 borderSide: const BorderSide(color: Colors.black),
//                               ),
//                               enabledBorder: OutlineInputBorder(
//                                 borderRadius: BorderRadius.circular(3),
//                                 borderSide: BorderSide(color: Colors.grey.shade500),
//                               ),
//                               focusedBorder: OutlineInputBorder(
//                                 borderRadius: BorderRadius.circular(3),
//                                 borderSide: BorderSide(color: Colors.teal.shade300),
//                               ),
//                               hintText: 'eg. Unmarried',
//                               filled: true,
//                               fillColor: Colors.grey.shade100,
//                             ),
//                           ),
//                           const SizedBox(height: 15),
//
//                           // Blood Group Section
//                           _buildSectionTitle('Blood Group'),
//                           const SizedBox(height: 5),
//                           TextFormField(
//                             decoration: InputDecoration(
//                               border: OutlineInputBorder(
//                                 borderRadius: BorderRadius.circular(3),
//                                 borderSide: const BorderSide(color: Colors.black),
//                               ),
//                               enabledBorder: OutlineInputBorder(
//                                 borderRadius: BorderRadius.circular(3),
//                                 borderSide: BorderSide(color: Colors.grey.shade500),
//                               ),
//                               focusedBorder: OutlineInputBorder(
//                                 borderRadius: BorderRadius.circular(3),
//                                 borderSide: BorderSide(color: Colors.teal.shade300),
//                               ),
//                               hintText: 'eg. O+',
//                               filled: true,
//                               fillColor: Colors.grey.shade100,
//                             ),
//                           ),
//                           const SizedBox(height: 15),
//
//                           // Guardian's Name Section
//                           _buildSectionTitle('Guardian\'s Name'),
//                           const SizedBox(height: 5),
//                           TextFormField(
//                             decoration: InputDecoration(
//                               border: OutlineInputBorder(
//                                 borderRadius: BorderRadius.circular(3),
//                                 borderSide: const BorderSide(color: Colors.black),
//                               ),
//                               enabledBorder: OutlineInputBorder(
//                                 borderRadius: BorderRadius.circular(3),
//                                 borderSide: BorderSide(color: Colors.grey.shade500),
//                               ),
//                               focusedBorder: OutlineInputBorder(
//                                 borderRadius: BorderRadius.circular(3),
//                                 borderSide: BorderSide(color: Colors.teal.shade300),
//                               ),
//                               hintText: 'eg. Name',
//                               filled: true,
//                               fillColor: Colors.grey.shade100,
//                             ),
//                           ),
//                           const SizedBox(height: 30),
//
//                           // Emergency Contact Section
//                           _buildSectionTitle('Emergency Contact Name'),
//                           const SizedBox(height: 5),
//                           TextFormField(
//                             decoration: InputDecoration(
//                               border: OutlineInputBorder(
//                                 borderRadius: BorderRadius.circular(3),
//                                 borderSide: const BorderSide(color: Colors.black),
//                               ),
//                               enabledBorder: OutlineInputBorder(
//                                 borderRadius: BorderRadius.circular(3),
//                                 borderSide: BorderSide(color: Colors.grey.shade500),
//                               ),
//                               focusedBorder: OutlineInputBorder(
//                                 borderRadius: BorderRadius.circular(3),
//                                 borderSide: BorderSide(color: Colors.teal.shade300),
//                               ),
//                               hintText: 'Contact Name',
//                               filled: true,
//                               fillColor: Colors.grey.shade100,
//                             ),
//                           ),
//                           const SizedBox(height: 15),
//
//                           // Emergency Contact Relationship
//                           _buildSectionTitle('Emergency Contact Relationship'),
//                           const SizedBox(height: 5),
//                           TextFormField(
//                             decoration: InputDecoration(
//                               border: OutlineInputBorder(
//                                 borderRadius: BorderRadius.circular(3),
//                                 borderSide: const BorderSide(color: Colors.black),
//                               ),
//                               enabledBorder: OutlineInputBorder(
//                                 borderRadius: BorderRadius.circular(3),
//                                 borderSide: BorderSide(color: Colors.grey.shade500),
//                               ),
//                               focusedBorder: OutlineInputBorder(
//                                 borderRadius: BorderRadius.circular(3),
//                                 borderSide: BorderSide(color: Colors.teal.shade300),
//                               ),
//                               hintText: 'eg. Father',
//                               filled: true,
//                               fillColor: Colors.grey.shade100,
//                             ),
//                           ),
//                           const SizedBox(height: 15),
//
//                           // Emergency Contact Mobile
//                           _buildSectionTitle('Emergency Contact Mobile'),
//                           const SizedBox(height: 5),
//                           IntlPhoneField(
//                             decoration: InputDecoration(
//                               hintText: '1234567890',
//                               border: OutlineInputBorder(
//                                 borderRadius: BorderRadius.circular(6),
//                                 borderSide: const BorderSide(color: Colors.grey),
//                               ),
//                               enabledBorder: OutlineInputBorder(
//                                 borderRadius: BorderRadius.circular(6),
//                                 borderSide: const BorderSide(color: Colors.grey),
//                               ),
//                               focusedBorder: OutlineInputBorder(
//                                 borderRadius: BorderRadius.circular(6),
//                                 borderSide: BorderSide(color: Colors.teal.shade300, width: 1.5),
//                               ),
//                               filled: true,
//                               fillColor: Colors.grey.shade100,
//                             ),
//                             initialCountryCode: 'IN',
//                             onChanged: (phone) {
//                               print(phone.completeNumber);
//                             },
//                           ),
//                           const SizedBox(height: 15),
//
//                           // Emergency Contact Address
//                           _buildSectionTitle('Emergency Contact Address'),
//                           const SizedBox(height: 5),
//                           TextFormField(
//                             maxLines: 3,
//                             decoration: InputDecoration(
//                               border: OutlineInputBorder(
//                                 borderRadius: BorderRadius.circular(3),
//                                 borderSide: const BorderSide(color: Colors.black),
//                               ),
//                               enabledBorder: OutlineInputBorder(
//                                 borderRadius: BorderRadius.circular(3),
//                                 borderSide: BorderSide(color: Colors.grey.shade500),
//                               ),
//                               focusedBorder: OutlineInputBorder(
//                                 borderRadius: BorderRadius.circular(3),
//                                 borderSide: BorderSide(color: Colors.teal.shade300),
//                               ),
//                               hintText: 'eg. XYZ Society, sector 101, Gurgaon',
//                               filled: true,
//                               fillColor: Colors.grey.shade100,
//                             ),
//                           ),
//                           const SizedBox(height: 30),
//
//                           // Save Button
//                           Center(
//                             child: Container(
//                               width: 150,
//                               height: 50,
//                               decoration: BoxDecoration(
//                                 color: Colors.teal.shade300,
//                                 borderRadius: BorderRadius.circular(8),
//                               ),
//                               child: const Center(
//                                 child: Text(
//                                   'Save Details',
//                                   style: TextStyle(
//                                     color: Colors.white,
//                                     fontSize: 16,
//                                     fontWeight: FontWeight.bold,
//                                   ),
//                                 ),
//                               ),
//                             ),
//                           ),
//                           const SizedBox(height: 40),
//                         ],
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
//   // Helper method to build section titles
//   Widget _buildSectionTitle(String title) {
//     return Text(
//       title,
//       style: const TextStyle(
//         color: Colors.grey,
//         fontSize: 14,
//         fontWeight: FontWeight.w500,
//       ),
//     );
//   }
// }
///..................

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class PersonalDetailsScreen extends StatefulWidget {
  const PersonalDetailsScreen({super.key});

  @override
  State<PersonalDetailsScreen> createState() => _PersonalDetailsScreenState();
}

class _PersonalDetailsScreenState extends State<PersonalDetailsScreen> {
  // Dropdown values
  String? selectedGender;
  String? selectedMaritalStatus;
  String? selectedBloodGroup;

  // Dropdown options
  final List<String> genderOptions = ['Male', 'Female', 'Other'];
  final List<String> maritalStatusOptions = ['Unmarried', 'Married', 'Divorced', 'Widowed'];
  final List<String> bloodGroupOptions = ['A+', 'A-', 'B+', 'B-', 'AB+', 'AB-', 'O+', 'O-'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      ///
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
                      icon:   Icon(
                        CupertinoIcons.left_chevron,
                        size: 30,
                        color: Colors.black,
                      ),
                    ),
                      SizedBox(width: 15),
                      Text(
                      'Personal Details',
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
                    padding:   EdgeInsets.symmetric(horizontal: 20),
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                            SizedBox(height: 20),

                          // Staff Name Section
                          _buildSectionTitle('Staff Name'),
                            SizedBox(height: 5),
                          TextFormField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(3),
                                borderSide: BorderSide.none,
                              ),
                              filled: true,
                              fillColor: Colors.grey.shade100,
                              hintText: 'Benson Saju',
                            ),
                          ),
                            SizedBox(height: 15),

                          // Mobile Number Section
                          _buildSectionTitle('Mobile Number'),
                            SizedBox(height: 5),
                          IntlPhoneField(
                            decoration: InputDecoration(
                              hintText: '8921705456',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(6),
                                borderSide:   BorderSide(color: Colors.grey),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(6),
                                borderSide:   BorderSide(color: Colors.grey),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(6),
                                borderSide: BorderSide(color: Colors.teal.shade300, width: 1.5),
                              ),
                              filled: true,
                              fillColor: Colors.grey.shade100,
                            ),
                            initialCountryCode: 'IN',
                            onChanged: (phone) {
                              print(phone.completeNumber);
                            },
                          ),
                            SizedBox(height: 15),

                          // Personal Email ID Section
                          _buildSectionTitle('Personal Email ID'),
                            SizedBox(height: 5),
                          TextFormField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(3),
                                borderSide:   BorderSide(color: Colors.black),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(3),
                                borderSide: BorderSide(color: Colors.grey.shade500),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(3),
                                borderSide: BorderSide(color: Colors.teal.shade300),
                              ),
                              hintText: 'eg. personal_email@gmail.com',
                              filled: true,
                              fillColor: Colors.white,
                            ),
                          ),
                            SizedBox(height: 15),

                          // Date of Birth Section
                          _buildSectionTitle('Date Of Birth'),
                            SizedBox(height: 5),
                          TextFormField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(3),
                                borderSide:   BorderSide(color: Colors.black),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(3),
                                borderSide: BorderSide(color: Colors.grey.shade500),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(3),
                                borderSide: BorderSide(color: Colors.teal.shade300),
                              ),
                              hintText: '17 Sep 2005',
                              filled: true,
                              fillColor: Colors.grey.shade100,
                            ),
                          ),
                            SizedBox(height: 15),

                          // Gender Section - Dropdown
                          _buildSectionTitle('Gender'),
                            SizedBox(height: 5),
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.grey.shade100,
                              borderRadius: BorderRadius.circular(3),
                              border: Border.all(color: Colors.grey.shade500),
                            ),
                            child: DropdownButtonFormField<String>(
                              value: selectedGender,
                              onChanged: (String? newValue) {
                                setState(() {
                                  selectedGender = newValue;
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
                                fillColor: Colors.white,
                                contentPadding: const EdgeInsets.symmetric(horizontal: 12),
                              ),
                              items: genderOptions.map<DropdownMenuItem<String>>((String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value == '' ? 'eg. Male' : value),
                                );
                              }).toList(),
                              hint:   Text('eg. Male', style:  GoogleFonts.gabarito(color: Colors.grey)),
                              isExpanded: true,
                            ),
                          ),
                            SizedBox(height: 15),

                          // Marital Status Section - Dropdown
                          _buildSectionTitle('Marital Status'),
                            SizedBox(height: 5),
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.grey.shade100,
                              borderRadius: BorderRadius.circular(3),
                              border: Border.all(color: Colors.grey.shade500),
                            ),
                            child: DropdownButtonFormField<String>(
                              value: selectedMaritalStatus,
                              onChanged: (String? newValue) {
                                setState(() {
                                  selectedMaritalStatus = newValue;
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
                                fillColor: Colors.white,
                                contentPadding:   EdgeInsets.symmetric(horizontal: 12),
                              ),
                              items: maritalStatusOptions.map<DropdownMenuItem<String>>((String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value == '' ? 'eg. Unmarried' : value),
                                );
                              }).toList(),
                              hint:   Text('eg. Unmarried', style:  GoogleFonts.gabarito(color: Colors.grey)),
                              isExpanded: true,
                            ),
                          ),
                            SizedBox(height: 15),

                          // Blood Group Section - Dropdown
                          _buildSectionTitle('Blood Group'),
                            SizedBox(height: 5),
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.grey.shade100,
                              borderRadius: BorderRadius.circular(3),
                              border: Border.all(color: Colors.grey.shade500),
                            ),
                            child: DropdownButtonFormField<String>(
                              value: selectedBloodGroup,
                              onChanged: (String? newValue) {
                                setState(() {
                                  selectedBloodGroup = newValue;
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
                                fillColor: Colors.white,
                                contentPadding:   EdgeInsets.symmetric(horizontal: 12),
                              ),
                              items: bloodGroupOptions.map<DropdownMenuItem<String>>((String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value == '' ? 'eg. O+' : value),
                                );
                              }).toList(),
                              hint:   Text('eg. O+', style:  GoogleFonts.gabarito(color: Colors.grey)),
                              isExpanded: true,
                            ),
                          ),
                            SizedBox(height: 15),

                          // Guardian's Name Section
                          _buildSectionTitle('Guardian\'s Name'),
                            SizedBox(height: 5),
                          TextFormField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(3),
                                borderSide:   BorderSide(color: Colors.black),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(3),
                                borderSide: BorderSide(color: Colors.grey.shade500),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(3),
                                borderSide: BorderSide(color: Colors.teal.shade300),
                              ),
                              hintText: 'eg. Name',
                              filled: true,
                              fillColor: Colors.white,
                            ),
                          ),
                            SizedBox(height: 30),

                          // Emergency Contact Section
                          _buildSectionTitle('Emergency Contact Name'),
                            SizedBox(height: 5),
                          TextFormField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(3),
                                borderSide:   BorderSide(color: Colors.black),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(3),
                                borderSide: BorderSide(color: Colors.grey.shade500),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(3),
                                borderSide: BorderSide(color: Colors.teal.shade300),
                              ),
                              hintText: 'Contact Name',
                              filled: true,
                              fillColor: Colors.white,
                            ),
                          ),
                            SizedBox(height: 15),

                          // Emergency Contact Relationship
                          _buildSectionTitle('Emergency Contact Relationship'),
                            SizedBox(height: 5),
                          TextFormField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(3),
                                borderSide:   BorderSide(color: Colors.black),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(3),
                                borderSide: BorderSide(color: Colors.grey.shade500),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(3),
                                borderSide: BorderSide(color: Colors.teal.shade300),
                              ),
                              hintText: 'eg. Father',
                              filled: true,
                              fillColor: Colors.white,
                            ),
                          ),
                            SizedBox(height: 15),

                          // Emergency Contact Mobile
                          _buildSectionTitle('Emergency Contact Mobile'),
                            SizedBox(height: 5),
                          IntlPhoneField(
                            decoration: InputDecoration(
                              hintText: '1234567890',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(6),
                                borderSide:   BorderSide(color: Colors.grey),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(6),
                                borderSide:   BorderSide(color: Colors.grey),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(6),
                                borderSide: BorderSide(color: Colors.teal.shade300, width: 1.5),
                              ),
                              filled: true,
                              fillColor: Colors.grey.shade100,
                            ),
                            initialCountryCode: 'IN',
                            onChanged: (phone) {
                              print(phone.completeNumber);
                            },
                          ),
                            SizedBox(height: 15),

                          // Emergency Contact Address
                          _buildSectionTitle('Emergency Contact Address'),
                            SizedBox(height: 5),
                          TextFormField(
                            maxLines: 3,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(3),
                                borderSide:   BorderSide(color: Colors.black),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(3),
                                borderSide: BorderSide(color: Colors.grey.shade500),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(3),
                                borderSide: BorderSide(color: Colors.teal.shade300),
                              ),
                              hintText: 'eg. XYZ Society, sector 101, Gurgaon',
                              filled: true,
                              fillColor: Colors.white,
                            ),
                          ),
                            SizedBox(height: 30),

                          // Save Button

                            SizedBox(height: 40),
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
      style:    GoogleFonts.gabarito(
        color: Colors.grey,
        fontSize: 14,
        fontWeight: FontWeight.w500,
      ),
    );
  }

  // Method to handle save functionality
  void _savePersonalDetails() {
    // Implement save logic here
    print('Gender: $selectedGender');
    print('Marital Status: $selectedMaritalStatus');
    print('Blood Group: $selectedBloodGroup');

    // Show success message
    ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
        content: Text('Personal details saved successfully!'),
        backgroundColor: Colors.green,
      ),
    );
  }
}