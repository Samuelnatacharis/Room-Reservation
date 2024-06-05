import 'package:binusscape2/page/user_room_schedule.dart';
import 'package:binusscape2/page/user_room_reservation.dart';
import 'package:binusscape2/page/user_home.dart';
import 'package:binusscape2/page/user_my_reservation.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, required List<Column> children});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
//! __________________________________________________________________Navigate around the bottom navbar

  int _selectedIndex = 0;
  void _navigateBottomNavBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

//! __________________________________________________________________Different pages to navigate to
  final List<Widget> _children = [
    const UserHome(),
    const UserRoomSchedule(),
    const UserRoomReservation(),
    const UserMyReservation(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
//! __________________________________________________________________widget _children & variable _selectedIndex dipanggil disini
      // body: _children[_selectedIndex],
      body: IndexedStack(
        index: _selectedIndex,
        children: _children,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _navigateBottomNavBar,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_month),
            label: 'Room Schedule',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today),
            label: '   Room &\nReservation',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'My Reservation',
          ),
        ],
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey[700],
        selectedFontSize: 11,
        unselectedFontSize: 10,
      ),
    );
  }
}
