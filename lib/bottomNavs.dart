
import 'package:crmapp/crmpage.dart';
import 'package:crmapp/homescreen.dart';
import 'package:crmapp/leave_Page.dart';
import 'package:crmapp/mappage.dart';
import 'package:flutter/material.dart';

class Bottomnav extends StatefulWidget {
  const Bottomnav({super.key});

  @override
  State<Bottomnav> createState() => _BottomnavState();
}

class _BottomnavState extends State<Bottomnav> {
  int myIndex = 0;
  List page = [Mappage(), LeaveRequestTabs(), Crmpage(), Homescreen()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: page[myIndex],

      // 🔹 Custom wrapper for BottomNavigationBar
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.white, // background color
          border: Border(
            top: BorderSide(
              color: Colors.grey.shade300, // top border color
              width: 1, // thickness of border
            ),
          ),
        ),
        child: BottomNavigationBar(
          elevation: 0, // remove shadow (optional)
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.white, // background color
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.fingerprint_outlined),
                label: 'Attendence',
                backgroundColor: Colors.white),
            BottomNavigationBarItem(
                icon: Icon(Icons.beach_access_outlined),
                label: 'Leaves',
                backgroundColor: Colors.white),
            BottomNavigationBarItem(
                icon: Icon(Icons.handshake_outlined),
                label: 'CRM',
                backgroundColor: Colors.white),
            BottomNavigationBarItem(
                icon: Icon(Icons.person_outline_sharp),
                label: 'profile',
                backgroundColor: Colors.white),
          ],
          onTap: (value) {
            setState(() {
              myIndex = value;
            });
          },
          currentIndex: myIndex,
          selectedItemColor: Colors.greenAccent.shade700,
          unselectedItemColor: Colors.grey,
        ),
      ),
    );
  }
}

