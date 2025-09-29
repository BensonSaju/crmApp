// import 'package:flutter/material.dart';
// import 'package:geolocator/geolocator.dart';
// import 'package:get/get.dart';
// import 'package:google_maps_flutter/google_maps_flutter.dart';
// import 'package:intl/intl.dart';
// import 'package:shared_preferences/shared_preferences.dart';
//
// class MapController extends GetxController {
//   // Reactive state variables
//   final isPunchedIn = false.obs;
//   final onBreak = false.obs;
//   final currentPosition = const LatLng(10.015, 76.341).obs;
//   final punchInType = ''.obs;
//   final _remoteLocation = const LatLng(10.003295662404597, 76.31289875811986);
//   GoogleMapController? _mapController;
//   LatLng? _lastKnownPosition;
//
//   // Get formatted date
//   String getFormattedDate() {
//     final now = DateTime.now();
//     return DateFormat('d MMMM').format(now);
//   }
//
//   @override
//   void onInit() {
//     super.onInit();
//     _loadPersistedState();
//     _fetchInitialPosition();
//   }
//
//   @override
//   void onClose() {
//     _mapController?.dispose();
//     super.onClose();
//   }
//
//   // Load persisted state from shared_preferences
//   Future<void> _loadPersistedState() async {
//     final prefs = await SharedPreferences.getInstance();
//     isPunchedIn.value = prefs.getBool('isPunchedIn') ?? false;
//     onBreak.value = prefs.getBool('onBreak') ?? false;
//     punchInType.value = prefs.getString('punchInType') ?? '';
//     final lat = prefs.getDouble('latitude');
//     final lng = prefs.getDouble('longitude');
//     if (lat != null && lng != null) {
//       currentPosition.value = LatLng(lat, lng);
//     }
//   }
//
//   // Save state to shared_preferences
//   Future<void> _saveState() async {
//     final prefs = await SharedPreferences.getInstance();
//     await prefs.setBool('isPunchedIn', isPunchedIn.value);
//     await prefs.setBool('onBreak', onBreak.value);
//     await prefs.setString('punchInType', punchInType.value);
//     await prefs.setDouble('latitude', currentPosition.value.latitude);
//     await prefs.setDouble('longitude', currentPosition.value.longitude);
//   }
//
//   // Pre-fetch initial location
//   Future<void> _fetchInitialPosition() async {
//     try {
//       bool serviceEnabled = await Geolocator.isLocationServiceEnabled();
//       if (!serviceEnabled) return;
//
//       LocationPermission permission = await Geolocator.checkPermission();
//       if (permission == LocationPermission.denied) {
//         permission = await Geolocator.requestPermission();
//         if (permission == LocationPermission.denied || permission == LocationPermission.deniedForever) return;
//       }
//
//       Position position = await Geolocator.getCurrentPosition(
//         desiredAccuracy: LocationAccuracy.high,
//       );
//       _lastKnownPosition = LatLng(position.latitude, position.longitude);
//       if (!isPunchedIn.value) {
//         currentPosition.value = _lastKnownPosition!;
//         await _saveState();
//       }
//       _updateMapCamera();
//     } catch (e) {
//       debugPrint('Error pre-fetching location: $e');
//     }
//   }
//
//   // Determine position (remote or live)
//   Future<void> determinePosition({bool useRemote = false}) async {
//     try {
//       if (useRemote) {
//         currentPosition.value = _remoteLocation;
//         punchInType.value = 'Remote';
//         await _saveState();
//         _updateMapCamera();
//         return;
//       }
//
//       if (_lastKnownPosition != null) {
//         currentPosition.value = _lastKnownPosition!;
//         punchInType.value = isPunchedIn.value ? 'Offline' : '';
//         await _saveState();
//         _updateMapCamera();
//         return;
//       }
//
//       bool serviceEnabled = await Geolocator.isLocationServiceEnabled();
//       if (!serviceEnabled) {
//         Get.snackbar('Error', 'Location services are disabled.');
//         return;
//       }
//
//       LocationPermission permission = await Geolocator.checkPermission();
//       if (permission == LocationPermission.denied) {
//         permission = await Geolocator.requestPermission();
//         if (permission == LocationPermission.denied) {
//           Get.snackbar('Error', 'Location permissions are denied.');
//           return;
//         }
//       }
//       if (permission == LocationPermission.deniedForever) {
//         Get.snackbar('Error', 'Location permissions are permanently denied.');
//         return;
//       }
//
//       Position position = await Geolocator.getCurrentPosition(
//         desiredAccuracy: LocationAccuracy.high,
//       );
//       _lastKnownPosition = LatLng(position.latitude, position.longitude);
//       currentPosition.value = _lastKnownPosition!;
//       punchInType.value = isPunchedIn.value ? 'Offline' : '';
//       await _saveState();
//       _updateMapCamera();
//     } catch (e) {
//       debugPrint('Error getting location: $e');
//       Get.snackbar('Error', 'Error getting location: $e');
//     }
//   }
//
//   // Update map camera
//   void _updateMapCamera() {
//     if (_mapController != null) {
//       _mapController!.animateCamera(
//         CameraUpdate.newLatLngZoom(currentPosition.value, 15),
//       );
//     }
//   }
//
//   // Set map controller
//   void onMapCreated(GoogleMapController controller) {
//     _mapController = controller;
//     _updateMapCamera();
//   }
//
//   // Check if user is within 1km of remote location
//   Future<bool> isWithinRemoteRange() async {
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
//       Get.snackbar('Error', 'Error checking location: $e');
//       return false;
//     }
//   }
//
//   // Show location type dialog
//   Future<void> showLocationTypeDialog() async {
//     await Get.dialog(
//       AlertDialog(
//         backgroundColor: Colors.white,
//         shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.circular(6),
//         ),
//         title: const Text(
//           'Select Punch-In Type',
//           style: TextStyle(fontWeight: FontWeight.bold),
//         ),
//         content: const Text('Are you punching in remotely or from your current location?'),
//         actionsAlignment: MainAxisAlignment.spaceEvenly,
//         actions: [
//           SizedBox(
//             width: 120,
//             child: ElevatedButton(
//               style: ElevatedButton.styleFrom(
//                 backgroundColor: Colors.tealAccent.shade700,
//                 shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(4),
//                 ),
//               ),
//               onPressed: () async {
//                 Get.back();
//                 bool isWithinRange = await isWithinRemoteRange();
//                 if (isWithinRange) {
//                   currentPosition.value = _remoteLocation;
//                   punchInType.value = 'Remote';
//                   await _saveState();
//                   await showPunchInDialog(isRemote: true);
//                 } else {
//                   Get.dialog(
//                     AlertDialog(
//                       backgroundColor: Colors.white,
//                       shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(6),
//                       ),
//                       title: const Text('Location Error'),
//                       content: const Text('You are too far from the remote location (must be within 1km).'),
//                       actions: [
//                         TextButton(
//                           onPressed: () => Get.back(),
//                           child: const Text('OK'),
//                         ),
//                       ],
//                     ),
//                   );
//                 }
//               },
//               child: const Text(
//                 'Remote',
//                 style: TextStyle(color: Colors.black),
//               ),
//             ),
//           ),
//           SizedBox(
//             width: 120,
//             child: ElevatedButton(
//               style: ElevatedButton.styleFrom(
//                 backgroundColor: Colors.grey.shade200,
//                 shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(4),
//                 ),
//               ),
//               onPressed: () async {
//                 Get.back();
//                 if (_lastKnownPosition == null) {
//                   Get.dialog(
//                     const AlertDialog(
//                       content: Column(
//                         mainAxisSize: MainAxisSize.min,
//                         children: [
//                           CircularProgressIndicator(),
//                           SizedBox(height: 16),
//                           Text('Fetching location...'),
//                         ],
//                       ),
//                     ),
//                     barrierDismissible: false,
//                   );
//                   await determinePosition(useRemote: false);
//                   Get.back(); // Close loading dialog
//                 } else {
//                   currentPosition.value = _lastKnownPosition!;
//                   punchInType.value = isPunchedIn.value ? 'Offline' : '';
//                   await _saveState();
//                 }
//                 await showPunchInDialog(isRemote: false);
//               },
//               child: const Text(
//                 'Offline',
//                 style: TextStyle(color: Colors.black),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
//
//   // Punch-in dialog
//   Future<void> showPunchInDialog({required bool isRemote}) async {
//     final now = DateTime.now();
//     final punchTime = DateFormat('hh:mm a').format(now);
//     await Get.dialog(
//       AlertDialog(
//         backgroundColor: Colors.white,
//         shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.circular(6),
//         ),
//         content: Column(
//           mainAxisSize: MainAxisSize.min,
//           children: [
//             Container(
//               padding: const EdgeInsets.all(16),
//               decoration: BoxDecoration(
//                 shape: BoxShape.circle,
//                 color: Colors.tealAccent.shade700,
//               ),
//               child: const Icon(
//                 Icons.check,
//                 color: Colors.white,
//                 size: 50,
//               ),
//             ),
//             const SizedBox(height: 16),
//             const Text(
//               "Benson Saju",
//               style: TextStyle(
//                 fontSize: 18,
//                 fontWeight: FontWeight.w600,
//               ),
//             ),
//             const SizedBox(height: 8),
//             Text(
//               "Punching in at\n$punchTime\n${isRemote ? 'Tinos Software' : 'Offline'}",
//               textAlign: TextAlign.center,
//               style: const TextStyle(
//                 fontSize: 22,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//           ],
//         ),
//         actionsAlignment: MainAxisAlignment.spaceEvenly,
//         actions: [
//           SizedBox(
//             width: 120,
//             child: ElevatedButton(
//               style: ElevatedButton.styleFrom(
//                 backgroundColor: Colors.tealAccent.shade700,
//                 shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(4),
//                 ),
//               ),
//               onPressed: () {
//                 Get.back();
//                 isPunchedIn.value = true;
//                 punchInType.value = isRemote ? 'Remote' : 'Offline';
//                 debugPrint('Punched in at: ${currentPosition.value.latitude}, ${currentPosition.value.longitude} (${punchInType.value})');
//                 _saveState();
//                 _updateMapCamera();
//               },
//               child: const Text(
//                 "Confirm",
//                 style: TextStyle(color: Colors.black),
//               ),
//             ),
//           ),
//           const SizedBox(width: 5),
//           SizedBox(
//             width: 120,
//             child: ElevatedButton(
//               style: ElevatedButton.styleFrom(
//                 backgroundColor: Colors.grey.shade200,
//                 shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(4),
//                 ),
//               ),
//               onPressed: () => Get.back(),
//               child: const Text(
//                 "Cancel",
//                 style: TextStyle(color: Colors.black),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
//
//   // Break dialog
//   Future<void> showBreakDialog() async {
//     final now = DateTime.now();
//     final punchTime = DateFormat('hh:mm a').format(now);
//     await Get.dialog(
//       AlertDialog(
//         backgroundColor: Colors.white,
//         shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.circular(6),
//         ),
//         content: Column(
//           mainAxisSize: MainAxisSize.min,
//           children: [
//             Container(
//               padding: const EdgeInsets.all(16),
//               decoration: BoxDecoration(
//                 shape: BoxShape.circle,
//                 color: Colors.tealAccent.shade700,
//               ),
//               child: const Icon(
//                 Icons.check,
//                 color: Colors.white,
//                 size: 50,
//               ),
//             ),
//             const SizedBox(height: 16),
//             const Text(
//               "Benson Saju",
//               style: TextStyle(
//                 fontSize: 18,
//                 fontWeight: FontWeight.w600,
//               ),
//             ),
//             const SizedBox(height: 8),
//             Text(
//               "${onBreak.value ? 'Ending break' : 'Taking break'} at\n$punchTime",
//               textAlign: TextAlign.center,
//               style: const TextStyle(
//                 fontSize: 22,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//           ],
//         ),
//         actionsAlignment: MainAxisAlignment.spaceEvenly,
//         actions: [
//           SizedBox(
//             width: 120,
//             child: ElevatedButton(
//               style: ElevatedButton.styleFrom(
//                 backgroundColor: Colors.tealAccent.shade700,
//                 shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(4),
//                 ),
//               ),
//               onPressed: () {
//                 Get.back();
//                 onBreak.value = !onBreak.value;
//                 _saveState();
//               },
//               child: const Text(
//                 "Confirm",
//                 style: TextStyle(color: Colors.black),
//               ),
//             ),
//           ),
//           const SizedBox(width: 5),
//           SizedBox(
//             width: 120,
//             child: ElevatedButton(
//               style: ElevatedButton.styleFrom(
//                 backgroundColor: Colors.grey.shade200,
//                 shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(4),
//                 ),
//               ),
//               onPressed: () => Get.back(),
//               child: const Text(
//                 "Cancel",
//                 style: TextStyle(color: Colors.black),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
//
//   // Punch-out dialog
//   Future<void> showPunchOutDialog() async {
//     final now = DateTime.now();
//     final punchTime = DateFormat('hh:mm a').format(now);
//     await Get.dialog(
//       AlertDialog(
//         backgroundColor: Colors.white,
//         shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.circular(6),
//         ),
//         content: Column(
//           mainAxisSize: MainAxisSize.min,
//           children: [
//             Container(
//               padding: const EdgeInsets.all(16),
//               decoration: BoxDecoration(
//                 shape: BoxShape.circle,
//                 color: Colors.tealAccent.shade700,
//               ),
//               child: const Icon(
//                 Icons.check,
//                 color: Colors.white,
//                 size: 50,
//               ),
//             ),
//             const SizedBox(height: 16),
//             const Text(
//               "Benson Saju",
//               style: TextStyle(
//                 fontSize: 18,
//                 fontWeight: FontWeight.w600,
//               ),
//             ),
//             const SizedBox(height: 8),
//             Text(
//               "Punching out at\n$punchTime",
//               textAlign: TextAlign.center,
//               style: const TextStyle(
//                 fontSize: 22,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//           ],
//         ),
//         actionsAlignment: MainAxisAlignment.spaceEvenly,
//         actions: [
//           SizedBox(
//             width: 120,
//             child: ElevatedButton(
//               style: ElevatedButton.styleFrom(
//                 backgroundColor: Colors.tealAccent.shade700,
//                 shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(4),
//                 ),
//               ),
//               onPressed: () {
//                 Get.back();
//                 isPunchedIn.value = false;
//                 onBreak.value = false;
//                 punchInType.value = '';
//                 _saveState();
//               },
//               child: const Text(
//                 "Confirm",
//                 style: TextStyle(color: Colors.black),
//               ),
//             ),
//           ),
//           const SizedBox(width: 5),
//           SizedBox(
//             width: 120,
//             child: ElevatedButton(
//               style: ElevatedButton.styleFrom(
//                 backgroundColor: Colors.grey.shade200,
//                 shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(4),
//                 ),
//               ),
//               onPressed: () => Get.back(),
//               child: const Text(
//                 "Cancel",
//                 style: TextStyle(color: Colors.black),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
//
//   // Get markers
//   Set<Marker> getMarkers() {
//     return {
//       Marker(
//         markerId: const MarkerId('punch_in_location'),
//         position: currentPosition.value,
//         infoWindow: InfoWindow(
//           title: onBreak.value
//               ? 'On Break'
//               : isPunchedIn.value
//               ? '${punchInType.value} Punch-In'
//               : 'Current Location',
//           snippet: '${currentPosition.value.latitude}, ${currentPosition.value.longitude}',
//         ),
//         icon: BitmapDescriptor.defaultMarkerWithHue(
//           onBreak.value
//               ? BitmapDescriptor.hueYellow
//               : isPunchedIn.value && punchInType.value == 'Remote'
//               ? BitmapDescriptor.hueBlue
//               : BitmapDescriptor.hueRed,
//         ),
//       ),
//     };
//   }
// }