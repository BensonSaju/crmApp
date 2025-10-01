// import 'dart:async';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:shared_preferences/shared_preferences.dart';
//
//
//
// class SplashScreen extends StatefulWidget {
//   const SplashScreen({super.key});
//
//   @override
//   State<SplashScreen> createState() => _SplashScreenState();
// }
//
// // class _SplashScreenState extends State<SplashScreen> {
// //   double _opacity = 1.0;
// //
// //   @override
// //   void initState() {
// //     super.initState();
// //
// //     Timer(const Duration(seconds: 2), () {
// //       setState(() {
// //         _opacity = 0.0;
// //       });
// //
// //       Future.delayed(const Duration(seconds: 1), () {
// //         Get.offAll(() =>  Dashboard());
// //       });
// //     });
// //   }
// //
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       backgroundColor: Colors.white,
// //       body: AnimatedOpacity(
// //         opacity: _opacity,
// //         duration: const Duration(seconds: 1),
// //         child: Center(
// //           child: Column(
// //             mainAxisAlignment: MainAxisAlignment.center,
// //             children: [
// //               Image.asset(
// //                 'assets/images/veterinarian.png',
// //                 height: 120,
// //               ),
// //               SizedBox(height: 20),
// //               //  Text(
// //               //   "Hive",
// //               //   style: TextStyle(
// //               //     fontSize: 26,
// //               //     fontWeight: FontWeight.bold,
// //               //     color: Colors.black,
// //               //   ),
// //               // ),
// //             ],
// //           ),
// //         ),
// //       ),
// //     );
// //   }
// // }
// class _SplashScreenState extends State<SplashScreen> {
//   double _opacity = 1.0;
//
//   @override
//   void initState() {
//     super.initState();
//
//     Timer(const Duration(seconds: 2), () {
//       setState(() {
//         _opacity = 0.0;
//       });
//
//       Future.delayed(const Duration(seconds: 1), () async {
//         // ✅ Check SharedPreferences here
//         final prefs = await SharedPreferences.getInstance();
//         bool isLoggedIn = prefs.getBool('isLoggedIn') ?? false;
//
//         if (isLoggedIn) {
//           Get.offAll(() => Dashboard());
//         } else {
//           Get.offAll(() => SignInPage());
//         }
//       });
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: AnimatedOpacity(
//         opacity: _opacity,
//         duration: const Duration(seconds: 1),
//         child: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Image.asset(
//                 'assets/images/veterinarian.png',
//                 height: 120,
//               ),
//               SizedBox(height: 20),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
//
// import 'dart:async';
// import 'package:crmapp/bottomNavs.dart';
// import 'package:crmapp/crmpage.dart'; // Import Crmpage
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
//
// class SplashScreen extends StatefulWidget {
//   const SplashScreen({super.key});
//
//   @override
//   State<SplashScreen> createState() => _SplashScreenState();
// }
//
// class _SplashScreenState extends State<SplashScreen> {
//   double _opacity = 1.0;
//
//   @override
//   void initState() {
//     super.initState();
//
//     Timer(const Duration(seconds: 2), () {
//       setState(() {
//         _opacity = 0.0; // Start fade-out
//       });
//
//       Future.delayed(const Duration(seconds: 1), () {
//         Get.offAll(() =>  Bottomnav()); // Navigate to Crmpage
//       });
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: AnimatedOpacity(
//         opacity: _opacity,
//         duration: const Duration(seconds: 1),
//         child: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Image.asset(
//                 'images/splashimg.png',
//                 height: 120,
//               ),
//               const SizedBox(height: 20),
//
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
///
import 'dart:async';
import 'package:crmapp/bottomNavs.dart'; // Ensure this path is correct
import 'package:crmapp/crmpage.dart'; // Fallback import
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  double _opacity = 1.0;

  @override
  void initState() {
    super.initState();
    print('SplashScreen: initState called'); // Debug log

    Timer(const Duration(seconds: 2), () {
      print('SplashScreen: Timer triggered, starting fade-out'); // Debug log
      setState(() {
        _opacity = 0.0; // Start fade-out
      });

      Future.delayed(const Duration(seconds: 1), () {
        try {
          print('SplashScreen: Attempting navigation to Bottomnav'); // Debug log
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => const Bottomnav()),
          );
        } catch (e, stackTrace) {
          print('SplashScreen: Navigation error: $e');
          print('StackTrace: $stackTrace');
          // Fallback navigation to Crmpage
          print('SplashScreen: Falling back to Crmpage');
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => const Crmpage()),
          );
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    print('SplashScreen: Building UI'); // Debug log
    return Scaffold(
      backgroundColor: Colors.white,
      body: AnimatedOpacity(
        opacity: _opacity,
        duration: const Duration(seconds: 1),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'images/splashimg.png', // Corrected path
                height: 90,
                errorBuilder: (context, error, stackTrace) {
                  print('SplashScreen: Image load error: $error'); // Debug log
                  return   Text('Image not found');
                },
              ),
                SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}