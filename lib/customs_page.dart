import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomDetailsScreen extends StatelessWidget {
  const CustomDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                      'Custom Details',
                      style:  GoogleFonts.gabarito(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
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
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // Icon
                        Icon(
                          Icons.list_alt,
                          size: 80,
                          color: Colors.grey.shade400,
                        ),
                        SizedBox(height: 20),

                        // Title
                        Text(
                          'No Custom Fields Added',
                          style:  GoogleFonts.gabarito(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey.shade700,
                          ),
                        ),
                        SizedBox(height: 15),

                        // Description
                        Text(
                          'Create custom fields to store your staff\'s details,\nFor Example: Laptop S.No., Badge Number, etc.',
                          textAlign: TextAlign.center,
                          style:  GoogleFonts.gabarito(
                            fontSize: 14,
                            color: Colors.grey.shade600,
                            height: 1.5,
                          ),
                        ),
                        SizedBox(height: 30),



                      ],
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
}