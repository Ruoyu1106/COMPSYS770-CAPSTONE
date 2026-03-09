import 'package:flutter/material.dart';
import 'package:frontend_mobile/pages/booking_page.dart';
import 'package:frontend_mobile/pages/chat_page.dart';
import 'package:frontend_mobile/pages/profile_page.dart';
import '/common_widgets/navigation_bar.dart';


class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: Text('Welcome to the Plunket Home Page!'),
      ),
      bottomNavigationBar: CustomBottomNavigationBar(
        currentIndex: 0, // Index 0 for Home
        onTap: (index) {
          switch (index) {
            case 0:
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
              Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ProfilePage()),
                    );
              break;
          }
        },
      ),
    );
  }
}
