import 'package:flutter/material.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  final int currentIndex;
  final ValueChanged<int> onTap;

  CustomBottomNavigationBar({
    required this.currentIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed, // Added to evenly space icons
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.calendar_month),
          label: 'Booking',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.chat),
          label: 'Chat',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: 'Profile',
        ),
      ],
      currentIndex: currentIndex,
      onTap: onTap,
      selectedIconTheme: IconThemeData(color: Color.fromRGBO(0, 0, 120, 1)), // Navy blue color
      unselectedIconTheme: IconThemeData(color: Color.fromRGBO(100, 100, 120, 1)), // Navy blue color
      selectedItemColor: Color.fromRGBO(0, 0, 120, 1.0), // Custom color for selected item background
      unselectedItemColor: Color.fromRGBO(100, 100, 120, 1), // Transparent color for unselected item background
      showUnselectedLabels: true,
      selectedLabelStyle: TextStyle(fontSize: 12.0), // Font size for selected label
      unselectedLabelStyle: TextStyle(fontSize: 12.0), // Font size for unselected label
    );
  }
}
