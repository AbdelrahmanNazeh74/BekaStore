import 'package:beka_store/core/constants/colors.dart';
import 'package:flutter/material.dart';

import 'features/Home/ui/home_page.dart';
import 'features/Profile/ui/profile_screen.dart';
import 'features/Saved/ui/saved_screen.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 0;

  final List<Widget> _screens = [
    HomePage(),
    SavedScreen(),
    const ProfileScreen(),
  ];

  void _onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: _screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(backgroundColor: AppColors.darkPurple,
        currentIndex: _currentIndex,
        onTap: _onTabTapped,
        items:  [
          BottomNavigationBarItem(
            icon: Container(
              width: screenWidth * 0.1,
              height: screenHeight * 0.04,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color:_currentIndex == 0 ?  AppColors.light2Purple:Colors.transparent,
              ),
              child: Icon(
                _currentIndex == 0 ?
                Icons.home :Icons.home_outlined,
                size: 20,
              ),
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Container(
              width: screenWidth * 0.1,
              height: screenHeight * 0.04,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color:_currentIndex == 1 ? AppColors.light2Purple:Colors.transparent ,
              ),
              child: Icon(
                _currentIndex == 1 ?
                Icons.favorite : Icons.favorite_border_outlined,
                size: 20,
              ),
            ),
            label: 'Saved',
          ),
          BottomNavigationBarItem(
            icon: Container(
              width: screenWidth * 0.1,
              height: screenHeight * 0.04,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color:_currentIndex == 2 ? AppColors.light2Purple: Colors.transparent,
              ),
              child: Icon(
                _currentIndex == 2 ?
                Icons.person : Icons.person_2_outlined,
                size: 20,
              ),
            ),
            label: 'Profile',
          ),
        ],
        selectedItemColor: AppColors.mainColor,
        unselectedItemColor: Colors.grey,

      ),
    );
  }
}
