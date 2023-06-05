// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kraftbase/resources/app_colors.dart';
import 'package:kraftbase/screens/events/recent_tab_view.dart';
import 'package:kraftbase/screens/events/today_tab_view.dart';
import 'package:kraftbase/screens/events/upcoming_tab_view.dart';
import 'package:kraftbase/widgets/custom_icon_button.dart';

class EventScreen extends StatelessWidget {
  const EventScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: EventScreenAppbar(),
        body: TabBarView(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 12.0),
              child: RecentTabView(),
            ),
            Padding(
              padding: EdgeInsets.only(top: 12.0),
              child: TodayTabView(),
            ),
            Padding(
              padding: EdgeInsets.only(top: 12.0),
              child: UpcomingTabView(),
            ),
          ],
        ),
      ),
    );
  }
}

class EventScreenAppbar extends StatelessWidget implements PreferredSizeWidget {
  const EventScreenAppbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      actions: [
        Flexible(
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 16.0),
                child: CustomIconButton(
                  icon: const Icon(Icons.more_vert),
                  onPressed: () {},
                ),
              ),
              const SizedBox(width: 8.0),
              Text(
                'Event',
                style: GoogleFonts.readexPro(
                  fontWeight: FontWeight.w400,
                  fontSize: 22.0,
                ),
              ),
              const Spacer(),
              CustomIconButton(
                icon: Image.asset('images/Notification.png'),
                onPressed: () {},
              ),
              const SizedBox(width: 12.0),
              Padding(
                padding: const EdgeInsets.only(right: 16.0),
                child: CircleAvatar(
                  radius: 20,
                  backgroundColor: AppColors.homeOrangeColor,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(
                      'images/profile-pic.png',
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
      backgroundColor: AppColors.whiteColor,
      automaticallyImplyLeading: false,
      elevation: 0.0,
      bottom: const EventScreenTabBar(),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(128);
}

class EventScreenTabBar extends StatelessWidget implements PreferredSizeWidget {
  const EventScreenTabBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var labelFontStyle = GoogleFonts.readexPro(
      fontWeight: FontWeight.w500,
      fontSize: 14.0,
    );
    return Column(
      children: [
        const Divider(
          thickness: 0.8,
          color: AppColors.homeGreyColor,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16.0,
            vertical: 8.0,
          ),
          child: DecoratedBox(
            decoration: BoxDecoration(
              border: Border.all(
                color: AppColors.homeGreyColor,
                width: 1.0,
              ),
              borderRadius: BorderRadius.circular(50),
            ),
            child: TabBar(
              tabs: const [
                CustomTab(tabLabel: 'Recent'),
                CustomTab(tabLabel: 'Today'),
                CustomTab(tabLabel: 'Upcoming'),
              ],
              indicatorSize: TabBarIndicatorSize.label,
              indicator: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: AppColors.homeOrangeColor,
              ),
              indicatorPadding: const EdgeInsets.symmetric(vertical: 4.0),
              labelColor: AppColors.whiteColor,
              unselectedLabelColor: AppColors.homeGreyColor,
              labelStyle: labelFontStyle,
              unselectedLabelStyle: labelFontStyle,
              dividerColor: AppColors.transparentColor,
            ),
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(100);
}

class CustomTab extends StatelessWidget {
  final String tabLabel;
  const CustomTab({
    Key? key,
    required this.tabLabel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Tab(
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 4.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
        ),
        child: Align(
          alignment: Alignment.center,
          child: Text(tabLabel),
        ),
      ),
    );
  }
}
