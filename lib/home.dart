import 'package:flutter/material.dart';
import 'package:kraftbase/resources/app_colors.dart';
import 'package:kraftbase/screens/events/event_screen.dart';
import 'package:kraftbase/screens/home/home_screen.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;

  void _onItemTap(int idx) {
    setState(() {
      _selectedIndex = idx;
    });
  }

  List<Widget> pages = const [
    HomeScreen(),
    Center(
      child: Text("ChatScreen"),
    ),
    Center(
      child: Text("AIScreen"),
    ),
    Center(
      child: Text("LearnScreen"),
    ),
    EventScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          customBottomNavBarItem(
            0,
            'images/bottomNavBarIcons/home.png',
            "Home",
          ),
          customBottomNavBarItem(
            1,
            'images/bottomNavBarIcons/chat.png',
            "Chat",
          ),
          customBottomNavBarItem(
            2,
            'images/bottomNavBarIcons/ai.png',
            "AI",
          ),
          customBottomNavBarItem(
            3,
            'images/bottomNavBarIcons/learn.png',
            "Learn",
          ),
          customBottomNavBarItem(
            4,
            'images/bottomNavBarIcons/events.png',
            "Events",
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: AppColors.homeOrangeColor,
        unselectedItemColor: AppColors.homeGreyColor,
        showUnselectedLabels: true,
        type: BottomNavigationBarType.fixed,
        onTap: _onItemTap,
      ),
    );
  }

  BottomNavigationBarItem customBottomNavBarItem(
    int index,
    String imgPath,
    String labelText,
  ) {
    return BottomNavigationBarItem(
      icon: ColorFiltered(
        colorFilter: _selectedIndex == index
            ? const ColorFilter.mode(
                AppColors.homeOrangeColor,
                BlendMode.srcIn,
              )
            : const ColorFilter.mode(
                AppColors.homeGreyColor,
                BlendMode.srcIn,
              ),
        child: Image.asset(imgPath),
      ),
      label: labelText,
    );
  }
}
