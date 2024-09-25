// import 'package:flutter/material.dart';
// import 'registration.dart';
// import 'station_owner_home.dart';
// import 'ev_map_screen.dart';
// class LoginPage extends StatefulWidget {
//   const LoginPage({super.key});

//   @override
//   _LoginPageState createState() => _LoginPageState();
// }

// class _LoginPageState extends State<LoginPage> {
//   final _formKey = GlobalKey<FormState>();
//   String? _selectedRole;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text(
//           'Login!',
//           style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
//         ),
//         backgroundColor: Colors.blueAccent,
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Form(
//           key: _formKey,
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: <Widget>[
//               TextFormField(
//                 decoration: const InputDecoration(
//                   labelText: 'Enter email',
//                   prefixIcon: Icon(Icons.email_outlined),
//                 ),
//                 validator: (value) {
//                   if (value == null || value.isEmpty) {
//                     return 'Please enter your email';
//                   }
//                   return null;
//                 },
//               ),
//               const SizedBox(height: 10),
//               TextFormField(
//                 decoration: const InputDecoration(
//                   labelText: 'Enter password',
//                   prefixIcon: Icon(Icons.lock_outline),
//                 ),
//                 obscureText: true,
//                 validator: (value) {
//                   if (value == null || value.isEmpty) {
//                     return 'Please enter your password';
//                   }
//                   return null;
//                 },
//               ),
//               const SizedBox(height: 10),
//               DropdownButtonFormField<String>(
//                 decoration: const InputDecoration(
//                   labelText: 'Select Role',
//                   prefixIcon: Icon(Icons.work_outline),
//                 ),
//                 value: _selectedRole,
//                 items: <String>['Admin', 'Station Owner', 'EV Owner']
//                     .map<DropdownMenuItem<String>>((String value) {
//                   return DropdownMenuItem<String>(
//                     value: value,
//                     child: Text(value),
//                   );
//                 }).toList(),
//                 onChanged: (String? newValue) {
//                   setState(() {
//                     _selectedRole = newValue;
//                   });
//                 },
//                 validator: (value) {
//                   if (value == null || value.isEmpty) {
//                     return 'Please select a role';
//                   }
//                   return null;
//                 },
//               ),
//               const SizedBox(height: 20),
//               Center(
//                 child: ElevatedButton(
//                   child: const Text('Login'),
//                   onPressed: () {
//                     if (_formKey.currentState!.validate()) {
//                       // Navigate to the appropriate homepage based on role
//                       if (_selectedRole == 'Station Owner') {
//                         Navigator.pushReplacement(
//                             context,
//                             MaterialPageRoute(
//                                 builder: (context) =>
//                                     EVStationOwnerDashboard()));
//                       } else if (_selectedRole == 'EV Owner') {
//                         Navigator.pushReplacementNamed(context, '/evOwnerHome');
//                       }
//                     }
//                   },
//                 ),
//               ),
//               const SizedBox(height: 10),
//               Center(
//                 child: TextButton(
//                   child: const Text(
//                     'Don\'t have an account? Register here!',
//                     style: TextStyle(
//                       color: Colors.blueAccent,
//                       fontWeight: FontWeight.bold,
//                       fontSize: 16,
//                     ),
//                   ),
//                   onPressed: () {
//                     Navigator.push(
//                       context,
//                       MaterialPageRoute(
//                           builder: (context) => const RegistrationPage()),
//                     );
//                   },
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
// import 'package:flutter/material.dart';
// import 'registration.dart';
// import 'station_owner_home.dart'; // Import this if needed for the Station Owner
// import 'ev_map_screen.dart'; // Make sure to import your MapScreen

// class LoginPage extends StatefulWidget {
//   const LoginPage({super.key});

//   @override
//   _LoginPageState createState() => _LoginPageState();
// }

// class _LoginPageState extends State<LoginPage> {
//   final _formKey = GlobalKey<FormState>();
//   String? _selectedRole;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text(
//           'Login!',
//           style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
//         ),
//         backgroundColor: Colors.blueAccent,
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Form(
//           key: _formKey,
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: <Widget>[
//               TextFormField(
//                 decoration: const InputDecoration(
//                   labelText: 'Enter email',
//                   prefixIcon: Icon(Icons.email_outlined),
//                 ),
//                 validator: (value) {
//                   if (value == null || value.isEmpty) {
//                     return 'Please enter your email';
//                   }
//                   return null;
//                 },
//               ),
//               const SizedBox(height: 10),
//               TextFormField(
//                 decoration: const InputDecoration(
//                   labelText: 'Enter password',
//                   prefixIcon: Icon(Icons.lock_outline),
//                 ),
//                 obscureText: true,
//                 validator: (value) {
//                   if (value == null || value.isEmpty) {
//                     return 'Please enter your password';
//                   }
//                   return null;
//                 },
//               ),
//               const SizedBox(height: 10),
//               DropdownButtonFormField<String>(
//                 decoration: const InputDecoration(
//                   labelText: 'Select Role',
//                   prefixIcon: Icon(Icons.work_outline),
//                 ),
//                 value: _selectedRole,
//                 items: <String>['Admin', 'Station Owner', 'EV Owner']
//                     .map<DropdownMenuItem<String>>((String value) {
//                   return DropdownMenuItem<String>(
//                     value: value,
//                     child: Text(value),
//                   );
//                 }).toList(),
//                 onChanged: (String? newValue) {
//                   setState(() {
//                     _selectedRole = newValue;
//                   });
//                 },
//                 validator: (value) {
//                   if (value == null || value.isEmpty) {
//                     return 'Please select a role';
//                   }
//                   return null;
//                 },
//               ),
//               const SizedBox(height: 20),
//               Center(
//                 child: ElevatedButton(
//                   child: const Text('Login'),
//                   onPressed: () {
//                     if (_formKey.currentState!.validate()) {
//                       // Navigate to MapScreen after successful login
//                       Navigator.pushReplacement(
//                         context,
//                         MaterialPageRoute(
//                           builder: (context) => MapScreen(), // Replace this with your MapScreen widget
//                         ),
//                       );
//                     }
//                   },
//                 ),
//               ),
//               const SizedBox(height: 10),
//               Center(
//                 child: TextButton(
//                   child: const Text(
//                     'Don\'t have an account? Register here!',
//                     style: TextStyle(
//                       color: Colors.blueAccent,
//                       fontWeight: FontWeight.bold,
//                       fontSize: 16,
//                     ),
//                   ),
//                   onPressed: () {
//                     Navigator.push(
//                       context,
//                       MaterialPageRoute(
//                         builder: (context) => const RegistrationPage(),
//                       ),
//                     );
//                   },
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
// import 'package:flutter/material.dart';
// import 'registration.dart';
// import 'station_owner_home.dart'; // Import this if needed for the Station Owner
// import 'ev_map_screen.dart'; // Make sure to import your MapScreen

// class LoginPage extends StatefulWidget {
//   const LoginPage({super.key});

//   @override
//   _LoginPageState createState() => _LoginPageState();
// }

// class _LoginPageState extends State<LoginPage> {
//   final _formKey = GlobalKey<FormState>();
//   String? _selectedRole;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         decoration: BoxDecoration(
//           gradient: LinearGradient(
//             colors: [
//               Colors.blueAccent,
//               Colors.lightBlueAccent,
//             ],
//             begin: Alignment.topLeft,
//             end: Alignment.bottomRight,
//           ),
//         ),
//         child: Center(
//           child: SingleChildScrollView(
//             child: Card(
//               shape: RoundedRectangleBorder(
//                 borderRadius: BorderRadius.circular(16.0),
//               ),
//               color: Colors.white.withOpacity(0.9),
//               elevation: 8.0,
//               margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
//               child: Padding(
//                 padding: const EdgeInsets.all(16.0),
//                 child: Form(
//                   key: _formKey,
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.stretch,
//                     children: <Widget>[
//                       const Text(
//                         'Login',
//                         style: TextStyle(
//                           fontSize: 28,
//                           fontWeight: FontWeight.bold,
//                           color: Color.fromARGB(255, 234, 182, 11),
//                         ),
//                         textAlign: TextAlign.center,
//                       ),
//                       const SizedBox(height: 20),
//                       TextFormField(
//                         decoration: const InputDecoration(
//                           labelText: 'Enter email',
//                           prefixIcon: Icon(Icons.email_outlined),
//                           filled: true,
//                           fillColor: Colors.white,
//                           border: OutlineInputBorder(
//                             borderRadius: BorderRadius.all(Radius.circular(8)),
//                           ),
//                         ),
//                         validator: (value) {
//                           if (value == null || value.isEmpty) {
//                             return 'Please enter your email';
//                           }
//                           return null;
//                         },
//                       ),
//                       const SizedBox(height: 10),
//                       TextFormField(
//                         decoration: const InputDecoration(
//                           labelText: 'Enter password',
//                           prefixIcon: Icon(Icons.lock_outline),
//                           filled: true,
//                           fillColor: Colors.white,
//                           border: OutlineInputBorder(
//                             borderRadius: BorderRadius.all(Radius.circular(8)),
//                           ),
//                         ),
//                         obscureText: true,
//                         validator: (value) {
//                           if (value == null || value.isEmpty) {
//                             return 'Please enter your password';
//                           }
//                           return null;
//                         },
//                       ),
//                       const SizedBox(height: 10),
//                       DropdownButtonFormField<String>(
//                         decoration: const InputDecoration(
//                           labelText: 'Select Role',
//                           prefixIcon: Icon(Icons.work_outline),
//                           filled: true,
//                           fillColor: Colors.white,
//                           border: OutlineInputBorder(
//                             borderRadius: BorderRadius.all(Radius.circular(8)),
//                           ),
//                         ),
//                         value: _selectedRole,
//                         items: <String>['Admin', 'Station Owner', 'EV Owner']
//                             .map<DropdownMenuItem<String>>((String value) {
//                           return DropdownMenuItem<String>(
//                             value: value,
//                             child: Text(value),
//                           );
//                         }).toList(),
//                         onChanged: (String? newValue) {
//                           setState(() {
//                             _selectedRole = newValue;
//                           });
//                         },
//                         validator: (value) {
//                           if (value == null || value.isEmpty) {
//                             return 'Please select a role';
//                           }
//                           return null;
//                         },
//                       ),
//                       const SizedBox(height: 20),
//                       Center(
//                         child: ElevatedButton(
//                           style: ElevatedButton.styleFrom(
//                             padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
//                             shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(12),
//                             ),
//                             backgroundColor: const Color.fromARGB(255, 220, 190, 16),
//                           ),
//                           child: const Text(
//                             'Login',
//                             style: TextStyle(fontSize: 18),
//                           ),
//                           onPressed: () {
//                             if (_formKey.currentState!.validate()) {
//                               // Navigate to MapScreen after successful login
//                               Navigator.pushReplacement(
//                                 context,
//                                 MaterialPageRoute(
//                                   builder: (context) => MapScreen(), // Replace this with your MapScreen widget
//                                 ),
//                               );
//                             }
//                           },
//                         ),
//                       ),
//                       const SizedBox(height: 10),
//                       Center(
//                         child: TextButton(
//                           child: const Text(
//                             'Don\'t have an account? Register here!',
//                             style: TextStyle(
//                               color: Colors.blueAccent,
//                               fontWeight: FontWeight.bold,
//                               fontSize: 16,
//                             ),
//                           ),
//                           onPressed: () {
//                             Navigator.push(
//                               context,
//                               MaterialPageRoute(
//                                 builder: (context) => const RegistrationPage(),
//                               ),
//                             );
//                           },
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'registration.dart';
import 'station_owner_home.dart'; // Import this if needed for the Station Owner
import 'ev_map_screen.dart'; // Make sure to import your MapScreen

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  String? _selectedRole;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Full-screen background image
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/background_image.jpg'), // Add your image asset here
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Main form content with transparency
          Center(
            child: SingleChildScrollView(
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16.0),
                ),
                color: Colors.white.withOpacity(0.7), // Semi-transparent background
                elevation: 8.0,
                margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Form(
                    key: _formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        const Text(
                          'Login',
                          style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(height: 20),
                        TextFormField(
                          decoration: const InputDecoration(
                            labelText: 'Enter email',
                            prefixIcon: Icon(Icons.email_outlined, color: Colors.grey),
                            filled: true,
                            fillColor: Colors.white,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(8)),
                            ),
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter your email';
                            }
                            return null;
                          },
                        ),
                        const SizedBox(height: 10),
                        TextFormField(
                          decoration: const InputDecoration(
                            labelText: 'Enter password',
                            prefixIcon: Icon(Icons.lock_outline, color: Colors.grey),
                            filled: true,
                            fillColor: Colors.white,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(8)),
                            ),
                          ),
                          obscureText: true,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter your password';
                            }
                            return null;
                          },
                        ),
                        const SizedBox(height: 10),
                        DropdownButtonFormField<String>(
                          decoration: const InputDecoration(
                            labelText: 'Select Role',
                            prefixIcon: Icon(Icons.work_outline, color: Colors.grey),
                            filled: true,
                            fillColor: Colors.white,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(8)),
                            ),
                          ),
                          value: _selectedRole,
                          items: <String>['Admin', 'Station Owner', 'EV Owner']
                              .map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value, style: const TextStyle(color: Colors.grey)),
                            );
                          }).toList(),
                          onChanged: (String? newValue) {
                            setState(() {
                              _selectedRole = newValue;
                            });
                          },
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please select a role';
                            }
                            return null;
                          },
                        ),
                        const SizedBox(height: 20),
                        Center(
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),
                              backgroundColor: Colors.grey, // Grey button
                            ),
                            child: const Text(
                              'Login',
                              style: TextStyle(fontSize: 18, color: Colors.white),
                            ),
                            onPressed: () {
                              if (_formKey.currentState!.validate()) {
                                // Navigate to MapScreen after successful login
                                Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => MapScreen(), // Replace with your MapScreen widget
                                  ),
                                );
                              }
                            },
                          ),
                        ),
                        const SizedBox(height: 10),
                        Center(
                          child: TextButton(
                            child: const Text(
                              'Don\'t have an account? Register here!',
                              style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const RegistrationPage(),
                                ),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
