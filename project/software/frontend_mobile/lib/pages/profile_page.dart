import 'package:flutter/material.dart';
import 'package:frontend_mobile/pages/home_page.dart';
import 'package:frontend_mobile/pages/booking_page.dart';
import 'package:frontend_mobile/pages/chat_page.dart';
import '/common_widgets/navigation_bar.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: Text('Welcome to the Profile Page!'),
      ),
      bottomNavigationBar: CustomBottomNavigationBar(
        currentIndex: 3, // Index 3 for Profile
        onTap: (index) {
          switch (index) {
            case 0:
              Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HomePage()),
                    );
              break;
            case 1:
              Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => BookingPage()),
                    );
              break;
            case 2:
              Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ChatPage()),
                    );
              break;
            case 3:
              break;
          }
        },
      ),
    );
  }
}
