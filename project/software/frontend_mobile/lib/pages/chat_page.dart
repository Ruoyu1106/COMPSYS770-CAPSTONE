import 'package:flutter/material.dart';
import 'package:frontend_mobile/pages/home_page.dart';
import 'package:frontend_mobile/pages/booking_page.dart';
import 'package:frontend_mobile/pages/profile_page.dart';
import '/common_widgets/navigation_bar.dart';

class ChatPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chat'),
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: Text('Welcome to the Chat Page!'),
      ),
      bottomNavigationBar: CustomBottomNavigationBar(
        currentIndex: 2, // Index 2 for Chat
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
