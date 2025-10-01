
import 'package:crmapp/reim_history.dart';
import 'package:crmapp/request.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

import 'add_reim.dart';
import 'history.dart';

class Reimbursement extends StatefulWidget {
  const Reimbursement({super.key});

  @override
  State<Reimbursement> createState() => _ReimbursementState();
}

class _ReimbursementState extends State<Reimbursement>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.grey[700], // Match status bar color with AppBar
      statusBarIconBrightness: Brightness.light, // White icons for contrast
    ));
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.grey[900], // Dark grey background
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(100.0), // Increase height here (e.g., 120.0)
            child: AppBar(
              leading: IconButton(onPressed: () {
                Navigator.pop(context);
              }, icon: Icon(CupertinoIcons.back,color: Colors.white,),),
              backgroundColor: Colors.grey[900], // Match the tab bar color from image
              title: Text(
                'Benson Saju',
                style:  GoogleFonts.gabarito(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 17
                ),
              ),
              bottom: TabBar(
                controller: _tabController,
                indicatorSize: TabBarIndicatorSize.tab,
                indicatorWeight: 4,
                indicatorColor: Colors.white, // White underline
                labelColor: Colors.white, // White text for selected tab
                unselectedLabelColor: Colors.grey[400], // Light grey for unselected
                tabs: [
                  Tab(text: 'Reimb..Request'),
                  Tab(text: 'Reimb..History'),
                ],
                labelStyle:  GoogleFonts.gabarito(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
                unselectedLabelStyle:  GoogleFonts.gabarito(fontSize: 14),
              ),
            ),
          ),
          body: TabBarView(
            controller: _tabController,
            children: [
              AddReim(),
              ReimHistory(),
            ],
          ),
        ),
      ),
    );
  }
}