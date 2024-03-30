import 'package:chaplean/presentation/pages/chat/chat_page.dart';
import 'package:chaplean/presentation/pages/home/home_page.dart';
import 'package:chaplean/presentation/pages/library/create_playlist_page.dart';
import 'package:chaplean/presentation/pages/notification/notification_page.dart';
import 'package:chaplean/presentation/pages/profile/profile_page.dart';
import 'package:flutter/material.dart';

import '../../widgets/custom_nav_bar.dart';

class NavigationScreens extends StatefulWidget {
  const NavigationScreens({super.key});

  @override
  State<NavigationScreens> createState() => _NavigationScreensState();
}

class _NavigationScreensState extends State<NavigationScreens> {
  int _selectedIndex = 0;

  final List screens = const [
    HomePage(),
    NotificationPage(),
    ProfilePage(),
    LibraryPage(),
    ChatPage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[_selectedIndex],
      bottomNavigationBar: BottomNavBar(
        selectedIndex: _selectedIndex,
        onIndexChanged: (index) {
          setState(() {
            _selectedIndex = index; // Update the selected index
          });
        },
      ),
    );
  }
}
