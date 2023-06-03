import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        Stories(),
        SizedBox(height: 20),
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
            itemCount: 10,
            itemBuilder: (context, index) {
              return Container(
                padding: const EdgeInsets.only(bottom: 20),
                height: 316,
                width: 320,
                child: const Card(),
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
