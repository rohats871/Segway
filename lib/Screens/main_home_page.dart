import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:line_icons/line_icons.dart';
import 'package:segway/Screens/BucketList/BucketList.dart';
import 'package:segway/Screens/HomeScreen/home_screen.dart';
import 'package:segway/constants.dart';

import 'MapScreen/map_screen.dart';
import 'TravelStories/TravelStories.dart';

class MainHomePage extends StatefulWidget {
  const MainHomePage({Key? key}) : super(key: key);

  @override
  _MainHomePageState createState() => _MainHomePageState();
}

class _MainHomePageState extends State<MainHomePage> {
  int _selectedItem = 0;
  final _pageController = PageController();
  final _pages = [
    const HomeScreen(),
    const MapScreen(),
    const BucketList(),
    const TravelStories(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        iconSize: 30.sp,
        showUnselectedLabels: true,
        selectedFontSize: 12.sp,
        unselectedFontSize: 10.sp,
        elevation: 0.sp,
        enableFeedback: true,
        selectedItemColor: PrimaryGold,
        showSelectedLabels: true,
        selectedLabelStyle: Gold_Poppins_14_Thin(),
        unselectedLabelStyle: Black_Poppins_12_Thin(),
        unselectedItemColor: TextColor,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(LineIcons.campground),
            label: 'Home',
          ),
          BottomNavigationBarItem(icon: Icon(LineIcons.mapSigns), label: 'Map'),
          BottomNavigationBarItem(
              icon: Icon(LineIcons.splotch), label: 'BucketList'),
          BottomNavigationBarItem(
              icon: Icon(LineIcons.globeWithAsiaShown), label: 'Stories'),
        ],
        currentIndex: _selectedItem,
        onTap: (index) {
          setState(() {
            _selectedItem = index;
            _pageController.animateToPage(_selectedItem,
                duration: const Duration(milliseconds: 10), curve: Curves.ease);
          });
        },
      ),
      body: PageView(
        controller: _pageController,
        onPageChanged: (index) {
          setState(() {
            _selectedItem = index;
          });
        },
        children: _pages,
      ),
    );
  }
}
