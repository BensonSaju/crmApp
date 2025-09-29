

///..................
// import 'package:crmapp/annoucementpage.dart';
// import 'package:crmapp/note_page.dart';
// import 'package:crmapp/notification.dart';
// import 'package:flutter/material.dart';
// import 'package:geolocator/geolocator.dart';
// import 'package:google_maps_flutter/google_maps_flutter.dart';
// import 'package:intl/intl.dart';
//
// class Mappage extends StatefulWidget {
//   const Mappage({super.key});
//
//   @override
//   State<Mappage> createState() => _MappageState();
// }
//
// class _MappageState extends State<Mappage> {
//   String getFormattedDate() {
//     final now = DateTime.now();
//     return DateFormat('d MMMM').format(now);
//   }
//
//   bool isPunchedIn = false;
//   bool onBreak = false;
//   GoogleMapController? _mapController;
//   LatLng _currentPosition = const LatLng(10.015, 76.341); // Default fallback position
//   final LatLng _remoteLocation = const LatLng(10.003295662404597, 76.31289875811986); // Remote location
//   String _punchInType = ''; // Track punch-in type for marker
//
//   @override
//   void initState() {
//     super.initState();
//     _determinePosition();
//   }
//
//   Future<void> _determinePosition({bool useRemote = false}) async {
//     try {
//       if (useRemote) {
//         if (mounted) {
//           setState(() {
//             _currentPosition = _remoteLocation;
//             _punchInType = 'Remote';
//           });
//         }
//         if (_mapController != null && mounted) {
//           _mapController!.animateCamera(
//             CameraUpdate.newLatLngZoom(_currentPosition, 15),
//           );
//         }
//         return;
//       }
//
//       bool serviceEnabled = await Geolocator.isLocationServiceEnabled();
//       if (!serviceEnabled) {
//         if (mounted) {
//           ScaffoldMessenger.of(context).showSnackBar(
//             const SnackBar(content: Text('Location services are disabled.')),
//           );
//         }
//         return;
//       }
//
//       LocationPermission permission = await Geolocator.checkPermission();
//       if (permission == LocationPermission.denied) {
//         permission = await Geolocator.requestPermission();
//         if (permission == LocationPermission.denied) {
//           if (mounted) {
//             ScaffoldMessenger.of(context).showSnackBar(
//               const SnackBar(content: Text('Location permissions are denied.')),
//             );
//           }
//           return;
//         }
//       }
//       if (permission == LocationPermission.deniedForever) {
//         if (mounted) {
//           ScaffoldMessenger.of(context).showSnackBar(
//             const SnackBar(content: Text('Location permissions are permanently denied.')),
//           );
//         }
//         return;
//       }
//
//       Position position = await Geolocator.getCurrentPosition(
//         desiredAccuracy: LocationAccuracy.high,
//       );
//       if (mounted) {
//         setState(() {
//           _currentPosition = LatLng(position.latitude, position.longitude);
//           _punchInType = isPunchedIn ? 'Offline' : '';
//         });
//       }
//
//       if (_mapController != null && mounted) {
//         _mapController!.animateCamera(
//           CameraUpdate.newLatLngZoom(_currentPosition, 15),
//         );
//       }
//     } catch (e) {
//       debugPrint('Error getting location: $e');
//       if (mounted) {
//         ScaffoldMessenger.of(context).showSnackBar(
//           SnackBar(content: Text('Error getting location: $e')),
//         );
//       }
//     }
//   }
//
//   void _onMapCreated(GoogleMapController controller) {
//     _mapController = controller;
//     _mapController!.animateCamera(
//       CameraUpdate.newLatLngZoom(_currentPosition, 15),
//     );
//   }
//
//   @override
//   void dispose() {
//     _mapController?.dispose();
//     super.dispose();
//   }
//
//   // Check if user is within 1km of remote location
//   Future<bool> _isWithinRemoteRange() async {
//     try {
//       Position position = await Geolocator.getCurrentPosition(
//         desiredAccuracy: LocationAccuracy.high,
//       );
//       double distanceInMeters = Geolocator.distanceBetween(
//         position.latitude,
//         position.longitude,
//         _remoteLocation.latitude,
//         _remoteLocation.longitude,
//       );
//       return distanceInMeters <= 1000; // 1km = 1000 meters
//     } catch (e) {
//       debugPrint('Error checking location range: $e');
//       if (mounted) {
//         ScaffoldMessenger.of(context).showSnackBar(
//           SnackBar(content: Text('Error checking location: $e')),
//         );
//       }
//       return false;
//     }
//   }
//
//   // Show Remote/Offline dialog
//   Future<void> _showLocationTypeDialog() async {
//     await showDialog(
//       context: context,
//       builder: (context) {
//         return AlertDialog(
//           backgroundColor: Colors.white,
//           shape: RoundedRectangleBorder(
//             borderRadius: BorderRadius.circular(6),
//           ),
//           title: const Text(
//             'Select Punch-In Type',
//             style: TextStyle(fontWeight: FontWeight.bold),
//           ),
//           content: const Text('Are you punching in remotely or from your current location?'),
//           actionsAlignment: MainAxisAlignment.spaceEvenly,
//           actions: [
//             SizedBox(
//               width: 120,
//               child: ElevatedButton(
//                 style: ElevatedButton.styleFrom(
//                   backgroundColor: Colors.tealAccent.shade700,
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(4),
//                   ),
//                 ),
//                 onPressed: () async {
//                   Navigator.pop(context);
//                   bool isWithinRange = await _isWithinRemoteRange();
//                   if (isWithinRange) {
//                     _showPunchInDialog(isRemote: true);
//                   } else {
//                     if (mounted) {
//                       showDialog(
//                         context: context,
//                         builder: (context) => AlertDialog(
//                           backgroundColor: Colors.white,
//                           shape: RoundedRectangleBorder(
//                             borderRadius: BorderRadius.circular(6),
//                           ),
//                           title: const Text('Location Error'),
//                           content: const Text('You are too far from the remote location (must be within 1km).'),
//                           actions: [
//                             TextButton(
//                               onPressed: () => Navigator.pop(context),
//                               child: const Text('OK'),
//                             ),
//                           ],
//                         ),
//                       );
//                     }
//                   }
//                 },
//                 child: const Text(
//                   'Remote',
//                   style: TextStyle(color: Colors.black),
//                 ),
//               ),
//             ),
//             SizedBox(
//               width: 120,
//               child: ElevatedButton(
//                 style: ElevatedButton.styleFrom(
//                   backgroundColor: Colors.grey.shade200,
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(4),
//                   ),
//                 ),
//                 onPressed: () {
//                   Navigator.pop(context);
//                   _showPunchInDialog(isRemote: false);
//                 },
//                 child: const Text(
//                   'Offline',
//                   style: TextStyle(color: Colors.black),
//                 ),
//               ),
//             ),
//           ],
//         );
//       },
//     );
//   }
//
//   // Punch-in dialog
//   Future<void> _showPunchInDialog({required bool isRemote}) async {
//     await _determinePosition(useRemote: isRemote);
//
//     if (mounted) {
//       await showDialog(
//         context: context,
//         builder: (context) {
//           final now = DateTime.now();
//           final punchTime = DateFormat('hh:mm a').format(now);
//           return AlertDialog(
//             backgroundColor: Colors.white,
//             shape: RoundedRectangleBorder(
//               borderRadius: BorderRadius.circular(6),
//             ),
//             content: Column(
//               mainAxisSize: MainAxisSize.min,
//               children: [
//                 Container(
//                   padding:  EdgeInsets.all(16),
//                   decoration: BoxDecoration(
//                     shape: BoxShape.circle,
//                     color: Colors.tealAccent.shade700,
//                   ),
//                   child:  Icon(
//                     Icons.check,
//                     color: Colors.white,
//                     size: 50,
//                   ),
//                 ),
//                 const SizedBox(height: 16),
//                 const Text(
//                   "Benson Saju",
//                   style: TextStyle(
//                     fontSize: 18,
//                     fontWeight: FontWeight.w600,
//                   ),
//                 ),
//                 const SizedBox(height: 8),
//                 Text(
//                   "Punching in at\n$punchTime\n${isRemote ? 'Tinos Software' : 'Offline'}",
//                   textAlign: TextAlign.center,
//                   style: const TextStyle(
//                     fontSize: 22,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//               ],
//             ),
//             actionsAlignment: MainAxisAlignment.spaceEvenly,
//             actions: [
//               SizedBox(
//                 width: 120,
//                 child: ElevatedButton(
//                   style: ElevatedButton.styleFrom(
//                     backgroundColor: Colors.tealAccent.shade700,
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(4),
//                     ),
//                   ),
//                   onPressed: () {
//                     Navigator.pop(context);
//                     setState(() {
//                       isPunchedIn = true;
//                       _punchInType = isRemote ? 'Remote' : 'Offline';
//                       debugPrint('Punched in at: ${_currentPosition.latitude}, ${_currentPosition.longitude} ($_punchInType)');
//                     });
//                   },
//                   child: const Text(
//                     "Confirm",
//                     style: TextStyle(color: Colors.black),
//                   ),
//                 ),
//               ),
//               const SizedBox(width: 5),
//               SizedBox(
//                 width: 120,
//                 child: ElevatedButton(
//                   style: ElevatedButton.styleFrom(
//                     backgroundColor: Colors.grey.shade200,
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(4),
//                     ),
//                   ),
//                   onPressed: () {
//                     Navigator.pop(context);
//                   },
//                   child: const Text(
//                     "Cancel",
//                     style: TextStyle(color: Colors.black),
//                   ),
//                 ),
//               ),
//             ],
//           );
//         },
//       );
//     }
//   }
//
//   // Break dialog
//   Future<void> _showBreakDialog() async {
//     final now = DateTime.now();
//     final punchTime = DateFormat('hh:mm a').format(now);
//     await showDialog(
//       context: context,
//       builder: (context) {
//         return AlertDialog(
//           backgroundColor: Colors.white,
//           shape: RoundedRectangleBorder(
//             borderRadius: BorderRadius.circular(6),
//           ),
//           content: Column(
//             mainAxisSize: MainAxisSize.min,
//             children: [
//               Container(
//                 padding: const EdgeInsets.all(16),
//                 decoration: BoxDecoration(
//                   shape: BoxShape.circle,
//                   color: Colors.tealAccent.shade700,
//                 ),
//                 child: const Icon(
//                   Icons.check,
//                   color: Colors.white,
//                   size: 50,
//                 ),
//               ),
//               const SizedBox(height: 16),
//               const Text(
//                 "Benson Saju",
//                 style: TextStyle(
//                   fontSize: 18,
//                   fontWeight: FontWeight.w600,
//                 ),
//               ),
//               const SizedBox(height: 8),
//               Text(
//                 "${onBreak ? 'Ending break' : 'Taking break'} at\n$punchTime",
//                 textAlign: TextAlign.center,
//                 style: const TextStyle(
//                   fontSize: 22,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//             ],
//           ),
//           actionsAlignment: MainAxisAlignment.spaceEvenly,
//           actions: [
//             SizedBox(
//               width: 120,
//               child: ElevatedButton(
//                 style: ElevatedButton.styleFrom(
//                   backgroundColor: Colors.tealAccent.shade700,
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(4),
//                   ),
//                 ),
//                 onPressed: () {
//                   Navigator.pop(context);
//                   setState(() {
//                     onBreak = !onBreak; // Toggle break status
//                   });
//                 },
//                 child: const Text(
//                   "Confirm",
//                   style: TextStyle(color: Colors.black),
//                 ),
//               ),
//             ),
//             const SizedBox(width: 5),
//             SizedBox(
//               width: 120,
//               child: ElevatedButton(
//                 style: ElevatedButton.styleFrom(
//                   backgroundColor: Colors.grey.shade200,
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(4),
//                   ),
//                 ),
//                 onPressed: () {
//                   Navigator.pop(context);
//                 },
//                 child: const Text(
//                   "Cancel",
//                   style: TextStyle(color: Colors.black),
//                 ),
//               ),
//             ),
//           ],
//         );
//       },
//     );
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       color: Colors.black,
//       child: SafeArea(
//         child: Column(
//           children: [
//             Container(
//               height: 120,
//               decoration: BoxDecoration(
//                 color: Colors.white,
//                 border: Border(
//                   bottom: BorderSide(
//                     color: Colors.green.shade300,
//                     width: 1,
//                   ),
//                 ),
//               ),
//               child: Column(
//                 children: [
//                   const SizedBox(height: 17),
//                   Padding(
//                     padding: const EdgeInsets.symmetric(horizontal: 20),
//                     child: Row(
//                       children: [
//                         Container(
//                           height: 50,
//                           width: 50,
//                           decoration: const BoxDecoration(
//                             shape: BoxShape.circle,
//                             color: Colors.yellow,
//                           ),
//                           child: const Center(
//                             child: Text(
//                               'F',
//                               style: TextStyle(
//                                 fontSize: 30,
//                                 color: Colors.white,
//                               ),
//                             ),
//                           ),
//                         ),
//                         const SizedBox(width: 10),
//                         const Text(
//                           'Flutter Test Pvt',
//                           style: TextStyle(
//                             fontWeight: FontWeight.bold,
//                             fontSize: 16,
//                           ),
//                         ),
//                          Spacer(),
//                        IconButton(
//                          icon: const Icon(Icons.notifications_none_outlined),
//                          onPressed: () {
//                            Navigator.push(context, MaterialPageRoute(builder: (context) => Notification_page(),));
//                          },
//                        ),
//                       ],
//                     ),
//                   ),
//                   const SizedBox(height: 25),
//                   Row(
//                     crossAxisAlignment: CrossAxisAlignment.center,
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       Text(
//                         getFormattedDate(),
//                         style: const TextStyle(fontSize: 16),
//                       ),
//                       const SizedBox(width: 6),
//                       Text(
//                         onBreak
//                             ? 'On Break'
//                             : isPunchedIn
//                             ? 'Present'
//                             : 'Absent',
//                         style: TextStyle(
//                           fontSize: 16,
//                           color: onBreak
//                               ? Colors.yellow
//                               : isPunchedIn
//                               ? Colors.greenAccent
//                               : Colors.red,
//                         ),
//                       ),
//                     ],
//                   ),
//                 ],
//               ),
//             ),
//             Expanded(
//               child: Stack(
//                 children: [
//                   GoogleMap(
//                     onMapCreated: _onMapCreated,
//                     initialCameraPosition: CameraPosition(
//                       target: _currentPosition,
//                       zoom: 15,
//                     ),
//                     myLocationEnabled: true,
//                     myLocationButtonEnabled: false,
//                     markers: {
//                       Marker(
//                         markerId: const MarkerId('punch_in_location'),
//                         position: _currentPosition,
//                         infoWindow: InfoWindow(
//                           title: onBreak
//                               ? 'On Break'
//                               : isPunchedIn
//                               ? '$_punchInType Punch-In'
//                               : 'Current Location',
//                           snippet: '${_currentPosition.latitude}, ${_currentPosition.longitude}',
//                         ),
//                         icon: BitmapDescriptor.defaultMarkerWithHue(
//                           onBreak
//                               ? BitmapDescriptor.hueYellow
//                               : isPunchedIn && _punchInType == 'Remote'
//                               ? BitmapDescriptor.hueBlue
//                               : BitmapDescriptor.hueRed,
//                         ),
//                       ),
//                     },
//                   ),
//                   Positioned(
//                     top: 20,
//                     right: 20,
//                     child: FloatingActionButton(
//                       backgroundColor: Colors.white,
//                       onPressed: () => _determinePosition(useRemote: false),
//                       child: const Icon(Icons.my_location, color: Colors.black87),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             Container(
//               height: 100,
//               width: double.infinity,
//               color: Colors.black,
//               child: !isPunchedIn
//                   ? GestureDetector(
//                 onTap: _showLocationTypeDialog,
//                 child: Container(
//                   margin: const EdgeInsets.all(25),
//                   height: 30,
//                   decoration: BoxDecoration(
//                     color: Colors.greenAccent.shade400,
//                     borderRadius: BorderRadius.circular(10),
//                   ),
//                   child: const Center(
//                     child: Text(
//                       'Punch In',
//                       style: TextStyle(
//                         color: Colors.white,
//                         fontWeight: FontWeight.bold,
//                         fontSize: 18,
//                       ),
//                     ),
//                   ),
//                 ),
//               )
//                   : Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                 children: [
//                   GestureDetector(
//                     onTap: () {
//                       showDialog(
//                         context: context,
//                         builder: (context) {
//                           final now = DateTime.now();
//                           final punchTime = DateFormat('hh:mm a').format(now);
//                           return AlertDialog(
//                             backgroundColor: Colors.white,
//                             shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(6),
//                             ),
//                             content: Column(
//                               mainAxisSize: MainAxisSize.min,
//                               children: [
//                                 Container(
//                                   padding: const EdgeInsets.all(16),
//                                   decoration: BoxDecoration(
//                                     shape: BoxShape.circle,
//                                     color: Colors.tealAccent.shade700,
//                                   ),
//                                   child: const Icon(
//                                     Icons.check,
//                                     color: Colors.white,
//                                     size: 50,
//                                   ),
//                                 ),
//                                 const SizedBox(height: 16),
//                                 const Text(
//                                   "Benson Saju",
//                                   style: TextStyle(
//                                     fontSize: 18,
//                                     fontWeight: FontWeight.w600,
//                                   ),
//                                 ),
//                                 const SizedBox(height: 8),
//                                 Text(
//                                   "Punching out at\n$punchTime",
//                                   textAlign: TextAlign.center,
//                                   style: const TextStyle(
//                                     fontSize: 22,
//                                     fontWeight: FontWeight.bold,
//                                   ),
//                                 ),
//                               ],
//                             ),
//                             actionsAlignment: MainAxisAlignment.spaceEvenly,
//                             actions: [
//                               SizedBox(
//                                 width: 120,
//                                 child: ElevatedButton(
//                                   style: ElevatedButton.styleFrom(
//                                     backgroundColor: Colors.tealAccent.shade700,
//                                     shape: RoundedRectangleBorder(
//                                       borderRadius: BorderRadius.circular(4),
//                                     ),
//                                   ),
//                                   onPressed: () {
//                                     Navigator.pop(context);
//                                     setState(() {
//                                       isPunchedIn = false;
//                                       onBreak = false;
//                                       _punchInType = '';
//                                     });
//                                   },
//                                   child: const Text(
//                                     "Confirm",
//                                     style: TextStyle(color: Colors.black),
//                                   ),
//                                 ),
//                               ),
//                               const SizedBox(width: 5),
//                               SizedBox(
//                                 width: 120,
//                                 child: ElevatedButton(
//                                   style: ElevatedButton.styleFrom(
//                                     backgroundColor: Colors.grey.shade200,
//                                     shape: RoundedRectangleBorder(
//                                       borderRadius: BorderRadius.circular(4),
//                                     ),
//                                   ),
//                                   onPressed: () {
//                                     Navigator.pop(context);
//                                   },
//                                   child: const Text(
//                                     "Cancel",
//                                     style: TextStyle(color: Colors.black),
//                                   ),
//                                 ),
//                               ),
//                             ],
//                           );
//                         },
//                       );
//                     },
//                     child: Container(
//                       width: 180,
//                       height: 50,
//                       decoration: BoxDecoration(
//                         color: Colors.red.shade600,
//                         borderRadius: BorderRadius.circular(4),
//                       ),
//                       child: const Center(
//                         child: Text(
//                           'Punch out',
//                           style: TextStyle(
//                             color: Colors.white,
//                             fontWeight: FontWeight.bold,
//                             fontSize: 18,
//                           ),
//                         ),
//                       ),
//                     ),
//                   ),
//                   GestureDetector(
//                     onTap: _showBreakDialog,
//                     child: Container(
//                       width: 180,
//                       height: 50,
//                       decoration: BoxDecoration(
//                         color: onBreak ? Colors.yellow : const Color(0xfffff4e9),
//                         borderRadius: BorderRadius.circular(4),
//                       ),
//                       child: Center(
//                         child: Text(
//                           onBreak ? 'End Break' : 'Start Break',
//                           style: TextStyle(
//                             color: onBreak ? Colors.black : Colors.orange,
//                             fontWeight: FontWeight.bold,
//                             fontSize: 18,
//                           ),
//                         ),
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             GestureDetector(onTap:
//               () => Navigator.push(context, MaterialPageRoute(builder: (context) => NatePage(),)),
//               child: Container(
//                 height: 30,
//                 color: Colors.blue.shade200,
//                 child: const Center(
//                   child: Text(
//                     'Check Todays Notes',
//                     style: TextStyle(
//                       color: Colors.black,
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
///........................................................................................
import 'package:crmapp/annoucementpage.dart';
import 'package:crmapp/note_page.dart';
import 'package:crmapp/notification.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:intl/intl.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Mappage extends StatefulWidget {
  const Mappage({super.key});

  @override
  State<Mappage> createState() => _MappageState();
}

class _MappageState extends State<Mappage> {
  String getFormattedDate() {
    final now = DateTime.now();
    return DateFormat('d MMMM').format(now);
  }

  bool isPunchedIn = false;
  bool onBreak = false;
  GoogleMapController? _mapController;
  LatLng _currentPosition = const LatLng(10.015, 76.341); // Default fallback position
  final LatLng _remoteLocation = const LatLng(10.003295662404597, 76.31289875811986); // Remote location
  String _punchInType = ''; // Track punch-in type for marker

  @override
  void initState() {
    super.initState();
    _loadPersistedState(); // Load saved state
    _determinePosition();
  }

  // Load persisted state from shared_preferences
  Future<void> _loadPersistedState() async {
    final prefs = await SharedPreferences.getInstance();
    if (mounted) {
      setState(() {
        isPunchedIn = prefs.getBool('isPunchedIn') ?? false;
        onBreak = prefs.getBool('onBreak') ?? false;
        _punchInType = prefs.getString('punchInType') ?? '';
        final lat = prefs.getDouble('latitude');
        final lng = prefs.getDouble('longitude');
        if (lat != null && lng != null) {
          _currentPosition = LatLng(lat, lng);
        }
      });
    }
  }

  // Save state to shared_preferences
  Future<void> _saveState() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool('isPunchedIn', isPunchedIn);
    await prefs.setBool('onBreak', onBreak);
    await prefs.setString('punchInType', _punchInType);
    await prefs.setDouble('latitude', _currentPosition.latitude);
    await prefs.setDouble('longitude', _currentPosition.longitude);
  }

  Future<void> _determinePosition({bool useRemote = false}) async {
    try {
      if (useRemote) {
        if (mounted) {
          setState(() {
            _currentPosition = _remoteLocation;
            _punchInType = 'Remote';
          });
          await _saveState(); // Save updated state
        }
        if (_mapController != null && mounted) {
          _mapController!.animateCamera(
            CameraUpdate.newLatLngZoom(_currentPosition, 15),
          );
        }
        return;
      }

      bool serviceEnabled = await Geolocator.isLocationServiceEnabled();
      if (!serviceEnabled) {
        if (mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('Location services are disabled.')),
          );
        }
        return;
      }

      LocationPermission permission = await Geolocator.checkPermission();
      if (permission == LocationPermission.denied) {
        permission = await Geolocator.requestPermission();
        if (permission == LocationPermission.denied) {
          if (mounted) {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text('Location permissions are denied.')),
            );
          }
          return;
        }
      }
      if (permission == LocationPermission.deniedForever) {
        if (mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('Location permissions are permanently denied.')),
          );
        }
        return;
      }

      Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high,
      );
      if (mounted) {
        setState(() {
          _currentPosition = LatLng(position.latitude, position.longitude);
          _punchInType = isPunchedIn ? 'Offline' : '';
        });
        await _saveState(); // Save updated state
      }

      if (_mapController != null && mounted) {
        _mapController!.animateCamera(
          CameraUpdate.newLatLngZoom(_currentPosition, 15),
        );
      }
    } catch (e) {
      debugPrint('Error getting location: $e');
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Error getting location: $e')),
        );
      }
    }
  }

  void _onMapCreated(GoogleMapController controller) {
    _mapController = controller;
    _mapController!.animateCamera(
      CameraUpdate.newLatLngZoom(_currentPosition, 15),
    );
  }

  @override
  void dispose() {
    _mapController?.dispose();
    super.dispose();
  }

  // Check if user is within 1km of remote location
  Future<bool> _isWithinRemoteRange() async {
    try {
      Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high,
      );
      double distanceInMeters = Geolocator.distanceBetween(
        position.latitude,
        position.longitude,
        _remoteLocation.latitude,
        _remoteLocation.longitude,
      );
      return distanceInMeters <= 1000; // 1km = 1000 meters
    } catch (e) {
      debugPrint('Error checking location range: $e');
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Error checking location: $e')),
        );
      }
      return false;
    }
  }

  // Show Remote/Offline dialog
  Future<void> _showLocationTypeDialog() async {
    await showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          backgroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(6),
          ),
          title:   Text(
            'Select Punch-In Type',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          content:   Text('Are you punching in remotely or from your current location?'),
          actionsAlignment: MainAxisAlignment.spaceEvenly,
          actions: [
            SizedBox(
              width: 120,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.tealAccent.shade700,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4),
                  ),
                ),
                onPressed: () async {
                  Navigator.pop(context);
                  bool isWithinRange = await _isWithinRemoteRange();
                  if (isWithinRange) {
                    _showPunchInDialog(isRemote: true);
                  } else {
                    if (mounted) {
                      showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                          backgroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6),
                          ),
                          title:   Text('Location Error'),
                          content:   Text('You are too far from the remote location (must be within 1km).'),
                          actions: [
                            TextButton(
                              onPressed: () => Navigator.pop(context),
                              child:   Text('OK'),
                            ),
                          ],
                        ),
                      );
                    }
                  }
                },
                child: const Text(
                  'Remote',
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ),
            SizedBox(
              width: 120,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.grey.shade200,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4),
                  ),
                ),
                onPressed: () {
                  Navigator.pop(context);
                  _showPunchInDialog(isRemote: false);
                },
                child: const Text(
                  'Offline',
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ),
          ],
        );
      },
    );
  }

  // Punch-in dialog
  Future<void> _showPunchInDialog({required bool isRemote}) async {
    await _determinePosition(useRemote: isRemote);

    if (mounted) {
      await showDialog(
        context: context,
        builder: (context) {
          final now = DateTime.now();
          final punchTime = DateFormat('hh:mm a').format(now);
          return AlertDialog(
            backgroundColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(6),
            ),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.tealAccent.shade700,
                  ),
                  child: const Icon(
                    Icons.check,
                    color: Colors.white,
                    size: 50,
                  ),
                ),
                const SizedBox(height: 16),
                const Text(
                  "Benson Saju",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  "Punching in at\n$punchTime\n${isRemote ? 'Tinos Software' : 'Offline'}",
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            actionsAlignment: MainAxisAlignment.spaceEvenly,
            actions: [
              SizedBox(
                width: 120,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.tealAccent.shade700,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4),
                    ),
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                    setState(() {
                      isPunchedIn = true;
                      _punchInType = isRemote ? 'Remote' : 'Offline';
                      debugPrint('Punched in at: ${_currentPosition.latitude}, ${_currentPosition.longitude} ($_punchInType)');
                    });
                    _saveState(); // Save state after punch-in
                  },
                  child: const Text(
                    "Confirm",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ),
              const SizedBox(width: 5),
              SizedBox(
                width: 120,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey.shade200,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4),
                    ),
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text(
                    "Cancel",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ),
            ],
          );
        },
      );
    }
  }

  // Break dialog
  Future<void> _showBreakDialog() async {
    final now = DateTime.now();
    final punchTime = DateFormat('hh:mm a').format(now);
    await showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          backgroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(6),
          ),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.tealAccent.shade700,
                ),
                child: const Icon(
                  Icons.check,
                  color: Colors.white,
                  size: 50,
                ),
              ),
              const SizedBox(height: 16),
              const Text(
                "Benson Saju",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                "${onBreak ? 'Ending break' : 'Taking break'} at\n$punchTime",
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          actionsAlignment: MainAxisAlignment.spaceEvenly,
          actions: [
            SizedBox(
              width: 120,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.tealAccent.shade700,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4),
                  ),
                ),
                onPressed: () {
                  Navigator.pop(context);
                  setState(() {
                    onBreak = !onBreak; // Toggle break status
                  });
                  _saveState(); // Save state after break toggle
                },
                child: const Text(
                  "Confirm",
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ),
            const SizedBox(width: 5),
            SizedBox(
              width: 120,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.grey.shade200,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4),
                  ),
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text(
                  "Cancel",
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: SafeArea(
        child: Column(
          children: [
            Container(
              height: 120,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border(
                  bottom: BorderSide(
                    color: Colors.green.shade300,
                    width: 1,
                  ),
                ),
              ),
              child: Column(
                children: [
                  const SizedBox(height: 17),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.yellow,
                          ),
                          child: const Center(
                            child: Text(
                              'F',
                              style: TextStyle(
                                fontSize: 30,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 10),
                        const Text(
                          'Flutter Test Pvt',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                        const Spacer(),
                        IconButton(
                          icon: const Icon(Icons.notifications_none_outlined),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Notification_page()),
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 25),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        getFormattedDate(),
                        style: const TextStyle(fontSize: 16),
                      ),
                      const SizedBox(width: 6),
                      Text(
                        onBreak
                            ? 'On Break'
                            : isPunchedIn
                            ? 'Present'
                            : 'Absent',
                        style: TextStyle(
                          fontSize: 16,
                          color: onBreak
                              ? Colors.yellow
                              : isPunchedIn
                              ? Colors.greenAccent
                              : Colors.red,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
              child: Stack(
                children: [
                  GoogleMap(
                    onMapCreated: _onMapCreated,
                    initialCameraPosition: CameraPosition(
                      target: _currentPosition,
                      zoom: 15,
                    ),
                    myLocationEnabled: true,
                    myLocationButtonEnabled: false,
                    markers: {
                      Marker(
                        markerId: const MarkerId('punch_in_location'),
                        position: _currentPosition,
                        infoWindow: InfoWindow(
                          title: onBreak
                              ? 'On Break'
                              : isPunchedIn
                              ? '$_punchInType Punch-In'
                              : 'Current Location',
                          snippet: '${_currentPosition.latitude}, ${_currentPosition.longitude}',
                        ),
                        icon: BitmapDescriptor.defaultMarkerWithHue(
                          onBreak
                              ? BitmapDescriptor.hueYellow
                              : isPunchedIn && _punchInType == 'Remote'
                              ? BitmapDescriptor.hueBlue
                              : BitmapDescriptor.hueRed,
                        ),
                      ),
                    },
                  ),
                  Positioned(
                    top: 20,
                    right: 20,
                    child: FloatingActionButton(
                      backgroundColor: Colors.white,
                      onPressed: () => _determinePosition(useRemote: false),
                      child: const Icon(Icons.my_location, color: Colors.black87),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 100,
              width: double.infinity,
              color: Colors.black,
              child: !isPunchedIn
                  ? GestureDetector(
                onTap: _showLocationTypeDialog,
                child: Container(
                  margin: const EdgeInsets.all(25),
                  height: 30,
                  decoration: BoxDecoration(
                    color: Colors.greenAccent.shade400,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Center(
                    child: Text(
                      'Punch In',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
              )
                  : Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {
                      showDialog(
                        context: context,
                        builder: (context) {
                          final now = DateTime.now();
                          final punchTime = DateFormat('hh:mm a').format(now);
                          return AlertDialog(
                            backgroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(6),
                            ),
                            content: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Container(
                                  padding: const EdgeInsets.all(16),
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.tealAccent.shade700,
                                  ),
                                  child: const Icon(
                                    Icons.check,
                                    color: Colors.white,
                                    size: 50,
                                  ),
                                ),
                                const SizedBox(height: 16),
                                const Text(
                                  "Benson Saju",
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                const SizedBox(height: 8),
                                Text(
                                  "Punching out at\n$punchTime",
                                  textAlign: TextAlign.center,
                                  style: const TextStyle(
                                    fontSize: 22,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            actionsAlignment: MainAxisAlignment.spaceEvenly,
                            actions: [
                              SizedBox(
                                width: 120,
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.tealAccent.shade700,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(4),
                                    ),
                                  ),
                                  onPressed: () {
                                    Navigator.pop(context);
                                    setState(() {
                                      isPunchedIn = false;
                                      onBreak = false;
                                      _punchInType = '';
                                    });
                                    _saveState(); // Save state after punch-out
                                  },
                                  child: const Text(
                                    "Confirm",
                                    style: TextStyle(color: Colors.black),
                                  ),
                                ),
                              ),
                              const SizedBox(width: 5),
                              SizedBox(
                                width: 120,
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.grey.shade200,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(4),
                                    ),
                                  ),
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  child: const Text(
                                    "Cancel",
                                    style: TextStyle(color: Colors.black),
                                  ),
                                ),
                              ),
                            ],
                          );
                        },
                      );
                    },
                    child: Container(
                      width: 180,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.red.shade600,
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: const Center(
                        child: Text(
                          'Punch out',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: _showBreakDialog,
                    child: Container(
                      width: 180,
                      height: 50,
                      decoration: BoxDecoration(
                        color: onBreak ? Colors.yellow : const Color(0xfffff4e9),
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: Center(
                        child: Text(
                          onBreak ? 'End Break' : 'Start Break',
                          style: TextStyle(
                            color: onBreak ? Colors.black : Colors.orange,
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => NotePage())),
              child: Container(
                height: 30,
                color: Colors.blue.shade200,
                child: const Center(
                  child: Text(
                    'Check Todays Notes',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// import 'package:crmapp/note_page.dart';
// import 'package:crmapp/notification.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:google_maps_flutter/google_maps_flutter.dart';
//
// import 'controller.dart';
//
// class Mappage extends StatelessWidget {
//   const Mappage({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     // Initialize controller
//     final MapController controller = Get.put(MapController());
//
//     return Container(
//       color: Colors.black,
//       child: SafeArea(
//         child: Column(
//           children: [
//             Container(
//               height: 120,
//               decoration: BoxDecoration(
//                 color: Colors.white,
//                 border: Border(
//                   bottom: BorderSide(
//                     color: Colors.green.shade300,
//                     width: 1,
//                   ),
//                 ),
//               ),
//               child: Column(
//                 children: [
//                   const SizedBox(height: 17),
//                   Padding(
//                     padding: const EdgeInsets.symmetric(horizontal: 20),
//                     child: Row(
//                       children: [
//                         Container(
//                           height: 50,
//                           width: 50,
//                           decoration: const BoxDecoration(
//                             shape: BoxShape.circle,
//                             color: Colors.yellow,
//                           ),
//                           child: const Center(
//                             child: Text(
//                               'F',
//                               style: TextStyle(
//                                 fontSize: 30,
//                                 color: Colors.white,
//                               ),
//                             ),
//                           ),
//                         ),
//                         const SizedBox(width: 10),
//                         const Text(
//                           'Flutter Test Pvt',
//                           style: TextStyle(
//                             fontWeight: FontWeight.bold,
//                             fontSize: 16,
//                           ),
//                         ),
//                         const Spacer(),
//                         IconButton(
//                           icon: const Icon(Icons.notifications_none_outlined),
//                           onPressed: () {
//                             Get.to(() => Notification_page());
//                           },
//                         ),
//                       ],
//                     ),
//                   ),
//                   const SizedBox(height: 25),
//                   Obx(
//                         () => Row(
//                       crossAxisAlignment: CrossAxisAlignment.center,
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         Text(
//                           controller.getFormattedDate(),
//                           style: const TextStyle(fontSize: 16),
//                         ),
//                         const SizedBox(width: 6),
//                         Text(
//                           controller.onBreak.value
//                               ? 'On Break'
//                               : controller.isPunchedIn.value
//                               ? 'Present'
//                               : 'Absent',
//                           style: TextStyle(
//                             fontSize: 16,
//                             color: controller.onBreak.value
//                                 ? Colors.yellow
//                                 : controller.isPunchedIn.value
//                                 ? Colors.greenAccent
//                                 : Colors.red,
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             Expanded(
//               child: Stack(
//                 children: [
//                   Obx(
//                         () => GoogleMap(
//                       onMapCreated: controller.onMapCreated,
//                       initialCameraPosition: CameraPosition(
//                         target: controller.currentPosition.value,
//                         zoom: 15,
//                       ),
//                       myLocationEnabled: true,
//                       myLocationButtonEnabled: false,
//                       markers: controller.getMarkers(),
//                     ),
//                   ),
//                   Positioned(
//                     top: 20,
//                     right: 20,
//                     child: FloatingActionButton(
//                       backgroundColor: Colors.white,
//                       onPressed: () => controller.determinePosition(useRemote: false),
//                       child: const Icon(Icons.my_location, color: Colors.black87),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             Obx(
//                   () => Container(
//                 height: 100,
//                 width: double.infinity,
//                 color: Colors.black,
//                 child: !controller.isPunchedIn.value
//                     ? GestureDetector(
//                   onTap: controller.showLocationTypeDialog,
//                   child: Container(
//                     margin: const EdgeInsets.all(25),
//                     height: 30,
//                     decoration: BoxDecoration(
//                       color: Colors.greenAccent.shade400,
//                       borderRadius: BorderRadius.circular(10),
//                     ),
//                     child: const Center(
//                       child: Text(
//                         'Punch In',
//                         style: TextStyle(
//                           color: Colors.white,
//                           fontWeight: FontWeight.bold,
//                           fontSize: 18,
//                         ),
//                       ),
//                     ),
//                   ),
//                 )
//                     : Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                   children: [
//                     GestureDetector(
//                       onTap: controller.showPunchOutDialog,
//                       child: Container(
//                         width: 180,
//                         height: 50,
//                         decoration: BoxDecoration(
//                           color: Colors.red.shade600,
//                           borderRadius: BorderRadius.circular(4),
//                         ),
//                         child: const Center(
//                           child: Text(
//                             'Punch out',
//                             style: TextStyle(
//                               color: Colors.white,
//                               fontWeight: FontWeight.bold,
//                               fontSize: 18,
//                             ),
//                           ),
//                         ),
//                       ),
//                     ),
//                     GestureDetector(
//                       onTap: controller.showBreakDialog,
//                       child: Container(
//                         width: 180,
//                         height: 50,
//                         decoration: BoxDecoration(
//                           color: controller.onBreak.value
//                               ? Colors.yellow
//                               : const Color(0xfffff4e9),
//                           borderRadius: BorderRadius.circular(4),
//                         ),
//                         child: Center(
//                           child: Text(
//                             controller.onBreak.value ? 'End Break' : 'Start Break',
//                             style: TextStyle(
//                               color: controller.onBreak.value ? Colors.black : Colors.orange,
//                               fontWeight: FontWeight.bold,
//                               fontSize: 18,
//                             ),
//                           ),
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//             GestureDetector(
//               onTap: () => Get.to(() => NatePage()),
//               child: Container(
//                 height: 30,
//                 color: Colors.blue.shade200,
//                 child: const Center(
//                   child: Text(
//                     'Check Todays Notes',
//                     style: TextStyle(
//                       color: Colors.black,
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }