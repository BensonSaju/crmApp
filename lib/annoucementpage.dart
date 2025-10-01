import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Annoucementpage extends StatefulWidget {
  const Annoucementpage({super.key});

  @override
  State<Annoucementpage> createState() => _AnnoucementpageState();
}

class _AnnoucementpageState extends State<Annoucementpage> {
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    // Wait for 1 second and then hide the loading indicator
    Future.delayed(const Duration(seconds: 1), () {
      setState(() {
        _isLoading = false;
      });
    });
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
                    SizedBox(width: 10),
                    IconButton(onPressed: (){
                      Navigator.pop(context);
                    },
                     icon: Icon( CupertinoIcons.left_chevron,
                      size: 30,
                      color: Colors.black,
                    ),),
                    SizedBox(width: 25),
                    Text(
                      'Announcements',
                      style:  GoogleFonts.gabarito(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              Container(height: 8, color: Colors.grey.shade200),
              Expanded(
                child: Container(
                  color: Colors.white,

                  child: Center(
                    child: _isLoading
                        ?  CircularProgressIndicator()
                        : Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.announcement_outlined,size: 50,color: Colors.grey.shade200,),
                        Center(
                          child: Text(
                            'No Announcements',
                            style:  GoogleFonts.gabarito(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Colors.grey.shade300,
                            ),
                          ),
                        ),
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
