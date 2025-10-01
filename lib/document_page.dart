
import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
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
                      style:  GoogleFonts.gabarito(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),
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
                        style:  GoogleFonts.gabarito(fontSize: 19, color: Colors.grey.shade800),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'You can add documents here like \nAadhar, Pan',
                        style:  GoogleFonts.gabarito(fontSize: 15, color: Colors.grey.shade400),
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
          child: Text('+ Add Document', style:  GoogleFonts.gabarito(fontSize: 18, color: Colors.white)),
        ),
      ),
    );
  }

  void _showDocumentSelectionDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return StatefulBuilder(
          builder: (context, setDialogState) {
            return Dialog(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              child: Container(
                padding: EdgeInsets.all(20),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'Please select document type',
                      style:  GoogleFonts.gabarito(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 20),
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey.shade400),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 12),
                      child: DropdownButton<String>(
                        hint: Text('Select Document Type'),
                        value: selectedDocumentType,
                        isExpanded: true,
                        underline: SizedBox(),
                        icon: Icon(Icons.arrow_drop_down),
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
                          setDialogState(() {
                            selectedDocumentType = newValue;
                          });
                        },
                      ),
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        TextButton(
                          child: Text('Close'),
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                        ),
                        SizedBox(width: 10),
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
                    ),
                  ],
                ),
              ),
            );
          },
        );
      },
    );
  }

  void _showAddDocumentDialog(BuildContext context, String selectedType) async {
    File? tempImage; // Temporary image for this dialog session only

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return StatefulBuilder(
          builder: (context, setDialogState) {
            return Dialog(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              child: Container(
                padding: EdgeInsets.all(20),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'Add $selectedType',
                      style:  GoogleFonts.gabarito(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 20),
                    Text(
                      'Selected: $selectedType',
                      style:  GoogleFonts.gabarito(fontSize: 16),
                    ),
                    SizedBox(height: 20),
                    if (tempImage != null)
                      Container(
                        height: 200,
                        width: 200,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(color: Colors.grey),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: Image.file(
                            tempImage!,
                            fit: BoxFit.cover,
                          ),
                        ),
                      )
                    else
                      Container(
                        height: 200,
                        width: 200,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Icon(Icons.image, size: 50, color: Colors.grey),
                      ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ElevatedButton(
                          onPressed: () async {
                            final XFile? image = await _picker.pickImage(source: ImageSource.camera);
                            if (image != null) {
                              setDialogState(() {
                                tempImage = File(image.path);
                              });
                            }
                          },
                          child: Text('Camera'),
                        ),
                        ElevatedButton(
                          onPressed: () async {
                            final XFile? image = await _picker.pickImage(source: ImageSource.gallery);
                            if (image != null) {
                              setDialogState(() {
                                tempImage = File(image.path);
                              });
                            }
                          },
                          child: Text('Gallery'),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        TextButton(
                          child: Text('Close'),
                          onPressed: () {
                            tempImage = null; // Clear temporary image when closing
                            Navigator.of(context).pop();
                          },
                        ),
                        SizedBox(width: 10),
                        if (tempImage != null)
                          ElevatedButton(
                            onPressed: () {
                              // Save functionality would go here
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text('$selectedType saved successfully!'),
                                  backgroundColor: Colors.green,
                                ),
                              );
                              tempImage = null; // Clear temporary image after save
                              Navigator.of(context).pop();
                            },
                            child: Text('Save'),
                          ),
                      ],
                    ),
                  ],
                ),
              ),
            );
          },
        );
      },
    );
  }
}