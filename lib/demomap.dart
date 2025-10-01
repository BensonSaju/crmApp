// // import 'package:flutter/material.dart';
// // import 'package:google_maps_flutter/google_maps_flutter.dart';
// // import 'package:geolocator/geolocator.dart';
// //
// // class MapView extends StatefulWidget {
// //   const MapView({Key? key}) : super(key: key);
// //
// //   @override
// //   State<MapView> createState() => _MapViewState();
// // }
// //
// // class _MapViewState extends State<MapView> {
// //   LatLng currentPosition = const LatLng(10.015, 76.341);
// //   Set<Marker> markers = {};
// //   GoogleMapController? mapController;
// //   bool isLoading = true;
// //
// //   // Sample coffee shops data
// //   final List<Map<String, dynamic>> coffeeShops = [
// //     {
// //       'name': "Cafe Aroma",
// //       'lat': 10.015,
// //       'lng': 76.341,
// //       'address': "Near XYZ",
// //     },
// //     {
// //       'name': "Bean Town",
// //       'lat': 10.018,
// //       'lng': 76.345,
// //       'address': "Near ABC",
// //     },
// //     {
// //       'name': "Brew House",
// //       'lat': 10.012,
// //       'lng': 76.338,
// //       'address': "Main street",
// //     },
// //   ];
// //
// //   @override
// //   void initState() {
// //     super.initState();
// //     _determinePosition();
// //   }
// //
// //   Future<void> _determinePosition() async {
// //     try {
// //       bool serviceEnabled = await Geolocator.isLocationServiceEnabled();
// //       if (!serviceEnabled) {
// //         _showSnackBar('Please enable location services');
// //         setState(() {
// //           isLoading = false;
// //         });
// //         return;
// //       }
// //
// //       LocationPermission permission = await Geolocator.checkPermission();
// //       if (permission == LocationPermission.denied) {
// //         permission = await Geolocator.requestPermission();
// //         if (permission == LocationPermission.denied) {
// //           _showSnackBar('Location permission is needed');
// //           setState(() {
// //             isLoading = false;
// //           });
// //           return;
// //         }
// //       }
// //
// //       if (permission == LocationPermission.deniedForever) {
// //         _showSnackBar('Location permission is permanently denied');
// //         setState(() {
// //           isLoading = false;
// //         });
// //         return;
// //       }
// //
// //       Position position = await Geolocator.getCurrentPosition(
// //         desiredAccuracy: LocationAccuracy.best,
// //       );
// //
// //       setState(() {
// //         currentPosition = LatLng(position.latitude, position.longitude);
// //         isLoading = false;
// //       });
// //
// //       // Add markers after getting position
// //       _addMarkers();
// //
// //       // Move camera to current position
// //       if (mapController != null) {
// //         mapController!.animateCamera(
// //           CameraUpdate.newLatLngZoom(currentPosition, 15),
// //         );
// //       }
// //
// //     } catch (e) {
// //       print('Error getting location: $e');
// //       setState(() {
// //         isLoading = false;
// //       });
// //     }
// //   }
// //
// //   void _addMarkers() {
// //     setState(() {
// //       markers.clear();
// //
// //       // Add current location marker
// //       markers.add(
// //         Marker(
// //           markerId: const MarkerId('current_location'),
// //           position: currentPosition,
// //           infoWindow: const InfoWindow(title: 'Your Location'),
// //           icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueBlue),
// //         ),
// //       );
// //
// //       // Add coffee shop markers
// //       for (var shop in coffeeShops) {
// //         markers.add(
// //           Marker(
// //             markerId: MarkerId(shop['name']),
// //             position: LatLng(shop['lat'], shop['lng']),
// //             infoWindow: InfoWindow(title: shop['name']),
// //             icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueRed),
// //             onTap: () => _showShopDetails(shop),
// //           ),
// //         );
// //       }
// //     });
// //   }
// //
// //   void _showShopDetails(Map<String, dynamic> shop) {
// //     showDialog(
// //       context: context,
// //       builder: (context) => Dialog(
// //         shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
// //         child: Padding(
// //           padding: const EdgeInsets.all(16),
// //           child: Column(
// //             mainAxisSize: MainAxisSize.min,
// //             children: [
// //               Text(
// //                 shop['name'],
// //                 style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
// //               ),
// //               const SizedBox(height: 8),
// //               Text(shop['address']),
// //               const SizedBox(height: 16),
// //               Row(
// //                 mainAxisAlignment: MainAxisAlignment.spaceAround,
// //                 children: [
// //                   ElevatedButton(
// //                     onPressed: () => Navigator.pop(context),
// //                     child: const Text('Close'),
// //                   ),
// //                   ElevatedButton(
// //                     onPressed: () {
// //                       // Add to favorites functionality
// //                       _showSnackBar('Added to favorites');
// //                       Navigator.pop(context);
// //                     },
// //                     style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
// //                     child: const Text('Add to Favorites', style: TextStyle(color: Colors.white)),
// //                   ),
// //                 ],
// //               ),
// //             ],
// //           ),
// //         ),
// //       ),
// //     );
// //   }
// //
// //   void _showSnackBar(String message) {
// //     ScaffoldMessenger.of(context).showSnackBar(
// //       SnackBar(
// //         content: Text(message),
// //         backgroundColor: Colors.green,
// //       ),
// //     );
// //   }
// //
// //   Future<void> _goToCurrentLocation() async {
// //     await _determinePosition();
// //     if (mapController != null) {
// //       mapController!.animateCamera(
// //         CameraUpdate.newLatLngZoom(currentPosition, 15),
// //       );
// //     }
// //   }
// //
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         title: const Text("Nearest Coffee Shop"),
// //         backgroundColor: Colors.brown,
// //         actions: [
// //           IconButton(
// //             icon: const Icon(Icons.search),
// //             onPressed: () {
// //               // Navigate to search page
// //             },
// //           ),
// //           IconButton(
// //             icon: const Icon(Icons.favorite),
// //             onPressed: () {
// //               // Navigate to favorites page
// //             },
// //           ),
// //         ],
// //       ),
// //       body: isLoading
// //           ? const Center(
// //         child: Column(
// //           mainAxisAlignment: MainAxisAlignment.center,
// //           children: [
// //             CircularProgressIndicator(),
// //             SizedBox(height: 16),
// //             Text("Getting your location..."),
// //           ],
// //         ),
// //       )
// //           : Stack(
// //         children: [
// //           GoogleMap(
// //             onMapCreated: (controller) {
// //               mapController = controller;
// //               _addMarkers();
// //             },
// //             initialCameraPosition: CameraPosition(
// //               target: currentPosition,
// //               zoom: 15,
// //             ),
// //             markers: markers,
// //             myLocationEnabled: true,
// //             myLocationButtonEnabled: false,
// //             compassEnabled: true,
// //             zoomControlsEnabled: false,
// //           ),
// //           Positioned(
// //             top: 20,
// //             right: 20,
// //             child: FloatingActionButton(
// //               backgroundColor: Colors.white,
// //               child: const Icon(Icons.my_location, color: Colors.black),
// //               onPressed: _goToCurrentLocation,
// //             ),
// //           ),
// //         ],
// //       ),
// //     );
// //   }
// // }
// import 'package:flutter/material.dart';
// import 'package:google_maps_flutter/google_maps_flutter.dart';
// import 'package:geolocator/geolocator.dart';
//
// class MapViewpart extends StatefulWidget {
//   const MapViewpart({super.key});
//
//   @override
//   State<MapViewpart> createState() => _MapViewpartState();
// }
//
// class _MapViewpartState extends State<MapViewpart> {
//   GoogleMapController? _mapController;
//   LatLng _currentPosition = const LatLng(10.015, 76.341); // Default fallback position
//
//   @override
//   void initState() {
//     super.initState();
//     _determinePosition();
//   }
//
//   Future<void> _determinePosition() async {
//     try {
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
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Map'),
//       ),
//       body:
//       Stack(
//         children: [
//           GoogleMap(
//             onMapCreated: _onMapCreated,
//             initialCameraPosition: CameraPosition(
//               target: _currentPosition,
//               zoom: 15,
//             ),
//             myLocationEnabled: true,
//             myLocationButtonEnabled: false,
//           ),
//           Positioned(
//             top: 20,
//             right: 20,
//             child: FloatingActionButton(
//               backgroundColor: Colors.white,
//               onPressed: _determinePosition,
//               child: const Icon(Icons.my_location, color: Colors.black87),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }