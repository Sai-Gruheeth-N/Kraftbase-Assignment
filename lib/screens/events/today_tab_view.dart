// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:kraftbase/resources/app_colors.dart';

class TodayTabView extends StatelessWidget {
  const TodayTabView({super.key});

  @override
  Widget build(BuildContext context) {
    List<Color> cardColor = const [
      Color(0xFF4C42C2),
      Color(0xFF42C2C2),
      Color(0xFFC2429E),
      Color(0xFF4C42C2),
      Color(0xFF42C2C2),
    ];
    List<int> enrollCount = [85, 62, 45, 92, 100];
    List<String> title = [
      "Cryptocurrency",
      "Web 3 Technology",
      "Big Data Analytics",
      "Cryptocurrency",
      "Web 3 Technology",
    ];
    return Stack(
      children: [
        Container(
          height: MediaQuery.of(context).size.height,
          width: double.infinity,
          decoration: const BoxDecoration(
            color: Color(0xFFF9F9F9),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20.0),
              topRight: Radius.circular(20.0),
            ),
          ),
        ),
        Positioned(
          top: 16,
          child: Container(
            width: MediaQuery.of(context).size.width,
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(
              children: [
                const Icon(Icons.more_vert),
                const SizedBox(width: 8.0),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: const Color(0xFFF2F2F2),
                      borderRadius: BorderRadius.circular(24.0),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 4.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            DateFormat('EEEE').format(DateTime.now()),
                            textAlign: TextAlign.center,
                            style: GoogleFonts.readexPro(
                              fontWeight: FontWeight.w400,
                              color: const Color(0xFF212121),
                            ),
                          ),
                          Text(
                            DateFormat(', d MMM').format(DateTime.now()),
                            textAlign: TextAlign.center,
                            style: GoogleFonts.readexPro(
                              fontWeight: FontWeight.w400,
                              color: const Color(0xFF686868),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 8.0),
                Container(
                  decoration: BoxDecoration(
                    color: const Color(0xFFFFD55D),
                    borderRadius: BorderRadius.circular(14.0),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 4.0,
                      horizontal: 8.0,
                    ),
                    child: Row(
                      children: [
                        const Icon(
                          Icons.filter_alt_outlined,
                          color: Color(0xFF0D1C2E),
                        ),
                        Text(
                          'Filter',
                          style: GoogleFonts.readexPro(
                            color: const Color(0xFF212121),
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 60.0, left: 8, right: 8),
          child: ListView.builder(
            itemCount: 5,
            itemBuilder: (context, index) {
              return Container(
                margin: const EdgeInsets.only(bottom: 8),
                height: 180,
                width: 360,
                child: Card(
                  color: cardColor[index],
                  child: EventCard(
                    eventTitle: title[index],
                    enrollCount: enrollCount[index],
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
  final int enrollCount;
  const EventCard({
    Key? key,
    required this.eventTitle,
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
                        color: AppColors.whiteColor,
                      ),
                    ),
                    Text(
                      '7:23 AM > 9:41 AM',
                      style: GoogleFonts.readexPro(
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                        color: AppColors.whiteColor,
                      ),
                    ),
                  ],
                ),
              ),
              const Spacer(),
              const Icon(
                Icons.more_horiz,
                color: AppColors.whiteColor,
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: Text(
              'Lorem ipsum dolor sit amet consectetur. In proin scelerisque rhoncus magna odio tellus habitant eleifend. Justo risus eget pretium turpis ',
              style: GoogleFonts.readexPro(
                fontWeight: FontWeight.w400,
                fontSize: 8.0,
                height: 1.8,
                color: AppColors.whiteColor,
              ),
            ),
          ),
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
              Text(
                'Participants',
                style: GoogleFonts.readexPro(
                  fontWeight: FontWeight.w400,
                  fontSize: 12.0,
                  color: AppColors.whiteColor,
                ),
              ),
              const Spacer(),
              const Icon(
                Icons.signal_cellular_alt,
                size: 15,
                color: Color(0xFF37B622),
              ),
              Text(
                'Live',
                style: GoogleFonts.readexPro(
                  fontWeight: FontWeight.w400,
                  fontSize: 12.0,
                  color: AppColors.whiteColor,
                ),
              ),
            ],
          ),
          const Divider(),
          Padding(
            padding: const EdgeInsets.only(top: 4.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 200,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(50.0),
                    child: LinearProgressIndicator(
                      value: enrollCount / 100,
                      minHeight: 5,
                      backgroundColor: const Color(0xFFC8C8C8),
                      color: AppColors.whiteColor,
                    ),
                  ),
                ),
                Text(
                  '$enrollCount%',
                  style: GoogleFonts.readexPro(
                      fontWeight: FontWeight.w600,
                      fontSize: 10.0,
                      color: AppColors.whiteColor),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: const Color(0xFFFFD55D),
                    borderRadius: BorderRadius.circular(14.0),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 4.0,
                      horizontal: 8.0,
                    ),
                    child: Text(
                      'Enroll Now',
                      style: GoogleFonts.readexPro(
                        color: const Color(0xFF212121),
                        fontWeight: FontWeight.w400,
                        fontSize: 10.0,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
