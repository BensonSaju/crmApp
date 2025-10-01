// import 'package:crmapp/crmpage.dart';
// import 'package:crmapp/homescreen.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
//
// import 'bottomNavs.dart';
//
// void main() {
//   SystemChrome.setSystemUIOverlayStyle(
//     SystemUiOverlayStyle(
//       statusBarColor: Colors.red,
//       // statusBarIconBrightness: Brightness.light, // Changed to light for black background
//       // systemNavigationBarColor: Colors.white,
//       // systemNavigationBarIconBrightness: Brightness.dark,
//     ),
//   );
//   runApp(const MyApp());
// }
//
// class MyApp extends StatelessWidget {
//
//   const MyApp({super.key});
//
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//
//       // home: Homescreen(),
//       home: Bottomnav(),
//     );
//   }
// }
//
import 'dart:collection';

import 'package:crmapp/crmpage.dart';
import 'package:crmapp/demomap.dart';
import 'package:crmapp/homescreen.dart';
import 'package:crmapp/mappage.dart';
import 'package:crmapp/splashScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'alarm.dart';
import 'bottomNavs.dart';

void main()  async{
  WidgetsFlutterBinding.ensureInitialized();

  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown, // optional
  ]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // Set the status bar color here
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.black,
        statusBarIconBrightness: Brightness.light, // Use light icons on red background
        statusBarBrightness: Brightness.dark, // For iOS
      ),
    );

    return MaterialApp(
      home: AnnotatedRegion<SystemUiOverlayStyle>(
        value:  SystemUiOverlayStyle(
          statusBarColor: Colors.black,
          statusBarIconBrightness: Brightness.light,
          statusBarBrightness: Brightness.light,
        ),
        child: SplashScreen(),
      ),
    );
  }
}
