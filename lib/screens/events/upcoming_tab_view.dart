import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kraftbase/resources/app_colors.dart';

class UpcomingTabView extends StatelessWidget {
  const UpcomingTabView({super.key});

  @override
  Widget build(BuildContext context) {
    List<Color> cardColor = const [
      Color(0xFF466FFF),
      Color(0xFF238CC8),
    ];
    List<int> enrollCount = [85, 62, 45, 92, 100];
    List<String> title = [
      "Space Station",
      "Business Marketing",
      "Make a Logo Design",
    ];
    List<String> timeLine = [
      "Yesterday, Monday",
      "Previous Week, Tuesday",
      "Last Month, 2nd Week",
    ];
    return Stack(
      children: [
        Container(
          height: MediaQuery.of(context).size.height,
          width: double.infinity,
          decoration: const BoxDecoration(
            color: AppColors.homeBodyContainerColor,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20.0),
              topRight: Radius.circular(20.0),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 24.0, left: 8, right: 8),
          child: ListView.builder(
            itemCount: 2,
            itemBuilder: (context, index) {
              return Container(
                margin: const EdgeInsets.only(bottom: 8),
                height: 195,
                width: 340,
                child: Card(
                  color: cardColor[index],
                  child: EventCard(
                    eventTitle: title[index],
                    enrollCount: enrollCount[index],
                    timeLine: timeLine[index],
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}

class EventCard extends StatelessWidget {
  final String eventTitle;
  final String timeLine;
  final int enrollCount;
  const EventCard({
    Key? key,
    required this.eventTitle,
    required this.timeLine,
    required this.enrollCount,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                height: 44,
                width: 44,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('images/eventCard/event.png'),
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(8.0),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      eventTitle,
                      style: GoogleFonts.readexPro(
                        fontWeight: FontWeight.w600,
                        fontSize: 14,
                        color: AppColors.titleColor,
                      ),
                    ),
                    Text(
                      timeLine,
                      style: GoogleFonts.readexPro(
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                        color: AppColors.titleColor,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Text(
              'Lorem ipsum dolor sit amet consectetur. In proin scelerisque rhoncus magna odio tellus habitant eleifend. Justo risus eget pretium turpis ',
              style: GoogleFonts.readexPro(
                fontWeight: FontWeight.w400,
                fontSize: 8.0,
                height: 1.8,
                color: AppColors.titleColor,
              ),
            ),
          ),
          const Divider(),
          Padding(
            padding: const EdgeInsets.only(top: 4.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(
                    vertical: 4,
                    horizontal: 8,
                  ),
                  decoration: BoxDecoration(
                    color: AppColors.daysContainerColor,
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Image.asset(
                        'images/eventCard/shuffle.png',
                        scale: 1.5,
                        color: AppColors.daysContainerContentColor,
                      ),
                      const SizedBox(width: 4),
                      Text(
                        'Every Tue, Wed, Friday',
                        style: GoogleFonts.readexPro(
                          fontWeight: FontWeight.w600,
                          fontSize: 10.0,
                          color: AppColors.daysContainerContentColor,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 12),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          width: 60,
                          child: Stack(
                            children: [
                              Positioned(
                                child: Image.asset(
                                  'images/eventCard/participants/Participant0.png',
                                ),
                              ),
                              Positioned(
                                left: 12,
                                child: Image.asset(
                                  'images/eventCard/participants/Participant1.png',
                                ),
                              ),
                              Positioned(
                                left: 24,
                                child: Image.asset(
                                  'images/eventCard/participants/Participant2.png',
                                ),
                              ),
                              Positioned(
                                left: 36,
                                child: Image.asset(
                                  'images/eventCard/participants/Participant3.png',
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(width: 8),
                        Text(
                          'Participants',
                          style: GoogleFonts.readexPro(
                            fontWeight: FontWeight.w400,
                            fontSize: 12.0,
                            color: AppColors.whiteColor,
                          ),
                        ),
                      ],
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: AppColors.registerButtonColor,
                        borderRadius: BorderRadius.circular(14.0),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: 4.0,
                          horizontal: 8.0,
                        ),
                        child: Text(
                          'Register',
                          style: GoogleFonts.readexPro(
                            color: AppColors.registerButtonTextColor,
                            fontWeight: FontWeight.w400,
                            fontSize: 10.0,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
