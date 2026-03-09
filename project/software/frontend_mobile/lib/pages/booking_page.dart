import 'package:flutter/material.dart';
import 'package:frontend_mobile/pages/home_page.dart';
import 'package:frontend_mobile/pages/chat_page.dart';
import 'package:frontend_mobile/pages/profile_page.dart';
import '/common_widgets/navigation_bar.dart';

class BookingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Booking'),
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: Text('Welcome to the Booking Page!'),
      ),
      bottomNavigationBar: CustomBottomNavigationBar(
        currentIndex: 1, // Index 1 for Booking
        onTap: (index) {
          switch (index) {
            case 0:
              Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HomePage()),
                    );
              break;
            case 1:
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
