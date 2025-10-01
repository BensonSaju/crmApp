import 'dart:io';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:image_picker/image_picker.dart';
import 'package:file_picker/file_picker.dart';

class LeaveRequestPage extends StatefulWidget {
  const LeaveRequestPage({super.key});

  @override
  State<LeaveRequestPage> createState() => _LeaveRequestPageState();
}

class _LeaveRequestPageState extends State<LeaveRequestPage> {
  DateTime _fromDate = DateTime(2025, 9, 18);
  DateTime _toDate = DateTime(2025, 9, 18);
  bool _isHalfDay = false;
  String _selectedLeaveType = 'Casual Leave (balance: 0 days)';
  final TextEditingController _reasonController = TextEditingController();

  final List<String> _leaveTypes = [
    'Casual Leave (balance: 0 days)',
    'Privileged Leave (balance: 0 days)',
    'Sick Leave (balance: 0 days)',
    'Unpaid Leave'
  ];

  File? _selectedFile;
  final ImagePicker _picker = ImagePicker();

  // -------------------- Date Picker --------------------
  Future<void> _selectDate(BuildContext context, bool isFromDate) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: isFromDate ? _fromDate : _toDate,
      firstDate: DateTime(2020),
      lastDate: DateTime(2030),
    );

    if (picked != null) {
      setState(() {
        if (isFromDate) {
          _fromDate = picked;
          if (_toDate.isBefore(picked)) _toDate = picked;
        } else {
          _toDate = picked;
          if (_fromDate.isAfter(picked)) _fromDate = picked;
        }
      });
    }
  }

  // -------------------- Leave Type Dialog --------------------
  void _showLeaveTypeDialog() {
    showDialog(
      context: context,
      builder: (context) {
        return Dialog(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          child: SizedBox(
            width: MediaQuery.of(context).size.width * 0.9,
            height: 250,
            child: _buildLeaveTypeModal(),
          ),
        );
      },
    );
  }

  Widget _buildLeaveTypeModal() {
    return Container(
      padding:   EdgeInsets.all(8),
      child: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: _leaveTypes.length,
              itemBuilder: (context, index) {
                final leaveType = _leaveTypes[index];
                return ListTile(
                  title: Text(
                    leaveType,
                    style:  GoogleFonts.gabarito(
                      fontWeight: _selectedLeaveType == leaveType
                          ? FontWeight.bold
                          : FontWeight.normal,
                    ),
                  ),
                  trailing: _selectedLeaveType == leaveType
                      ? const Icon(Icons.check, color: Colors.black)
                      : null,
                  onTap: () {
                    setState(() => _selectedLeaveType = leaveType);
                    Navigator.pop(context);
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  // -------------------- File/Image Upload Dialog --------------------
  void _showFileUploadDialog() {
    showDialog(
      context: context,
      builder: (context) {
        return Dialog(
          shape: RoundedRectangleBorder(),
          child: SizedBox(
            height: 250,
            child: Column(
              children: [
                // Header
                // Options
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(width: 10,),
                        Text("Upload Documnet", style:  GoogleFonts.gabarito(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.grey.shade700)),
                        _buildUploadOption(
                          title: 'Take a picture',
                          onTap: () => _pickImage(ImageSource.camera),
                        ),
                        _buildUploadOption(
                          title: 'Choose from gallery',
                          onTap: () => _pickImage(ImageSource.gallery),
                        ),
                        _buildUploadOption(
                          title: 'Choose Document',
                          onTap: _pickDocument,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _buildUploadOption({
    required String title,
    required VoidCallback onTap,
  }) {
    return ListTile(
      title: Text(title, style:    GoogleFonts.gabarito(fontSize: 16, fontWeight: FontWeight.w500)),
      onTap: onTap,
    );
  }

  Future<void> _pickImage(ImageSource source) async {
    final XFile? image = await _picker.pickImage(source: source, imageQuality: 80);
    if (image != null) {
      setState(() => _selectedFile = File(image.path));
    }
    Navigator.pop(context);
  }

  Future<void> _pickDocument() async {
    final result = await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowedExtensions: ['pdf', 'doc', 'docx'],
    );
    if (result != null && result.files.single.path != null) {
      setState(() => _selectedFile = File(result.files.single.path!));
    }
    Navigator.pop(context);
  }

  // -------------------- Submit --------------------
  void _submitLeaveRequest() {
    if (_reasonController.text.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Please enter a reason for leave')),
      );
      return;
    }

    final leaveData = {
      'fromDate': _fromDate,
      'toDate': _toDate,
      'isHalfDay': _isHalfDay,
      'leaveType': _selectedLeaveType,
      'reason': _reasonController.text,
      'file': _selectedFile?.path ?? 'No file',
    };

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('Leave request submitted: $leaveData')),
    );
  }

  // -------------------- UI --------------------
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Request Leave'),
        backgroundColor: Colors.grey.shade900,
        foregroundColor: Colors.white,
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Date fields
            Row(
              children: [
                _buildDateField(label: 'From date *', date: _fromDate, onTap: () => _selectDate(context, true)),
                const SizedBox(width: 18),
                _buildDateField(label: 'To date *', date: _toDate, onTap: () => _selectDate(context, false)),
              ],
            ),

            const SizedBox(height: 5),

            // Half Day Checkbox
            Row(
              children: [
                Checkbox(
                  value: _isHalfDay,
                  onChanged: (value) => setState(() => _isHalfDay = value!),
                ),
                const Text('Request leave for half day'),
              ],
            ),

              SizedBox(height: 20),

            // Leave Type
              Text('Leave Type *', style:  GoogleFonts.gabarito(fontSize: 16)),
              SizedBox(height: 8),
            InkWell(
              onTap: _showLeaveTypeDialog,
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(border: Border.all(color: Colors.grey), borderRadius: BorderRadius.circular(4)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(_selectedLeaveType),
                    const Icon(Icons.arrow_drop_down, color: Colors.black),
                  ],
                ),
              ),
            ),

              SizedBox(height: 20),

            // Reason
              Text('Reason of leave', style:  GoogleFonts.gabarito(fontWeight: FontWeight.bold, color: Colors.grey, fontSize: 16)),
              SizedBox(height: 8),
            TextField(
              controller: _reasonController,
              maxLines: 2,
              decoration: InputDecoration(
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(4)),
                hintText: 'Enter your reason for leave...',
              ),
            ),

              SizedBox(height: 16),

            // Add Image/File
              Text("Add Image or Document", style:  GoogleFonts.gabarito(fontWeight: FontWeight.bold, color: Colors.grey)),
            InkWell(
              onTap: _showFileUploadDialog,
              child: Container(
                padding:   EdgeInsets.symmetric(vertical: 12),
                child:   Row(
                  children: [
                    Icon(Icons.add_photo_alternate, color: Colors.blue),
                    SizedBox(width: 8),
                    Text('Add File', style:  GoogleFonts.gabarito(color: Colors.blue, fontWeight: FontWeight.bold)),
                  ],
                ),
              ),
            ),

            // Display selected file or image
            // Display selected file or image with cancel button
            if (_selectedFile != null)
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8),
                child: Stack(
                  children: [
                    // Image preview or file name
                    _selectedFile!.path.endsWith('.jpg') ||
                        _selectedFile!.path.endsWith('.png') ||
                        _selectedFile!.path.endsWith('.jpeg')
                        ? Image.file(
                      _selectedFile!,
                      height: 100,
                      width: 100,
                      fit: BoxFit.cover,
                    )
                        : Container(
                      height: 50,
                      padding: const EdgeInsets.all(8),
                      color: Colors.grey.shade200,
                      child: Row(
                        children: [
                            Icon(Icons.insert_drive_file, color: Colors.grey),
                            SizedBox(width: 8),
                          Expanded(
                            child: Text(
                              _selectedFile!.path.split('/').last,
                              style:    GoogleFonts.gabarito(color: Colors.green),
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ],
                      ),
                    ),
                    // X button to remove
                    Positioned(
                      top: 0,
                      right: 0,
                      child: GestureDetector(
                        onTap: () {
                          setState(() => _selectedFile = null);
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.black54,
                            shape: BoxShape.circle,
                          ),
                          child: const Icon(
                            Icons.close,
                            color: Colors.white,
                            size: 20,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

            const SizedBox(height: 30),

            // Submit Button
            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                onPressed: _submitLeaveRequest,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.teal,
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                ),
                child:   Text('Request Leave', style:  GoogleFonts.gabarito(fontSize: 16, fontWeight: FontWeight.bold)),
              ),
            ),


          ],
        ),
      ),
    );
  }

  Widget _buildDateField({required String label, required DateTime date, required VoidCallback onTap}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label, style:    GoogleFonts.gabarito(fontSize: 14)),
          SizedBox(height: 8),
        InkWell(
          onTap: onTap,
          child: Container(
            width: 150,
            padding:   EdgeInsets.all(12),
            decoration: BoxDecoration(border: Border.all(color: Colors.grey), borderRadius: BorderRadius.circular(4)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(DateFormat('dd MMM yyyy').format(date), style:    GoogleFonts.gabarito(fontSize: 16)),
                  Icon(Icons.calendar_today, size: 20),
              ],
            ),
          ),
        ),
      ],
    );
  }

  @override
  void dispose() {
    _reasonController.dispose();
    super.dispose();
  }
}