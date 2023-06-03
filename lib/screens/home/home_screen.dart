// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:kraftbase/resources/app_colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.homeScreenBGColor,
      appBar: HomeScreenAppbar(),
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
      backgroundColor: AppColors.homeScreenBGColor,
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
