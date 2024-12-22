import 'package:coding_junior/screens/book.dart';
import 'package:coding_junior/screens/home.dart';
import 'package:coding_junior/screens/work.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class ButtomNavigation extends StatefulWidget {
  const ButtomNavigation({super.key});

  @override
  State<ButtomNavigation> createState() => _ButtomNavigationState();
}

class _ButtomNavigationState extends State<ButtomNavigation> {
  final items = const <Widget>[
    Icon(Icons.home),
    Icon(Icons.work_outline),
    Icon(Icons.book_outlined),
  ];
  
  final screens = const <Widget> [
    HomeScreen(),
    WorkScreen(),
    BookScreen(),
  ];
  int _selectedIndex = 1; // Default to the center tab

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[_selectedIndex],
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          iconTheme: IconThemeData(color: Colors.white, size: 30),
        ),
        child: CurvedNavigationBar(
          height: 70,
          backgroundColor: Colors.transparent,
          color: Colors.blue,
          items: items,
          index: _selectedIndex,
         onTap: (index) => setState(() => _selectedIndex = index),
        ),
      ),
    );
  }
}