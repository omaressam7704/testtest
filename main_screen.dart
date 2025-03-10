import 'package:flutter/material.dart';
import 'package:islami/screens/quran_screen.dart';
import 'package:islami/screens/hadith_screen.dart';
import 'package:islami/screens/sebha_screen.dart';
import 'package:islami/screens/radio_screen.dart';
import 'package:islami/screens/time_screen.dart';
import 'package:islami/widgets/bottom_nav_bar.dart';

class MainScreen extends StatefulWidget {
  static const String route = "/main";

  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;

  final List<Widget> _screens = [
    const QuranScreen(), // Use the correct name
    const HadithScreen(),
    SebhaScreen(),
    RadioScreen(),
    TimeScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _selectedIndex,
        children: _screens,
      ),
      bottomNavigationBar: BottomNavBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
