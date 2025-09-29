// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
//
// class DocumentPage extends StatelessWidget {
//   const DocumentPage({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         color: Colors.black,
//         child: SafeArea(
//           child: Column(
//             children: [
//               Container(
//                 height: 60,
//                 color: Colors.grey.shade800,
//                 child:Row(
//                   children: [
//                     SizedBox(width: 5,),
//                     IconButton(onPressed: () {
//                       Navigator.pop(context);
//                     }, icon: Icon(CupertinoIcons.back,color: Colors.white,size: 35,)),
//                     SizedBox(width: 20,),
//                     Text('Benson Sajus document',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18),)
//                   ],                ),
//               ),
//               Expanded(child: Container(
//                 width: double.infinity,
//                 color: Colors.white,
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     SizedBox(height: 20,),
//                     Text('No Document found',style: TextStyle(fontSize: 19,color: Colors.grey.shade800),),
//                     SizedBox(height: 10,),
//                     Text('you can add documents like \nAadhar,Pan',style: TextStyle(fontSize: 15,color: Colors.grey.shade400),textAlign:TextAlign.center,)
//                   ],
//                 ),
//               ),)
//             ],
//           ),
//         ),
//       ),
//         floatingActionButton: SizedBox(
//             height: 40,
//             width: 170,
//             child: FloatingActionButton(
//               shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(30)
//               ),
//               onPressed: () {},
//               backgroundColor: Colors.teal.shade300,
//               child: Text('+ add Documents',style: TextStyle(fontSize: 18,color: Colors.white),),)
//         )
//     );
//   }
// }
///
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
//
// class DocumentPage extends StatefulWidget {
//   const DocumentPage({super.key});
//
//   @override
//   _DocumentPageState createState() => _DocumentPageState();
// }
//
// class _DocumentPageState extends State<DocumentPage> {
//   String? selectedDocumentType;
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         color: Colors.black,
//         child: SafeArea(
//           child: Column(
//             children: [
//               Container(
//                 height: 60,
//                 color: Colors.grey.shade800,
//                 child: Row(
//                   children: [
//                     SizedBox(width: 5),
//                     IconButton(
//                       onPressed: () {
//                         Navigator.pop(context);
//                       },
//                       icon: Icon(CupertinoIcons.back, color: Colors.white, size: 35),
//                     ),
//                     SizedBox(width: 20),
//                     Text(
//                       'Benson Sajus Documents',
//                       style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),
//                     ),
//                   ],
//                 ),
//               ),
//               Expanded(
//                 child: Container(
//                   width: double.infinity,
//                   color: Colors.white,
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       SizedBox(height: 20),
//                       Text(
//                         'No Documents found',
//                         style: TextStyle(fontSize: 19, color: Colors.grey.shade800),
//                       ),
//                       SizedBox(height: 10),
//                       Text(
//                         'You can add documents here like \nAadhar, Pan',
//                         style: TextStyle(fontSize: 15, color: Colors.grey.shade400),
//                         textAlign: TextAlign.center,
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//       floatingActionButton: SizedBox(
//         height: 40,
//         width: 170,
//         child: FloatingActionButton(
//           shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
//           onPressed: () {
//             _showDocumentSelectionDialog(context);
//           },
//           backgroundColor: Colors.teal.shade300,
//           child: Text('+ Add Document', style: TextStyle(fontSize: 18, color: Colors.white)),
//         ),
//       ),
//     );
//   }
//
//   void _showDocumentSelectionDialog(BuildContext context) {
//     showDialog(
//       context: context,
//       builder: (BuildContext context) {
//         return AlertDialog(
//           title: Text('Please select document type'),
//           content: DropdownButton<String>(
//             hint: Text('Select Document Type'),
//             value: selectedDocumentType,
//             items: <String>[
//               'Aadhar',
//               'Address Proof',
//               'Background Verification',
//               'Bank Account Details',
//               'Degree',
//               'Driving License',
//               'Employment Contract',
//               'PAN Card',
//               'Police Verification',
//               'Salary Slip',
//               'Previous Employment Documents',
//               'Professional Documents',
//               'Other',
//               'Voter ID',
//               'Verification Report',
//             ].map<DropdownMenuItem<String>>((String value) {
//               return DropdownMenuItem<String>(
//                 value: value,
//                 child: Text(value),
//               );
//             }).toList(),
//             onChanged: (String? newValue) {
//               setState(() {
//                 selectedDocumentType = newValue;
//               });
//             },
//             isExpanded: true,
//           ),
//           actions: <Widget>[
//             TextButton(
//               child: Text('Close'),
//               onPressed: () {
//                 Navigator.of(context).pop();
//               },
//             ),
//             TextButton(
//               child: Text('Next'),
//               onPressed: () {
//                 if (selectedDocumentType != null) {
//                   Navigator.of(context).pop();
//                   _showDocumentListDialog(context, selectedDocumentType!);
//                 }
//               },
//             ),
//           ],
//         );
//       },
//     );
//   }
//
//   void _showDocumentListDialog(BuildContext context, String selectedType) {
//     showDialog(
//       context: context,
//       builder: (BuildContext context) {
//         return AlertDialog(
//           title: Text('Selected: $selectedType'),
//           content: SingleChildScrollView(
//             child: ListBody(
//               children: <Widget>[
//                 ListTile(
//                   title: Text('Aadhar'),
//                   onTap: () {
//                     Navigator.pop(context);
//                     // Add logic for Aadhar selection
//                   },
//                 ),
//                 ListTile(
//                   title: Text('Address Proof'),
//                   onTap: () {
//                     Navigator.pop(context);
//                     // Add logic for Address Proof selection
//                   },
//                 ),
//                 ListTile(
//                   title: Text('Background Verification'),
//                   onTap: () {
//                     Navigator.pop(context);
//                     // Add logic for Background Verification selection
//                   },
//                 ),
//                 ListTile(
//                   title: Text('Bank Account Details'),
//                   onTap: () {
//                     Navigator.pop(context);
//                     // Add logic for Bank Account Details selection
//                   },
//                 ),
//                 ListTile(
//                   title: Text('Degree'),
//                   onTap: () {
//                     Navigator.pop(context);
//                     // Add logic for Degree selection
//                   },
//                 ),
//                 ListTile(
//                   title: Text('Driving License'),
//                   onTap: () {
//                     Navigator.pop(context);
//                     // Add logic for Driving License selection
//                   },
//                 ),
//                 ListTile(
//                   title: Text('Employment Contract'),
//                   onTap: () {
//                     Navigator.pop(context);
//                     // Add logic for Employment Contract selection
//                   },
//                 ),
//                 ListTile(
//                   title: Text('PAN Card'),
//                   onTap: () {
//                     Navigator.pop(context);
//                     // Add logic for PAN Card selection
//                   },
//                 ),
//                 ListTile(
//                   title: Text('Police Verification'),
//                   onTap: () {
//                     Navigator.pop(context);
//                     // Add logic for Police Verification selection
//                   },
//                 ),
//                 ListTile(
//                   title: Text('Salary Slip'),
//                   onTap: () {
//                     Navigator.pop(context);
//                     // Add logic for Salary Slip selection
//                   },
//                 ),
//                 ListTile(
//                   title: Text('Previous Employment Documents'),
//                   onTap: () {
//                     Navigator.pop(context);
//                     // Add logic for Previous Employment Documents selection
//                   },
//                 ),
//                 ListTile(
//                   title: Text('Professional Documents'),
//                   onTap: () {
//                     Navigator.pop(context);
//                     // Add logic for Professional Documents selection
//                   },
//                 ),
//                 ListTile(
//                   title: Text('Other'),
//                   onTap: () {
//                     Navigator.pop(context);
//                     // Add logic for Other selection
//                   },
//                 ),
//                 ListTile(
//                   title: Text('Voter ID'),
//                   onTap: () {
//                     Navigator.pop(context);
//                     // Add logic for Voter ID selection
//                   },
//                 ),
//                 ListTile(
//                   title: Text('Verification Report'),
//                   onTap: () {
//                     Navigator.pop(context);
//                     // Add logic for Verification Report selection
//                   },
//                 ),
//               ],
//             ),
//           ),
//           actions: <Widget>[
//             TextButton(
//               child: Text('Close'),
//               onPressed: () {
//                 Navigator.of(context).pop();
//               },
//             ),
//           ],
//         );
//       },
//     );
//   }
// }
///
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
//
// class DocumentPage extends StatefulWidget {
//   const DocumentPage({super.key});
//
//   @override
//   _DocumentPageState createState() => _DocumentPageState();
// }
//
// class _DocumentPageState extends State<DocumentPage> {
//   String? selectedDocumentType;
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         color: Colors.black,
//         child: SafeArea(
//           child: Column(
//             children: [
//               Container(
//                 height: 60,
//                 color: Colors.grey.shade800,
//                 child: Row(
//                   children: [
//                     SizedBox(width: 5),
//                     IconButton(
//                       onPressed: () {
//                         Navigator.pop(context);
//                       },
//                       icon: Icon(CupertinoIcons.back, color: Colors.white, size: 35),
//                     ),
//                     SizedBox(width: 20),
//                     Text(
//                       'Benson Sajus Documents',
//                       style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),
//                     ),
//                   ],
//                 ),
//               ),
//               Expanded(
//                 child: Container(
//                   width: double.infinity,
//                   color: Colors.white,
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       SizedBox(height: 20),
//                       Text(
//                         'No Documents found',
//                         style: TextStyle(fontSize: 19, color: Colors.grey.shade800),
//                       ),
//                       SizedBox(height: 10),
//                       Text(
//                         'You can add documents here like \nAadhar, Pan',
//                         style: TextStyle(fontSize: 15, color: Colors.grey.shade400),
//                         textAlign: TextAlign.center,
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//       floatingActionButton: SizedBox(
//         height: 40,
//         width: 170,
//         child: FloatingActionButton(
//           shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
//           onPressed: () {
//             _showDocumentSelectionDialog(context);
//           },
//           backgroundColor: Colors.teal.shade300,
//           child: Text('+ Add Document', style: TextStyle(fontSize: 18, color: Colors.white)),
//         ),
//       ),
//     );
//   }
//
//   void _showDocumentSelectionDialog(BuildContext context) {
//     showDialog(
//       context: context,
//       builder: (BuildContext context) {
//         return AlertDialog(
//           title: Text('Please select document type'),
//           content: DropdownButton<String>(
//             hint: Text('Select Document Type'),
//             value: selectedDocumentType,
//             items: <String>[
//               'Aadhar',
//               'Address Proof',
//               'Background Verification',
//               'Bank Account Details',
//               'Degree',
//               'Driving License',
//               'Employment Contract',
//               'PAN Card',
//               'Police Verification',
//               'Salary Slip',
//               'Previous Employment Documents',
//               'Professional Documents',
//               'Other',
//               'Voter ID',
//               'Verification Report',
//             ].map<DropdownMenuItem<String>>((String value) {
//               return DropdownMenuItem<String>(
//                 value: value,
//                 child: Text(value),
//               );
//             }).toList(),
//             onChanged: (String? newValue) {
//               setState(() {
//                 selectedDocumentType = newValue;
//               });
//             },
//             isExpanded: true,
//           ),
//           actions: <Widget>[
//             TextButton(
//               child: Text('Close'),
//               onPressed: () {
//                 Navigator.of(context).pop();
//               },
//             ),
//             TextButton(
//               child: Text('Next'),
//               onPressed: () {
//                 if (selectedDocumentType != null) {
//                   Navigator.of(context).pop();
//                   _showAddDocumentDialog(context, selectedDocumentType!);
//                 }
//               },
//             ),
//           ],
//         );
//       },
//     );
//   }
//
//   void _showAddDocumentDialog(BuildContext context, String selectedType) {
//     showDialog(
//       context: context,
//       builder: (BuildContext context) {
//         return AlertDialog(
//           title: Text('Add $selectedType'),
//           content: Column(
//             mainAxisSize: MainAxisSize.min,
//             children: [
//               Text('Please upload or provide details for $selectedType.'),
//               SizedBox(height: 20),
//               // Add a simple text field or upload button as needed
//               ElevatedButton(
//                 onPressed: () {
//                   // Add your logic to handle document upload or details
//                   Navigator.pop(context);
//                 },
//                 child: Text('Upload Document'),
//               ),
//             ],
//           ),
//           actions: <Widget>[
//             TextButton(
//               child: Text('Close'),
//               onPressed: () {
//                 Navigator.of(context).pop();
//               },
//             ),
//           ],
//         );
//       },
//     );
//   }
// }
///
import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class DocumentPage extends StatefulWidget {
  const DocumentPage({super.key});

  @override
  _DocumentPageState createState() => _DocumentPageState();
}

