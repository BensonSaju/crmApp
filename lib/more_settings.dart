
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MoreSettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey.shade100,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text('More Settings'),

      ),
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Expanded(
            child: ListView(

              padding: EdgeInsets.all(16.0),
              children: [
                Text(
                  'Others',
                  style:  GoogleFonts.gabarito(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                ListTile(
                  leading: Icon(Icons.lightbulb_outline),
                  title: Text('Request a feature'),
                  trailing: Icon(Icons.chevron_right),
                  onTap: () {},
                ),
                ListTile(
                  leading: Icon(Icons.business),
                  title: Text('Select Company'),
                  trailing: Icon(Icons.chevron_right),
                  onTap: () {},
                ),
                ListTile(
                  leading: Icon(Icons.description),
                  title: Text('Terms & Conditions'),
                  trailing: Icon(Icons.chevron_right),
                  onTap: () {},
                ),
                ListTile(
                  leading: Icon(Icons.privacy_tip),
                  title: Text('Privacy Policy'),
                  trailing: Icon(Icons.chevron_right),
                  onTap: () {},
                ),
                ListTile(
                  leading: Icon(Icons.logout),
                  title: Text('Logout'),
                  trailing: Icon(Icons.chevron_right),
                  onTap: () {},
                ),
                SizedBox(height: 20),
                Container(
                  padding: EdgeInsets.all(16.0),
                  margin: EdgeInsets.symmetric(horizontal: 60),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.blueAccent.withOpacity(0.3),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Company Code : YKEFLJ',
                        style:  GoogleFonts.gabarito(
                          fontSize: 16,
                          color: Colors.black,
                        ),
                      ),
                      Text(
                        'v-6.54',
                        style:  GoogleFonts.gabarito(
                          fontSize: 12,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),

              ],
            ),
          ),
        ],
      ),
    );
  }
}