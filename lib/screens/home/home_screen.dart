import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kraftbase/resources/app_colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        Stories(),
        SizedBox(height: 8),
        Feed(),
      ],
    );
  }
}

class Feed extends StatelessWidget {
  const Feed({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
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
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: const Color(0xFFFC8019),
                    borderRadius: BorderRadius.circular(24.0),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 4.0, horizontal: 8.0),
                    child: Text(
                      'Daily Posts',
                      style: GoogleFonts.readexPro(
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 8.0),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: const Color(0xFF979797),
                    ),
                    borderRadius: BorderRadius.circular(24.0),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 4.0,
                      horizontal: 8.0,
                    ),
                    child: Text(
                      'Discussion & Polling',
                      style: GoogleFonts.readexPro(
                        color: const Color(0xFF939393),
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Container(
          height: MediaQuery.of(context).size.height,
          padding: const EdgeInsets.only(top: 60, left: 16, right: 16),
          child: ListView.builder(
            physics: const AlwaysScrollableScrollPhysics(),
            itemCount: 5,
            itemBuilder: (context, index) {
              return Container(
                padding: const EdgeInsets.only(bottom: 20),
                child: Card(
                  color: AppColors.whiteColor,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 4.0,
                          left: 8.0,
                          right: 8.0,
                        ),
                        child: Row(
                          children: [
                            CircleAvatar(
                              radius: 18,
                              child: Image.asset('images/feedDP.png'),
                            ),
                            const SizedBox(width: 8.0),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Jenny Wilson",
                                  style: GoogleFonts.readexPro(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 14.0,
                                    color: const Color(0xFF232323),
                                  ),
                                ),
                                Text(
                                  "10 Mins Ago",
                                  style: GoogleFonts.readexPro(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 8.0,
                                    color: const Color(0xFFBEBEBE),
                                  ),
                                ),
                              ],
                            ),
                            const Spacer(),
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.more_horiz),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 8.0),
                      Image.asset(
                        'images/feedImage.png',
                        fit: BoxFit.fitWidth,
                        width: double.infinity,
                      ),
                      Row(
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: Image.asset(
                              'images/feedActionIcons/love.png',
                            ),
                            padding: EdgeInsets.zero,
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: Image.asset(
                              'images/feedActionIcons/messenger.png',
                            ),
                            padding: EdgeInsets.zero,
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: Image.asset(
                              'images/feedActionIcons/arrow.png',
                            ),
                            padding: EdgeInsets.zero,
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 8.0,
                          right: 8.0,
                          bottom: 12.0,
                        ),
                        child: Text(
                          'Lorem ipsum dolor sit amet consectetur. In proin scelerisque rhoncus magna odio tellus habitant eleifend. Justo risus eget pretium turpis tincidunt sagittis id nulla. ',
                          style: GoogleFonts.readexPro(
                            fontWeight: FontWeight.w400,
                            fontSize: 10.0,
                          ),
                        ),
                      ),
                    ],
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

class Stories extends StatelessWidget {
  const Stories({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> storyClass = [
      "Meme Club",
      "Tech Club",
      "Market Club",
      "Design Club",
      "Photography Club",
      "Hackathon Club",
      "Entrepreneur Club",
    ];
    List<String> storyImages = [
      "meme.jpeg",
      "tech.jpeg",
      "marketing.jpeg",
      "design.jpeg",
      "photography.jpeg",
      "hackathon.jpeg",
      "entrepreneurship.png",
    ];
    List<Color> bgColor = const [
      Color.fromARGB(255, 240, 235, 141),
      Color.fromARGB(255, 165, 233, 225),
      Color.fromARGB(255, 255, 188, 123),
      Color.fromARGB(255, 255, 131, 132),
      Color.fromARGB(255, 138, 221, 211),
      Color.fromARGB(255, 255, 188, 123),
      Color.fromARGB(255, 165, 233, 225),
    ];
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      height: 100,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: storyClass.length,
        itemBuilder: (context, index) {
          return SizedBox(
            width: 76,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: GestureDetector(
                    onTap: () {},
                    child: CircleAvatar(
                      radius: 28.0,
                      backgroundColor: bgColor[index],
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(50),
                        child: Image.asset(
                          'images/stories/${storyImages[index]}',
                          fit: BoxFit.fill,
                          height: 36,
                          width: 36,
                        ),
                      ),
                    ),
                  ),
                ),
                Text(
                  storyClass[index],
                  style: GoogleFonts.readexPro(
                    fontWeight: FontWeight.w400,
                    fontSize: 10,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
