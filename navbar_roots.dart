import 'package:flutter/material.dart';
import 'package:medicalhealthapp/Home_screen.dart';
import 'package:medicalhealthapp/screens/Home_screen.dart';
import 'package:medicalhealthapp/screens/message_screen.dart';
import 'package:medicalhealthapp/screens/schedule_screen.dart';
import 'package:medicalhealthapp/screens/settings_screen.dart';

class NavBarroots extends StatelessWidget {
  @override
  State<NavBarroots> createState() => NavBarRootsState();
}

class _NavBarRootsState extends State<NavBarRoots> {

  int _selectedIndex = 0;

  final _screens = [
    HomeScreen(),
    // Message Screen
    messageScreen(),
    // Schedule Screen
    ScheduleScreen(),
    // Settings Screen
    SettingScreen(),
  ];
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.white70,
      body: _screens[_selectedIndex],
      bottomNavigationBar: Container(
        height: 90,
        child: BottomNavigationBar(
          backgroundColor: Colors.white,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.lightBlueAccent,
          unselectedItemColor: Colors.black26,
          unselectedLabelStyle: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
          currentIndex: _selectedIndex,
          onTap: (index){
            setState(() {
              _selectedIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
            label: "Home",
      ),
            BottomNavigationBarItem(
              icon: Icon(Icons.message_rounded),
            label: "Message",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.schedule_rounded),
              label: "Schedule",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings_applications),
              label: "Settings",
            ),
          ],
        ),
      ),
    );
  }
}