import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class ReferAndEarnPage extends StatelessWidget {
  const ReferAndEarnPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Refer & Earn"),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 1,
      ),
      backgroundColor: Colors.grey.shade300,
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            /// Card Section
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),

              ),
              elevation: 3,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  children: [
                    /// Illustration (use your asset here)
                    SizedBox(
                      height: 150,
                      child: Image.network("https://i.pinimg.com/736x/d1/8c/e3/d18ce367e7187a35f4cbed29ddceba44.jpg"),
                    ),

                    const SizedBox(height: 12),
                      Text(
                      "Refer & Earn up to ₹ 1,00,000",
                      style:  GoogleFonts.gabarito(
                          fontSize: 18, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 12),

                    /// Steps
                    Container(
                        width: 400,
                        padding: const EdgeInsets.all(12),
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey.shade300),
                            borderRadius: BorderRadius.circular(8),
                            color: Colors.grey.shade100
                        ),
                        child:   RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "Step 1: ",
                                style:  GoogleFonts.gabarito(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                  fontSize: 16,
                                ),
                              ),
                              TextSpan(
                                text: "  Invite your friends to SalaryBox",
                                style:  GoogleFonts.gabarito(
                                  color: Colors.grey.shade800,
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),
                        )

                    ),
                    SizedBox(height: 10,),

                    /// Steps
                    Container(
                        width: 400,
                        padding: const EdgeInsets.all(12),
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey.shade300),
                            borderRadius: BorderRadius.circular(8),
                            color: Colors.grey.shade100
                        ),
                        child:   Column(
                          children: [
                            RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: "Step 2: ",
                                    style:  GoogleFonts.gabarito(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                      fontSize: 16,
                                    ),
                                  ),
                                  TextSpan(
                                    text: " Earn flat 10% reward for every friend",
                                    style:  GoogleFonts.gabarito(
                                      color: Colors.grey.shade800,
                                      fontSize: 13,
                                    ),

                                  ),
                                ],
                              ),
                            ),
                            Text("         who purchases SalaryBox Plan",style:  GoogleFonts.gabarito(color: Colors.grey.shade800,fontSize: 13),)
                          ],
                        )

                    ),

                      SizedBox(height: 16),

                    /// Earnings
                    Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 12, horizontal: 16),
                      decoration: BoxDecoration(
                        color: Colors.yellow.shade100,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children:   [
                          Text("Your Earnings"),
                          Text(
                            "₹ 0 Withdraw",
                            style:  GoogleFonts.gabarito(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(height: 16),

                    SizedBox(
                      height: 40,
                      width: double.infinity, // full width
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue,
                          padding: const EdgeInsets.symmetric(vertical: 10), // increase height
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        onPressed: () {},
                        child:   Text("Share Invite",style:  GoogleFonts.gabarito(color: Colors.white),),
                      ),
                    ),

                      SizedBox(height: 12),

                    /// Social Icons
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children:  [
                        Icon(FontAwesomeIcons.whatsapp, color: Colors.green, size: 30),
                        Icon(Icons.email, color: Colors.red, size: 30),
                        Icon(FontAwesomeIcons.facebook,
                            color: Colors.blue, size: 28),
                        Icon(FontAwesomeIcons.instagram,
                            color: Colors.purple, size: 28),
                        Icon(FontAwesomeIcons.linkedin,
                            color: Colors.blueAccent, size: 28),
                      ],
                    )
                  ],
                ),
              ),
            ),



            /// Referral Analytics
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                      Text("Your Referral Analytics",
                        style:  GoogleFonts.gabarito(
                            fontWeight: FontWeight.bold, fontSize: 16)),
                      SizedBox(height: 12),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children:   [
                        Text("Clicks",style:  GoogleFonts.gabarito(fontWeight: FontWeight.bold),),
                        Text("Companies Registered",style:  GoogleFonts.gabarito(fontWeight: FontWeight.bold),),
                        Text("Purchases",style:  GoogleFonts.gabarito(fontWeight: FontWeight.bold),),
                      ],
                    ),
                    // const Divider(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: const [
                        SizedBox(width: 10,),
                        Text("0"),
                        SizedBox(width: 100,),
                        Text("0"),
                        SizedBox(width: 130,),
                        Text("0"),
                      ],
                    ),
                    // const Divider(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [


                      ],
                    ),
                  ],
                ),
              ),
            ),



            /// Referrals Section
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:   [
                    Text("Your Referrals",
                        style:  GoogleFonts.gabarito(
                            fontWeight: FontWeight.bold, fontSize: 16)),
                    SizedBox(height: 12),
                    Row(
                      children: [
                        Text("Name"),
                        SizedBox(width: 50,),
                        Text("phone number"),
                      ],
                    ),
                    const Divider(),

                    SizedBox(height: 6),
                    Center(child: Text("No referrals yet.")),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}