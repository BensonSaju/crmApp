// import 'package:crmapp/bank_details.dart';
// import 'package:crmapp/current_employee.dart';
// import 'package:crmapp/customs_page.dart';
// import 'package:crmapp/personal_details.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
//
// class ProfilePage extends StatelessWidget {
//   const ProfilePage({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body:
//       Container(
//         color: Colors.black,
//         child: SafeArea(
//           child: Column(
//             children: [
//               Container(
//                 height: 60,
//                 width: double.infinity,
//                 color: Colors.white,
//                 child: Row(
//                   children: [
//                     SizedBox(width: 10),
//                     IconButton(onPressed: (){
//                       Navigator.pop(context);
//                     },
//                       icon: Icon( CupertinoIcons.left_chevron,
//                         size: 30,
//                         color: Colors.black,
//                       ),),
//                     SizedBox(width: 25),
//                     Text(
//                       'Benson Saju',
//                       style: TextStyle(
//                         fontSize: 20,
//
//                       ),
//                     ),
//                     Spacer(),
//                     Container(
//                       height: 40,
//                       width: 100,
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(4),
//                         color: Colors.teal.shade300
//                       ),
//                       child:
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                         children: [
//                           Icon(Icons.picture_as_pdf_outlined,color: Colors.white,size: 22,),
//                           Text('Biodata',style: TextStyle(color: Colors.white),)
//                         ],
//                       ),
//                     ),
//                     SizedBox(width: 10,),
//                   ],
//                 ),
//               ),
//               Expanded(child: Container(
//                 width: double.infinity,
//                 color: Colors.grey.shade200,
//                 child:
//                 Column(
//                   children: [
//                     SizedBox(height: 30,),
//                     SizedBox(
//                       height: 100,
//                       width: 100,
//                       child: Stack(
//                         children: [
//                           Container(
//
//                             height: 100,
//                             width: 100,
//                             decoration: BoxDecoration(
//                               border: Border.all(color: Colors.grey.shade200,width: 1),
//                               shape: BoxShape.circle,
//                               color: Colors.blue
//                             ),
//                             child: Center(child: Text('B',style: TextStyle(color: Colors.white,fontSize: 70,fontWeight: FontWeight.bold),))
//                           ),
//                           Positioned(
//                             bottom: 0,
//                             right: 5,
//                             child: Container(
//                               height: 30,
//                               width: 30,
//                               decoration: BoxDecoration(
//                                 color: Colors.white,
//                                 shape: BoxShape.circle,
//                                 border: Border.all(color: Colors.grey.shade200, width: 1),
//                               ),
//                               child:  Icon(Icons.camera_alt_outlined, size: 18, color: Colors.teal),
//                             ),
//                           )
//                         ],
//                       ),
//                     ),
//                     Text('Benson Saju',style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),
//                     SizedBox(height: 10,),
//                     Text('91-8921706545',style: TextStyle(fontSize: 17, ),),
//                     SizedBox(height: 7,),
//                     Text('Flutter Intern',style: TextStyle(fontSize: 17, color: Colors.grey.shade600),),
//                     SizedBox(height: 30,),
//                     Container(
//                       margin: EdgeInsets.symmetric(horizontal: 20),
//                       height: 155,
//                       width: double.infinity,
//                       decoration:BoxDecoration(
//                         borderRadius: BorderRadius.circular(13),
//                         color: Colors.white,
//                       ),
//                       child: Column(
//                         children: [
//                           SizedBox(height: 15,),
//                          InkWell(onTap: () {
//                            Navigator.push(context, MaterialPageRoute(builder: (context) => PersonalDetailsScreen(),));
//                          },
//                            child: Row(
//                              children: [
//                                SizedBox(width: 10,),
//                                Icon(Icons.person_outline,color: Colors.black,),
//                                SizedBox(width: 10,),
//                                Text('Personal Details',style: TextStyle(fontWeight: FontWeight.bold),),
//                                Spacer(),
//                                Icon(CupertinoIcons.forward,size: 20,),
//                                SizedBox(width: 10,),
//                              ],
//                            ),
//                          ),
//                           SizedBox(height: 5,),
//                           Divider(color: Colors.grey.shade300,thickness: 1,),
//                           SizedBox(height: 5,),
//                           InkWell(onTap: () {
//                             Navigator.push(context, MaterialPageRoute(builder: (context) => CurrentEmploymentScreen(),));
//
//                           },
//                             child: Row(
//                               children: [
//                                 SizedBox(width: 10,),
//                                 Icon(Icons.cases_outlined,color: Colors.black,),
//                                 SizedBox(width: 10,),
//                                 Text(' Current Employee',style: TextStyle(fontWeight: FontWeight.bold),),
//                                 Spacer(),
//                                 Icon(CupertinoIcons.forward,size: 20,),
//                                 SizedBox(width: 10,),
//                               ],
//                             ),
//                           ),
//                           SizedBox(height: 5,),
//                           Divider(color: Colors.grey.shade300,thickness: 1,),
//                           SizedBox(height: 5,),
//                           InkWell(onTap: () {
//                             Navigator.push(context, MaterialPageRoute(builder: (context) => CustomDetailsScreen(),));
//                           },
//                             child: Row(
//                               children: [
//                                 SizedBox(width: 10,),
//                                 Icon(Icons.account_balance,color: Colors.black,),
//                                 SizedBox(width: 10,),
//                                 Text('Custom Details',style: TextStyle(fontWeight: FontWeight.bold),),
//                                 Spacer(),
//                                 Icon(CupertinoIcons.forward,size: 20,),
//                                 SizedBox(width: 10,),
//                               ],
//                             ),
//                           ),
//                           SizedBox(height: 5,),
//                         ],
//                       ),
//                     ),
//                     SizedBox(height: 20,),
//                     Container(
//                       margin: EdgeInsets.symmetric(horizontal: 20),
//                       height: 55,
//                       width: double.infinity,
//                       decoration:BoxDecoration(
//                         borderRadius: BorderRadius.circular(13),
//                         color: Colors.white,
//                       ),
//                       child:
//                           Row(
//                             children: [
//                               SizedBox(width: 10,),
//                               Icon(Icons.fingerprint_outlined,color: Colors.black,),
//                               SizedBox(width: 10,),
//                               Text('Attendence details',style: TextStyle(fontWeight: FontWeight.bold),),
//                               Spacer(),
//                               Icon(CupertinoIcons.forward,size: 20,),
//                               SizedBox(width: 10,),
//                             ],
//                           ),
//
//
//                     ),
//                     SizedBox(height: 20,),
//                     Container(
//                       margin: EdgeInsets.symmetric(horizontal: 20),
//                       height: 55,
//                       width: double.infinity,
//                       decoration:BoxDecoration(
//                         borderRadius: BorderRadius.circular(13),
//                         color: Colors.white,
//                       ),
//                       child:
//                           InkWell(onTap: () {
//                             Navigator.push(context, MaterialPageRoute(builder: (context) => BankAccountDetailsScreen(),));
//
//                           },
//                             child: Row(
//                               children: [
//                                 SizedBox(width: 10,),
//                                 Icon(Icons.account_balance,color: Colors.black,),
//                                 SizedBox(width: 10,),
//                                 Text('Bank Details',style: TextStyle(fontWeight: FontWeight.bold),),
//                                 Spacer(),
//                                 Icon(CupertinoIcons.forward,size: 20,),
//                                 SizedBox(width: 10,),
//                               ],
//                             ),
//                           ),
//
//
//                     ),
//                     SizedBox(height: 20,),
//                     Container(
//                       margin: EdgeInsets.symmetric(horizontal: 20),
//                       height: 55,
//                       width: double.infinity,
//                       decoration:BoxDecoration(
//                         borderRadius: BorderRadius.circular(13),
//                         color: Colors.white,
//                       ),
//                       child:
//                           Row(
//                             children: [
//                               SizedBox(width: 10,),
//                               Icon(Icons.person_outline,color: Colors.black,),
//                               SizedBox(width: 10,),
//                               Text('User Permission',style: TextStyle(fontWeight: FontWeight.bold),),
//                               Spacer(),
//                               Text('Employee',style: TextStyle(fontWeight: FontWeight.bold),),
//                                SizedBox(width: 10,),
//                               Icon(CupertinoIcons.forward,size: 20,),
//                               SizedBox(width: 10,),
//                             ],
//                           ),
//
//
//                     ),
//                   ],
//                 ),
//               ))
//             ],
//           ),
//         ),
//       )
//     );
//   }
// }
///
// import 'package:crmapp/bank_details.dart';
// import 'package:crmapp/current_employee.dart';
// import 'package:crmapp/customs_page.dart';
// import 'package:crmapp/personal_details.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:image_picker/image_picker.dart';
// import 'dart:io';
//
// class ProfilePage extends StatefulWidget {
//   const ProfilePage({super.key});
//
//   @override
//   State<ProfilePage> createState() => _ProfilePageState();
// }
//
// class _ProfilePageState extends State<ProfilePage> {
//   File? _selectedImage;
//   final ImagePicker _imagePicker = ImagePicker();
//
//   // List of menu items for navigation
//   final List<MenuItem> _menuItems = [
//     MenuItem(
//       title: 'Personal Details',
//       icon: Icons.person_outline,
//       page: PersonalDetailsScreen(),
//     ),
//     MenuItem(
//       title: 'Current Employee',
//       icon: Icons.cases_outlined,
//       page: CurrentEmploymentScreen(),
//     ),
//     MenuItem(
//       title: 'Custom Details',
//       icon: Icons.account_balance,
//       page: CustomDetailsScreen(),
//     ),
//     MenuItem(
//       title: 'Bank Details',
//       icon: Icons.account_balance,
//       page: BankAccountDetailsScreen(),
//     ),
//   ];
//
//   // Method to show image picker options
//   Future<void> _showImagePickerOptions() async {
//     showModalBottomSheet(
//       context: context,
//       backgroundColor: Colors.white,
//       shape: const RoundedRectangleBorder(
//         borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
//       ),
//       builder: (context) {
//         return SafeArea(
//           child: Column(
//             mainAxisSize: MainAxisSize.min,
//             children: [
//               const SizedBox(height: 20),
//               const Text(
//                 'Choose Profile Photo',
//                 style: TextStyle(
//                   fontSize: 18,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//               const SizedBox(height: 20),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                 children: [
//                   _buildImageOption(
//                     icon: Icons.camera_alt,
//                     text: 'Camera',
//                     onTap: () => _pickImage(ImageSource.camera),
//                   ),
//                   _buildImageOption(
//                     icon: Icons.photo_library,
//                     text: 'Gallery',
//                     onTap: () => _pickImage(ImageSource.gallery),
//                   ),
//                 ],
//               ),
//               const SizedBox(height: 20),
//               Container(
//                 width: double.infinity,
//                 margin: const EdgeInsets.symmetric(horizontal: 20),
//                 child: ElevatedButton(
//                   style: ElevatedButton.styleFrom(
//                     backgroundColor: Colors.grey.shade200,
//                     foregroundColor: Colors.black,
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(10),
//                     ),
//                   ),
//                   onPressed: () => Navigator.pop(context),
//                   child: const Text('Cancel'),
//                 ),
//               ),
//               const SizedBox(height: 20),
//             ],
//           ),
//         );
//       },
//     );
//   }
//
//   Widget _buildImageOption({
//     required IconData icon,
//     required String text,
//     required VoidCallback onTap,
//   }) {
//     return GestureDetector(
//       onTap: () {
//         Navigator.pop(context);
//         onTap();
//       },
//       child: Column(
//         children: [
//           Container(
//             width: 70,
//             height: 70,
//             decoration: BoxDecoration(
//               color: Colors.teal.shade50,
//               shape: BoxShape.circle,
//               border: Border.all(color: Colors.teal.shade200),
//             ),
//             child: Icon(
//               icon,
//               size: 30,
//               color: Colors.teal.shade700,
//             ),
//           ),
//           const SizedBox(height: 10),
//           Text(
//             text,
//             style: const TextStyle(
//               fontWeight: FontWeight.w500,
//             ),
//           ),
//         ],
//       ),
//     );
//   }
//
//   // Method to pick image from camera or gallery
//   Future<void> _pickImage(ImageSource source) async {
//     try {
//       final XFile? pickedFile = await _imagePicker.pickImage(
//         source: source,
//         maxWidth: 500,
//         maxHeight: 500,
//         imageQuality: 80,
//       );
//
//       if (pickedFile != null) {
//         setState(() {
//           _selectedImage = File(pickedFile.path);
//         });
//
//         // Show success message
//         if (mounted) {
//           ScaffoldMessenger.of(context).showSnackBar(
//             SnackBar(
//               content: Text(
//                 source == ImageSource.camera
//                     ? 'Photo captured successfully!'
//                     : 'Photo selected from gallery!',
//               ),
//               backgroundColor: Colors.green,
//               duration: const Duration(seconds: 2),
//             ),
//           );
//         }
//       }
//     } catch (e) {
//       if (mounted) {
//         ScaffoldMessenger.of(context).showSnackBar(
//           SnackBar(
//             content: Text('Error picking image: $e'),
//             backgroundColor: Colors.red,
//             duration: const Duration(seconds: 3),
//           ),
//         );
//       }
//     }
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
//               // Header
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
//                     const SizedBox(width: 25),
//                     const Text(
//                       'Benson Saju',
//                       style: TextStyle(
//                         fontSize: 20,
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
//                           const Text('Biodata', style: TextStyle(color: Colors.white)),
//                         ],
//                       ),
//                     ),
//                     const SizedBox(width: 10),
//                   ],
//                 ),
//               ),
//
//               // Profile Content
//               Expanded(
//                 child: Container(
//                   width: double.infinity,
//                   color: Colors.grey.shade200,
//                   child: SingleChildScrollView(
//                     child: Column(
//                       children: [
//                         const SizedBox(height: 30),
//
//                         // Profile Image with Camera Icon
//                         SizedBox(
//                           height: 100,
//                           width: 100,
//                           child: Stack(
//                             children: [
//                               Container(
//                                 height: 100,
//                                 width: 100,
//                                 decoration: BoxDecoration(
//                                   border: Border.all(color: Colors.grey.shade200, width: 1),
//                                   shape: BoxShape.circle,
//                                   color: _selectedImage != null ? Colors.transparent : Colors.blue,
//                                   image: _selectedImage != null
//                                       ? DecorationImage(
//                                     image: FileImage(_selectedImage!),
//                                     fit: BoxFit.cover,
//                                   )
//                                       : null,
//                                 ),
//                                 child: _selectedImage == null
//                                     ? const Center(
//                                   child: Text(
//                                     'B',
//                                     style: TextStyle(
//                                       color: Colors.white,
//                                       fontSize: 70,
//                                       fontWeight: FontWeight.bold,
//                                     ),
//                                   ),
//                                 )
//                                     : null,
//                               ),
//                               Positioned(
//                                 bottom: 0,
//                                 right: 5,
//                                 child: GestureDetector(
//                                   onTap: _showImagePickerOptions,
//                                   child: Container(
//                                     height: 30,
//                                     width: 30,
//                                     decoration: BoxDecoration(
//                                       color: Colors.white,
//                                       shape: BoxShape.circle,
//                                       border: Border.all(color: Colors.grey.shade200, width: 1),
//                                       boxShadow: [
//                                         BoxShadow(
//                                           color: Colors.black.withOpacity(0.2),
//                                           blurRadius: 4,
//                                           offset: const Offset(0, 2),
//                                         ),
//                                       ],
//                                     ),
//                                     child: Icon(
//                                       Icons.camera_alt_outlined,
//                                       size: 18,
//                                       color: Colors.teal.shade700,
//                                     ),
//                                   ),
//                                 ),
//                               )
//                             ],
//                           ),
//                         ),
//
//                         const SizedBox(height: 15),
//                         const Text(
//                           'Benson Saju',
//                           style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
//                         ),
//                         const SizedBox(height: 10),
//                         const Text(
//                           '91-8921706545',
//                           style: TextStyle(fontSize: 17),
//                         ),
//                         const SizedBox(height: 7),
//                         Text(
//                           'Flutter Intern',
//                           style: TextStyle(fontSize: 17, color: Colors.grey.shade600),
//                         ),
//                         const SizedBox(height: 30),
//
//                         // Menu Items List
//                         Container(
//                           margin: const EdgeInsets.symmetric(horizontal: 20),
//                           decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(13),
//                             color: Colors.white,
//                           ),
//                           child: ListView.separated(
//                             shrinkWrap: true,
//                             physics: const NeverScrollableScrollPhysics(),
//                             itemCount: _menuItems.length,
//                             separatorBuilder: (context, index) => Divider(
//                               color: Colors.grey.shade300,
//                               thickness: 1,
//                               height: 1,
//                             ),
//                             itemBuilder: (context, index) {
//                               final menuItem = _menuItems[index];
//                               return _buildMenuItem(
//                                 icon: menuItem.icon,
//                                 title: menuItem.title,
//                                 onTap: () => Navigator.push(
//                                   context,
//                                   MaterialPageRoute(builder: (context) => menuItem.page),
//                                 ),
//                               );
//                             },
//                           ),
//                         ),
//
//                         const SizedBox(height: 20),
//
//                         // Additional Menu Items
//                         _buildSingleMenuItem(
//                           icon: Icons.fingerprint_outlined,
//                           title: 'Attendance details',
//                           onTap: () {
//                             // Add attendance details navigation here
//                           },
//                         ),
//
//                         const SizedBox(height: 20),
//
//                         _buildSingleMenuItem(
//                           icon: Icons.person_outline,
//                           title: 'User Permission',
//                           trailing: Row(
//                             children: [
//                               Text(
//                                 'Employee',
//                                 style: TextStyle(
//                                   fontWeight: FontWeight.bold,
//                                   color: Colors.grey.shade600,
//                                 ),
//                               ),
//                               const SizedBox(width: 10),
//                               const Icon(CupertinoIcons.forward, size: 20),
//                             ],
//                           ),
//                         ),
//
//                         const SizedBox(height: 30),
//                       ],
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
//   Widget _buildMenuItem({
//     required IconData icon,
//     required String title,
//     required VoidCallback onTap,
//   }) {
//     return InkWell(
//       onTap: onTap,
//       child: Container(
//         height: 55,
//         padding: const EdgeInsets.symmetric(horizontal: 15),
//         child: Row(
//           children: [
//             Icon(icon, color: Colors.black),
//             const SizedBox(width: 15),
//             Text(
//               title,
//               style: const TextStyle(fontWeight: FontWeight.bold),
//             ),
//             const Spacer(),
//             const Icon(CupertinoIcons.forward, size: 20),
//           ],
//         ),
//       ),
//     );
//   }
//
//   Widget _buildSingleMenuItem({
//     required IconData icon,
//     required String title,
//     VoidCallback? onTap,
//     Widget? trailing,
//   }) {
//     return Container(
//       margin: const EdgeInsets.symmetric(horizontal: 20),
//       height: 55,
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(13),
//         color: Colors.white,
//       ),
//       child: InkWell(
//         onTap: onTap,
//         borderRadius: BorderRadius.circular(13),
//         child: Padding(
//           padding: const EdgeInsets.symmetric(horizontal: 15),
//           child: Row(
//             children: [
//               Icon(icon, color: Colors.black),
//               const SizedBox(width: 15),
//               Text(
//                 title,
//                 style: const TextStyle(fontWeight: FontWeight.bold),
//               ),
//               const Spacer(),
//               trailing ?? const Icon(CupertinoIcons.forward, size: 20),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
//
// // Model class for menu items
// class MenuItem {
//   final String title;
//   final IconData icon;
//   final Widget page;
//
//   MenuItem({
//     required this.title,
//     required this.icon,
//     required this.page,
//   });
// }
///
import 'package:crmapp/bank_details.dart';
import 'package:crmapp/current_employee.dart';
import 'package:crmapp/customs_page.dart';
import 'package:crmapp/personal_details.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  File? _selectedImage;
  final ImagePicker _imagePicker = ImagePicker();

  // Method to show image picker options
  Future<void> _showImagePickerOptions() async {
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.white,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (context) {
        return SafeArea(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
               SizedBox(height: 20),
               Text(
                'Choose Profile Photo',
                style: GoogleFonts.gabarito(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
               SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _buildImageOption(
                    icon: Icons.camera_alt,
                    text: 'Camera',
                    onTap: () => _pickImage(ImageSource.camera),
                  ),
                  _buildImageOption(
                    icon: Icons.photo_library,
                    text: 'Gallery',
                    onTap: () => _pickImage(ImageSource.gallery),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Container(
                width: double.infinity,
                margin: const EdgeInsets.symmetric(horizontal: 20),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey.shade200,
                    foregroundColor: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  onPressed: () => Navigator.pop(context),
                  child: const Text('Cancel'),
                ),
              ),
              const SizedBox(height: 20),
            ],
          ),
        );
      },
    );
  }

  Widget _buildImageOption({
    required IconData icon,
    required String text,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: () {
        Navigator.pop(context);
        onTap();
      },
      child: Column(
        children: [
          Container(
            width: 70,
            height: 70,
            decoration: BoxDecoration(
              color: Colors.teal.shade50,
              shape: BoxShape.circle,
              border: Border.all(color: Colors.teal.shade200),
            ),
            child: Icon(
              icon,
              size: 30,
              color: Colors.teal.shade700,
            ),
          ),
          const SizedBox(height: 10),
          Text(
            text,
            style:  GoogleFonts.gabarito(
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }

  // Method to pick image from camera or gallery
  Future<void> _pickImage(ImageSource source) async {
    try {
      final XFile? pickedFile = await _imagePicker.pickImage(
        source: source,
        maxWidth: 500,
        maxHeight: 500,
        imageQuality: 80,
      );

      if (pickedFile != null) {
        setState(() {
          _selectedImage = File(pickedFile.path);
        });
      }
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Error picking image: $e'),
            backgroundColor: Colors.red,
            duration: const Duration(seconds: 3),
          ),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.black,
        child: SafeArea(
          child: Column(
            children: [
              Container(
                height: 60,
                width: double.infinity,
                color: Colors.white,
                child: Row(
                  children: [
                    const SizedBox(width: 10),
                    IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(
                        CupertinoIcons.left_chevron,
                        size: 30,
                        color: Colors.black,
                      ),
                    ),
                     SizedBox(width: 25),
                     Text(
                      'Benson Saju',
                      style:  GoogleFonts.gabarito(
                        fontSize: 20,
                      ),
                    ),
                    const Spacer(),
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
              Expanded(
                child: Container(
                  width: double.infinity,
                  color: Colors.grey.shade200,
                  child: Column(
                    children: [
                      const SizedBox(height: 30),
                      SizedBox(
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
                                color: _selectedImage != null ? Colors.transparent : Colors.blue,
                                image: _selectedImage != null
                                    ? DecorationImage(
                                  image: FileImage(_selectedImage!),
                                  fit: BoxFit.cover,
                                )
                                    : null,
                              ),
                              child: _selectedImage == null
                                  ?  Center(
                                child: Text(
                                  'B',
                                  style:  GoogleFonts.gabarito(
                                    color: Colors.white,
                                    fontSize: 70,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              )
                                  : null,
                            ),
                            Positioned(
                              bottom: 0,
                              right: 5,
                              child: GestureDetector(
                                onTap: _showImagePickerOptions,
                                child: Container(
                                  height: 30,
                                  width: 30,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    shape: BoxShape.circle,
                                    border: Border.all(color: Colors.grey.shade200, width: 1),
                                  ),
                                  child: Icon(Icons.camera_alt_outlined, size: 18, color: Colors.teal),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                        Text('Benson Saju', style:  GoogleFonts.gabarito(fontSize: 22, fontWeight: FontWeight.bold)),
                        SizedBox(height: 10),
                        Text('91-8921706545', style:  GoogleFonts.gabarito(fontSize: 17)),
                        SizedBox(height: 7),
                      Text('Flutter Intern', style:  GoogleFonts.gabarito(fontSize: 17, color: Colors.grey.shade600)),
                        SizedBox(height: 30),
                      Container(
                        margin:   EdgeInsets.symmetric(horizontal: 20),
                        height: 155,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(13),
                          color: Colors.white,
                        ),
                        child: Column(
                          children: [
                            const SizedBox(height: 15),
                            InkWell(
                              onTap: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context) => PersonalDetailsScreen()));
                              },
                              child: Row(
                                children: [
                                    SizedBox(width: 10),
                                  Icon(Icons.person_outline, color: Colors.black),
                                    SizedBox(width: 10),
                                    Text('Personal Details', style:  GoogleFonts.gabarito(fontWeight: FontWeight.bold)),
                                    Spacer(),
                                    Icon(CupertinoIcons.forward, size: 20),
                                    SizedBox(width: 10),
                                ],
                              ),
                            ),
                              SizedBox(height: 5),
                            Divider(color: Colors.grey.shade300, thickness: 1),
                              SizedBox(height: 5),
                            InkWell(
                              onTap: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context) => CurrentEmploymentScreen()));
                              },
                              child: Row(
                                children: [
                                    SizedBox(width: 10),
                                  Icon(Icons.cases_outlined, color: Colors.black),
                                    SizedBox(width: 10),
                                    Text(' Current Employee', style:  GoogleFonts.gabarito(fontWeight: FontWeight.bold)),
                                    Spacer(),
                                    Icon(CupertinoIcons.forward, size: 20),
                                    SizedBox(width: 10),
                                ],
                              ),
                            ),
                            const SizedBox(height: 5),
                            Divider(color: Colors.grey.shade300, thickness: 1),
                            const SizedBox(height: 5),
                            InkWell(
                              onTap: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context) => CustomDetailsScreen()));
                              },
                              child: Row(
                                children: [
                                    SizedBox(width: 10),
                                  Icon(Icons.account_balance, color: Colors.black),
                                    SizedBox(width: 10),
                                    Text('Custom Details', style:  GoogleFonts.gabarito(fontWeight: FontWeight.bold)),
                                    Spacer(),
                                    Icon(CupertinoIcons.forward, size: 20),
                                    SizedBox(width: 10),
                                ],
                              ),
                            ),
                              SizedBox(height: 5),
                          ],
                        ),
                      ),
                      const SizedBox(height: 20),
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 20),
                        height: 55,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(13),
                          color: Colors.white,
                        ),
                        child: Row(
                          children: [
                              SizedBox(width: 10),
                            Icon(Icons.fingerprint_outlined, color: Colors.black),
                              SizedBox(width: 10),
                              Text('Attendence details', style:  GoogleFonts.gabarito(fontWeight: FontWeight.bold)),
                              Spacer(),
                              Icon(CupertinoIcons.forward, size: 20),
                              SizedBox(width: 10),
                          ],
                        ),
                      ),
                        SizedBox(height: 20),
                      Container(
                        margin:   EdgeInsets.symmetric(horizontal: 20),
                        height: 55,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(13),
                          color: Colors.white,
                        ),
                        child: InkWell(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => BankAccountDetailsScreen()));
                          },
                          child: Row(
                            children: [
                                SizedBox(width: 10),
                              Icon(Icons.account_balance, color: Colors.black),
                                SizedBox(width: 10),
                                Text('Bank Details', style:  GoogleFonts.gabarito(fontWeight: FontWeight.bold)),
                                Spacer(),
                                Icon(CupertinoIcons.forward, size: 20),
                                SizedBox(width: 10),
                            ],
                          ),
                        ),
                      ),
                        SizedBox(height: 20),
                      Container(
                        margin:   EdgeInsets.symmetric(horizontal: 20),
                        height: 55,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(13),
                          color: Colors.white,
                        ),
                        child: Row(
                          children: [
                              SizedBox(width: 10),
                            Icon(Icons.person_outline, color: Colors.black),
                              SizedBox(width: 10),
                              Text('User Permission', style:  GoogleFonts.gabarito(fontWeight: FontWeight.bold)),
                              Spacer(),
                              Text('Employee', style:  GoogleFonts.gabarito(fontWeight: FontWeight.bold)),
                              SizedBox(width: 10),
                              Icon(CupertinoIcons.forward, size: 20),
                              SizedBox(width: 10),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}