class _DocumentPageState extends State<DocumentPage> {
  String? selectedDocumentType;
  File? _selectedImage;

  final ImagePicker _picker = ImagePicker();

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
                      style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  width: double.infinity,
                  color: Colors.white,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(height: 20),
                      Text(
                        'No Documents found',
                        style: TextStyle(fontSize: 19, color: Colors.grey.shade800),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'You can add documents here like \nAadhar, Pan',
                        style: TextStyle(fontSize: 15, color: Colors.grey.shade400),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: SizedBox(
        height: 40,
        width: 170,
        child: FloatingActionButton(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
          onPressed: () {
            _showDocumentSelectionDialog(context);
          },
          backgroundColor: Colors.teal.shade300,
          child: Text('+ Add Document', style: TextStyle(fontSize: 18, color: Colors.white)),
        ),
      ),
    );
  }

  void _showDocumentSelectionDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Please select document type'),
          content: DropdownButton<String>(
            hint: Text('Select Document Type'),
            value: selectedDocumentType,
            items: <String>[
              'Aadhar',
              'Address Proof',
              'Background Verification',
              'Bank Account Details',
              'Degree',
              'Driving License',
              'Employment Contract',
              'PAN Card',
              'Police Verification',
              'Salary Slip',
              'Previous Employment Documents',
              'Professional Documents',
              'Other',
              'Voter ID',
              'Verification Report',
            ].map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
            onChanged: (String? newValue) {
              setState(() {
                selectedDocumentType = newValue;
              });
            },
            isExpanded: true,
          ),
          actions: <Widget>[
            TextButton(
              child: Text('Close'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              child: Text('Next'),
              onPressed: () {
                if (selectedDocumentType != null) {
                  Navigator.of(context).pop();
                  _showAddDocumentDialog(context, selectedDocumentType!);
                }
              },
            ),
          ],
        );
      },
    );
  }

  void _showAddDocumentDialog(BuildContext context, String selectedType) async {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Add $selectedType'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              if (_selectedImage != null)
                Image.file(
                  _selectedImage!,
                  height: 100,
                  width: 100,
                  fit: BoxFit.cover,
                ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () async {
                      final XFile? image = await _picker.pickImage(source: ImageSource.camera);
                      if (image != null) {
                        setState(() {
                          _selectedImage = File(image.path);
                        });
                      }
                    },
                    child: Text('Camera'),
                  ),
                  ElevatedButton(
                    onPressed: () async {
                      final XFile? image = await _picker.pickImage(source: ImageSource.gallery);
                      if (image != null) {
                        setState(() {
                          _selectedImage = File(image.path);
                        });
                      }
                    },
                    child: Text('Gallery'),
                  ),
                ],
              ),
              if (_selectedImage != null)
                ElevatedButton(
                  onPressed: () {
                    // Add logic to save or process the selected image
                    Navigator.pop(context);
                  },
                  child: Text('Save'),
                ),
            ],
          ),
          actions: <Widget>[
            TextButton(
              child: Text('Close'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}
