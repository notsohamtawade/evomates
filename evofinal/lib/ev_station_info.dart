import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:evofinal/station_owner_home.dart';

class EVStationInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('EV Station Info'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Image of EV station
            Image.asset('assets/images/evstation.jpg'),

            // First Textbox
            Container(
              margin: EdgeInsets.all(16.0),
              padding: EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(8.0),
              ),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Vijay CHS EVCS',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  SizedBox(height: 8),
                  Text('Available for:', style: TextStyle(fontSize: 16)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Column(
                        children: [
                          Icon(Icons.electric_scooter, size: 30),
                          Text('Scooters'),
                        ],
                      ),
                      SizedBox(width: 20),
                      Column(
                        children: [
                          Icon(Icons.directions_car, size: 30),
                          Text('Cars'),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 8),
                  Text('Rating:', style: TextStyle(fontSize: 16)),
                  Row(
                    children: [
                      for (int i = 0; i < 4; i++)
                        Icon(Icons.star, color: Colors.amber),
                      Icon(Icons.star_border),
                    ],
                  ),
                  SizedBox(height: 8),
                  Center(
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ContactDetailsPage()),
                        );
                      },
                      child: Text('Contact Details'),
                    ),
                  ),
                ],
              ),
            ),

            // Second Textbox for Charging Rates
            Container(
              margin: EdgeInsets.all(16.0),
              padding: EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(8.0),
              ),
              width: double.infinity,
              child: Text('Charging Rates: ₹100 per hour',
                  style: TextStyle(fontSize: 16)),
            ),

            // Third Textbox for Charging History
            Container(
              margin: EdgeInsets.all(16.0),
              padding: EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(8.0),
              ),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('History of Users Who Visited:',
                      style: TextStyle(fontSize: 16)),
                  SizedBox(height: 8),
                  Text('1. User A: ⭐⭐⭐⭐', style: TextStyle(fontSize: 14)),
                  Text('2. User B: ⭐⭐⭐⭐⭐', style: TextStyle(fontSize: 14)),
                  Text('3. User C: ⭐⭐⭐', style: TextStyle(fontSize: 14)),
                ],
              ),
            ),
          ],
        ),
      ),

      // Navigation Bar
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        items: [
          BottomNavigationBarItem(
            icon: Switch(
              value: false,
              onChanged: (value) {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (context) => EVStationOwnerDashboard()),
                );
              },
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search, color: Colors.white), // Route plan button
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.explore, color: Colors.white), // Explore button
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person, color: Colors.white), // Profile button
            label: '',
          ),
        ],
        currentIndex: 0,
        onTap: (index) {
          if (index == 1) {
            // Navigate to Route Plan Page
          } else if (index == 2) {
            // Navigate to Explore Page
          } else if (index == 3) {
            // Navigate to Profile Page
          }
        },
      ),
    );
  }
}

// Contact Details Page with Dummy Data
class ContactDetailsPage extends StatelessWidget {
  final String phoneNumber = '1234567890';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contact Details'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Contact Information',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            SizedBox(height: 16),
            Text('Name: Vijay EVCS', style: TextStyle(fontSize: 16)),
            SizedBox(height: 8),
            Text('Phone: $phoneNumber', style: TextStyle(fontSize: 16)),
            SizedBox(height: 16),
            Center(
              child: IconButton(
                icon: Icon(Icons.call, size: 40, color: Colors.green),
                onPressed: () => launch('tel:$phoneNumber'),
              ),
            ),
            SizedBox(height: 8),
            Center(child: Text('Call Now', style: TextStyle(fontSize: 16))),
          ],
        ),
      ),
    );
  }
}

// Placeholder for EV Station Owner Dashboard

