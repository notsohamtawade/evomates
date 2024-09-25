

// import 'package:flutter/material.dart';

// void main() => runApp(MyApp());

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: MapScreen(),
//     );
//   }
// }

// class MapScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Stack(
//         children: [
//           // Static map in the background (replace this with any image you want to use as a map)
//           Container(
//             decoration: BoxDecoration(
//               image: DecorationImage(
//                 image: AssetImage('assets/images/static_map.png'), // Add your static map image here
//                 fit: BoxFit.cover,
//               ),
//             ),
//           ),
//           // Search bar at the top
//           Positioned(
//             top: 40,
//             left: 15,
//             right: 15,
//             child: Container(
//               height: 50,
//               padding: EdgeInsets.symmetric(horizontal: 15),
//               decoration: BoxDecoration(
//                 color: Colors.white,
//                 borderRadius: BorderRadius.circular(8),
//                 boxShadow: [
//                   BoxShadow(
//                     color: Colors.black12,
//                     blurRadius: 6,
//                     offset: Offset(0, 2),
//                   ),
//                 ],
//               ),
//               child: Row(
//                 children: [
//                   Icon(Icons.search, color: Colors.grey),
//                   SizedBox(width: 10),
//                   Expanded(
//                     child: TextField(
//                       decoration: InputDecoration(
//                         hintText: 'Search here...',
//                         border: InputBorder.none,
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//           // Bottom Navigation Bar
//           Positioned(
//             bottom: 0,
//             left: 0,
//             right: 0,
//             child: Container(
//               color: Colors.white,
//               height: 60,
//               padding: EdgeInsets.symmetric(horizontal: 15),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   IconButton(
//                     onPressed: () {
//                       // Define action for switch button
//                     },
//                     icon: Icon(Icons.switch_left),
//                     color: Colors.blue,
//                   ),
//                   Row(
//                     children: [
//                       FloatingActionButton(
//                         onPressed: () {
//                           // Define action for the first button
//                         },
//                         child: Icon(Icons.directions),
//                         mini: true,
//                       ),
//                       SizedBox(width: 10),
//                       FloatingActionButton(
//                         onPressed: () {
//                           // Define action for the second button
//                         },
//                         child: Icon(Icons.near_me),
//                         mini: true,
//                       ),
//                       SizedBox(width: 10),
//                       FloatingActionButton(
//                         onPressed: () {
//                           // Define action for the third button
//                         },
//                         child: Icon(Icons.map),
//                         mini: true,
//                       ),
//                     ],
//                   ),
//                   IconButton(
//                     onPressed: () {
//                       // Define action for profile button
//                     },
//                     icon: Icon(Icons.person),
//                     color: Colors.blue,
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

import 'package:evofinal/profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart'; // For latitude/longitude coordinates
import 'station_owner_home.dart';
//import 'profile.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MapScreen(),
    );
  }
}

class MapScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // OpenStreetMap in the background
          FlutterMap(
            options: MapOptions(
              center: LatLng(51.509865, -0.118092), // Example coordinates for London
              zoom: 13.0,
            ),
            children: [
              TileLayer(
                urlTemplate: "https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png",
                subdomains: ['a', 'b', 'c'],
                // attribution: (_) {
                //   return Text("© OpenStreetMap contributors");
                // },
            //     attribution: AttributionWidget.defaultWidget(
            //   source: '© OpenStreetMap contributors',
            //   onSourceTapped: null,
            // ),
              ),
            ],
          ),
      //     FlutterMap(
      //   options: MapOptions(
      //     center: LatLng(51.509865, -0.118092), // Example coordinates for London
      //     zoom: 13.0,
      //   ),
      //   children: [
      //     TileLayer(
      //       urlTemplate: "https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png",
      //       subdomains: ['a', 'b', 'c'],
      //        attributionBuilder: (_) {
      //         return Text("© OpenStreetMap contributors");
      //       },
      //     ),
      //   ],
      // ),
          // Search bar at the top
          Positioned(
            top: 40,
            left: 15,
            right: 15,
            child: Container(
              height: 50,
              padding: EdgeInsets.symmetric(horizontal: 15),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 6,
                    offset: Offset(0, 2),
                  ),
                ],
              ),
              child: Row(
                children: [
                  Icon(Icons.search, color: Colors.grey),
                  SizedBox(width: 10),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Search here...',
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          // Bottom Navigation Bar
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              color: Colors.white,
              height: 60,
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {
                      // Define action for switch button
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => EVStationOwnerDashboard(), 
                        ),
                      );
                    },
                    icon: Icon(Icons.switch_left),
                    color: Colors.blue,
                  ),
                  Row(
                    children: [
                      FloatingActionButton(
                        onPressed: () {
                          // Define action for the first button
                          
                        },
                        child: Icon(Icons.directions),
                        mini: true,
                      ),
                      SizedBox(width: 10),
                      FloatingActionButton(
                        onPressed: () {
                          // Define action for the second button
                        },
                        child: Icon(Icons.near_me),
                        mini: true,
                      ),
                      SizedBox(width: 10),
                      FloatingActionButton(
                        onPressed: () {
                          // Define action for the third button
                        },
                        child: Icon(Icons.map),
                        mini: true,
                      ),
                    ],
                  ),
                  IconButton(
                    onPressed: () {
                      // Define action for profile button
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ProfilePage(), 
                        ),
                      );
                    },
                    icon: Icon(Icons.person),
                    color: Colors.blue,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
