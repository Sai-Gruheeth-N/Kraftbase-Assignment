import 'package:flutter/material.dart';
import 'package:kraftbase/resources/app_colors.dart';
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
    Center(
      child: Text("EventsScreen"),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      appBar: const HomeScreenAppbar(),
      body: pages[_selectedIndex],
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

class HomeScreenAppbar extends StatelessWidget implements PreferredSizeWidget {
  const HomeScreenAppbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0.0,
      actions: [
        Flexible(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 16.0),
                child: CustomIconButton(
                  icon: Icon(Icons.more_vert),
                ),
              ),
              const Text(
                'Learning Community',
                style: TextStyle(
                  fontFamily: 'Grozel',
                  color: Color.fromARGB(255, 252, 128, 25),
                ),
              ),
              CustomIconButton(
                icon: Image.asset('images/Search.png'),
              ),
              CustomIconButton(
                icon: Image.asset('images/Notification.png'),
              ),
              const Padding(
                padding: EdgeInsets.only(right: 16.0),
                child: CircleAvatar(
                  radius: 20,
                  backgroundColor: Color.fromARGB(255, 252, 128, 25),
                ),
              ),
            ],
          ),
        ),
      ],
      backgroundColor: AppColors.whiteColor,
      automaticallyImplyLeading: false,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class CustomIconButton extends StatelessWidget {
  final Widget icon;
  const CustomIconButton({
    Key? key,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 32,
      width: 32,
      decoration: const BoxDecoration(
        color: AppColors.whiteColor,
        shape: BoxShape.circle,
      ),
      child: IconButton(
        onPressed: () {},
        icon: icon,
        padding: EdgeInsets.zero,
      ),
    );
  }
}
