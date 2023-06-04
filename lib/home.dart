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
      // appBar: const HomeScreenAppbar(),
      body: pages[_selectedIndex],
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: const Color(0xFFFC8019),
        shape: const CircleBorder(),
        child: const Icon(
          Icons.add,
          color: AppColors.whiteColor,
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: ColorFiltered(
              colorFilter: _selectedIndex == 0
                  ? const ColorFilter.mode(
                      Color(0xFFFC8019),
                      BlendMode.srcIn,
                    )
                  : const ColorFilter.mode(
                      Color(0xFF979797),
                      BlendMode.srcIn,
                    ),
              child: Image.asset('images/bottomNavBarIcons/home.png'),
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: ColorFiltered(
              colorFilter: _selectedIndex == 1
                  ? const ColorFilter.mode(
                      Color(0xFFFC8019),
                      BlendMode.srcIn,
                    )
                  : const ColorFilter.mode(
                      Color(0xFF979797),
                      BlendMode.srcIn,
                    ),
              child: Image.asset('images/bottomNavBarIcons/chat.png'),
            ),
            label: "Chat",
          ),
          BottomNavigationBarItem(
            icon: ColorFiltered(
              colorFilter: _selectedIndex == 2
                  ? const ColorFilter.mode(
                      Color(0xFFFC8019),
                      BlendMode.srcIn,
                    )
                  : const ColorFilter.mode(
                      Color(0xFF979797),
                      BlendMode.srcIn,
                    ),
              child: Image.asset('images/bottomNavBarIcons/ai.png'),
            ),
            label: "AI",
          ),
          BottomNavigationBarItem(
            icon: ColorFiltered(
              colorFilter: _selectedIndex == 3
                  ? const ColorFilter.mode(
                      Color(0xFFFC8019),
                      BlendMode.srcIn,
                    )
                  : const ColorFilter.mode(
                      Color(0xFF979797),
                      BlendMode.srcIn,
                    ),
              child: Image.asset('images/bottomNavBarIcons/learn.png'),
            ),
            label: "Learn",
          ),
          BottomNavigationBarItem(
            icon: ColorFiltered(
              colorFilter: _selectedIndex == 4
                  ? const ColorFilter.mode(
                      Color(0xFFFC8019),
                      BlendMode.srcIn,
                    )
                  : const ColorFilter.mode(
                      Color(0xFF979797),
                      BlendMode.srcIn,
                    ),
              child: Image.asset('images/bottomNavBarIcons/events.png'),
            ),
            label: "Events",
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: const Color(0xFFFC8019),
        unselectedItemColor: const Color(0xFF979797),
        showUnselectedLabels: true,
        type: BottomNavigationBarType.fixed,
        onTap: _onItemTap,
      ),
    );
  }
}
