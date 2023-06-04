import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RecentTabView extends StatelessWidget {
  const RecentTabView({super.key});

  @override
  Widget build(BuildContext context) {
    List<Color> cardColor = const [
      Color(0xFFFFDCA8),
      Color(0xFFC8EDB9),
      Color(0xFFFFD5CE),
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
            color: Color(0xFFF9F9F9),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20.0),
              topRight: Radius.circular(20.0),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 24.0, left: 8, right: 8),
          child: ListView.builder(
            itemCount: 3,
            itemBuilder: (context, index) {
              return Container(
                margin: const EdgeInsets.only(bottom: 8),
                height: 160,
                width: 320,
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
                        color: const Color(0xFF292929),
                      ),
                    ),
                    Text(
                      timeLine,
                      style: GoogleFonts.readexPro(
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                        color: const Color(0xFF292929),
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
                color: const Color(0xFF292929),
              ),
            ),
          ),
          const Divider(),
          Padding(
            padding: const EdgeInsets.only(top: 4.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(
                        vertical: 4,
                        horizontal: 8,
                      ),
                      decoration: BoxDecoration(
                        color: const Color(0xFFF1F1F1),
                        borderRadius: BorderRadius.circular(25.0),
                      ),
                      child: Row(
                        children: [
                          const Icon(
                            Icons.group,
                            size: 12,
                          ),
                          const SizedBox(width: 4),
                          Text(
                            '$enrollCount',
                            style: GoogleFonts.readexPro(
                              fontWeight: FontWeight.w600,
                              fontSize: 10.0,
                              color: const Color(0xFF717171),
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
                        color: const Color(0xFF292929),
                      ),
                    ),
                  ],
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
                      'Watch',
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