// import 'package:flutter/material.dart';
// import 'package:flutter_map/flutter_map.dart';
// import 'package:latlong2/latlong.dart'; // For latitude/longitude coordinates
// //import 'package:geolocator/geolocator.dart'; // For location services

// void main() => runApp(MyApp());

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: MapScreen(),
//     );
//   }
// }

// class MapScreen extends StatefulWidget {
//   @override
//   _MapScreenState createState() => _MapScreenState();
// }

// class _MapScreenState extends State<MapScreen> {
//   LatLng? _currentLocation;

//   @override
//   void initState() {
//     super.initState();
//     _getCurrentLocation();
//   }

//   Future<void> _getCurrentLocation() async {
//     bool serviceEnabled;
//     LocationPermission permission;

//     // Check if location services are enabled
//     serviceEnabled = await Geolocator.isLocationServiceEnabled();
//     if (!serviceEnabled) {
//       // Location services are not enabled, handle accordingly
//       return Future.error('Location services are disabled.');
//     }

//     permission = await Geolocator.checkPermission();
//     if (permission == LocationPermission.denied) {
//       permission = await Geolocator.requestPermission();
//       if (permission != LocationPermission.whileInUse && permission != LocationPermission.always) {
//         // Permissions are denied, handle accordingly
//         return Future.error('Location permissions are denied.');
//       }
//     }

//     // Get the current position
//     Position position = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
//     setState(() {
//       _currentLocation = LatLng(position.latitude, position.longitude);
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Stack(
//         children: [
//           // OpenStreetMap in the background
//           FlutterMap(
//             options: MapOptions(
//               center: _currentLocation ?? LatLng(51.509865, -0.118092), // Fallback to London if location not available
//               zoom: 13.0,
//             ),
//             children: [
//               TileLayer(
//                 urlTemplate: "https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png",
//                 subdomains: ['a', 'b', 'c'],
//                 // attributionBuilder: (_) {
//                 //   return Text("© OpenStreetMap contributors");
//                 // },
//               ),
//             ],
//           ),
//           // Search bar at the top
//           Positioned(
//             top: 40,
//             left: 15,
//             right: 15,
//             child: Container(
//               height: 50,
//               padding: EdgeInsets.symmetric(horizontal: 15),
//               decoration: BoxDecoration(
//                 color: Colors.white,
//                 borderRadius: BorderRadius.circular(8),
//                 boxShadow: [
//                   BoxShadow(
//                     color: Colors.black12,
//                     blurRadius: 6,
//                     offset: Offset(0, 2),
//                   ),
//                 ],
//               ),
//               child: Row(
//                 children: [
//                   Icon(Icons.search, color: Colors.grey),
//                   SizedBox(width: 10),
//                   Expanded(
//                     child: TextField(
//                       decoration: InputDecoration(
//                         hintText: 'Search here...',
//                         border: InputBorder.none,
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//           // Bottom Navigation Bar
//           Positioned(
//             bottom: 0,
//             left: 0,
//             right: 0,
//             child: Container(
//               color: Colors.white,
//               height: 60,
//               padding: EdgeInsets.symmetric(horizontal: 15),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   IconButton(
//                     onPressed: () {
//                       // Define action for switch button
//                     },
//                     icon: Icon(Icons.switch_left),
//                     color: Colors.blue,
//                   ),
//                   Row(
//                     children: [
//                       FloatingActionButton(
//                         onPressed: () {
//                           // Define action for the first button
//                         },
//                         child: Icon(Icons.directions),
//                         mini: true,
//                       ),
//                       SizedBox(width: 10),
//                       FloatingActionButton(
//                         onPressed: () {
//                           // Define action for the second button
//                         },
//                         child: Icon(Icons.near_me),
//                         mini: true,
//                       ),
//                       SizedBox(width: 10),
//                       FloatingActionButton(
//                         onPressed: () {
//                           // Define action for the third button
//                         },
//                         child: Icon(Icons.map),
//                         mini: true,
//                       ),
//                     ],
//                   ),
//                   IconButton(
//                     onPressed: () {
//                       // Define action for profile button
//                     },
//                     icon: Icon(Icons.person),
//                     color: Colors.blue,
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
