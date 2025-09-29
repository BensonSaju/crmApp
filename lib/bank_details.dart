

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BankAccountDetailsScreen extends StatefulWidget {
  const BankAccountDetailsScreen({super.key});

  @override
  State<BankAccountDetailsScreen> createState() => _BankAccountDetailsScreenState();
}

class _BankAccountDetailsScreenState extends State<BankAccountDetailsScreen> {
  // Form controllers
  final TextEditingController _accountHolderNameController = TextEditingController(text: 'Enter Name');
  final TextEditingController _accountNumberController = TextEditingController(text: 'Enter Account Number');
  final TextEditingController _bankNameController = TextEditingController(text: 'Enter Bank Name');
  final TextEditingController _ifscCodeController = TextEditingController(text: 'Enter IFSC Code');

  // Radio button value
  String selectedOption = 'Bank Account'; // Default to Bank Account as per image

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
            child: const Text(
              "Save Details",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            ),
          ),
        ),
      ),
      body: Container(
        color: Colors.black,
        child: SafeArea(
          child: Column(
            children: [
              // Header Section with Box Shadow
              Container(
                height: 60,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border(
                    bottom: BorderSide(color: Colors.grey.shade200, width: 2),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.3),
                      spreadRadius: 2,
                      blurRadius: 5,
                      offset: Offset(0, 2),
                    ),
                  ],
                ),
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  children: [
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
                    SizedBox(width: 10),
                    Expanded(
                      child: Text(
                        "Benson Saju's Bank Account Details",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87,
                        ),
                        overflow: TextOverflow.ellipsis,
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
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Radio Buttons Section with Separate Containers
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              // Bank Account Container
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    selectedOption = 'Bank Account';
                                  });
                                },
                                child: Container(
                                  width: 160,
                                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                                  decoration: BoxDecoration(
                                    border: Border.all(color: Colors.grey.shade300),
                                    borderRadius: BorderRadius.circular(5),
                                    color: selectedOption == 'Bank Account'
                                        ? Colors.teal.shade100
                                        : Colors.transparent,
                                  ),
                                  child: Row(
                                    children: [
                                      Radio<String>(
                                        value: 'Bank Account',
                                        groupValue: selectedOption,
                                        onChanged: (String? value) {
                                          setState(() {
                                            selectedOption = value!;
                                          });
                                        },
                                        activeColor: Colors.teal.shade300,
                                      ),
                                      Text('Bank Account'),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(width: 20),
                              // UPI Container
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    selectedOption = 'UPI';
                                  });
                                },
                                child: Container(
                                  width: 160,
                                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                                  decoration: BoxDecoration(
                                    border: Border.all(color: Colors.grey.shade300),
                                    borderRadius: BorderRadius.circular(5),
                                    color: selectedOption == 'UPI'
                                        ? Colors.teal.shade100
                                        : Colors.transparent,
                                  ),
                                  child: Row(
                                    children: [
                                      Radio<String>(
                                        value: 'UPI',
                                        groupValue: selectedOption,
                                        onChanged: (String? value) {
                                          setState(() {
                                            selectedOption = value!;
                                          });
                                        },
                                        activeColor: Colors.teal.shade300,
                                      ),
                                      Text('UPI'),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 20),

                          // Account Holder's Name Section
                          _buildSectionTitle('Account Holder\'s Name'),
                          SizedBox(height: 5),
                          TextFormField(
                            controller: _accountHolderNameController,
                            decoration: InputDecoration(
                              hintText: 'Enter Name',
                              filled: true,
                              fillColor: Colors.white,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(3),
                                borderSide: BorderSide(color: Colors.grey[400]!, width: 1),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(3),
                                borderSide: BorderSide(color: Colors.grey[400]!, width: 1),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(3),
                                borderSide: BorderSide(color: Colors.teal.shade300, width: 1.5),
                              ),
                            ),
                          ),
                          SizedBox(height: 15),

                          // Account Number Section
                          _buildSectionTitle('Account Number'),
                          SizedBox(height: 5),
                          TextFormField(
                            controller: _accountNumberController,
                            decoration: InputDecoration(
                              hintText: 'Enter Account Number',
                              filled: true,
                              fillColor: Colors.white,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(3),
                                borderSide: BorderSide(color: Colors.grey[400]!, width: 1),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(3),
                                borderSide: BorderSide(color: Colors.grey[400]!, width: 1),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(3),
                                borderSide: BorderSide(color: Colors.teal.shade300, width: 1.5),
                              ),
                            ),
                            keyboardType: TextInputType.number,
                          ),
                          SizedBox(height: 15),

                          // Bank Name Section
                          _buildSectionTitle('Bank Name'),
                          SizedBox(height: 5),
                          TextFormField(
                            controller: _bankNameController,
                            decoration: InputDecoration(
                              hintText: 'Enter Bank Name',
                              filled: true,
                              fillColor: Colors.white,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(3),
                                borderSide: BorderSide(color: Colors.grey[400]!, width: 1),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(3),
                                borderSide: BorderSide(color: Colors.grey[400]!, width: 1),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(3),
                                borderSide: BorderSide(color: Colors.teal.shade300, width: 1.5),
                              ),
                            ),
                          ),
                          SizedBox(height: 15),

                          // IFSC Code Section
                          _buildSectionTitle('IFSC Code'),
                          SizedBox(height: 5),
                          TextFormField(
                            controller: _ifscCodeController,
                            decoration: InputDecoration(
                              hintText: 'Enter IFSC Code',
                              filled: true,
                              fillColor: Colors.white,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(3),
                                borderSide: BorderSide(color: Colors.grey[400]!, width: 1),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(3),
                                borderSide: BorderSide(color: Colors.grey[400]!, width: 1),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(3),
                                borderSide: BorderSide(color: Colors.teal.shade300, width: 1.5),
                              ),
                            ),
                          ),
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
      style: TextStyle(
        color: Colors.grey,
        fontSize: 14,
        fontWeight: FontWeight.w500,
      ),
    );
  }


}