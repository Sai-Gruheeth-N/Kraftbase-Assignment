import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

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
                        const Icon(Icons.filter_alt_outlined),
                        Text(
                          'Filter',
                          style: GoogleFonts.readexPro(
                            color: const Color(0xFF939393),
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
            itemCount: 4,
            itemBuilder: (context, index) {
              return Container(
                margin: const EdgeInsets.only(bottom: 8),
                height: 180,
                width: 360,
                child: Card(
                  color: cardColor[index],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
