import 'dart:ui';

import 'package:animate_countdown_text/animate_countdown_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_timer_countdown/flutter_timer_countdown.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class RamadanTimerPage extends StatelessWidget {
  RamadanTimerPage({Key? key}) : super(key: key);
  final DateTime dateTime = DateTime.now().add(Duration(days: 92));
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/quran.jpg"),
            fit: BoxFit.cover,
          ),
          gradient:
              LinearGradient(colors: [Color(0xFF0A1121), Color(0xFF0A1121)]),
          // color: Color(0xFF0A1121),
        ),
        alignment: Alignment.center,
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 3.0, sigmaY: 3.0),
          child: Container(
            decoration: BoxDecoration(color: Colors.white.withOpacity(0.0)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 40.0, vertical: 25.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset(
                          "assets/masjid_logo.png",
                          width: 40.0,
                          height: 30.0,
                          fit: BoxFit.cover,
                        ),
                        const SizedBox(width: 10.0),
                        const Text(
                          "Ramadantimer.uz",
                          style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const Spacer(),
                Text(
                  "Ramazon 2022",
                  style: GoogleFonts.redressed(
                    fontSize: 45.0,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 30.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                    Text(
                      "Assalomu alaykum, aziz ",
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                        height: 1.4,
                        shadows: [
                          Shadow(
                              color: Colors.black,
                              blurRadius: 10.0,
                              offset: Offset(3, -3)),
                        ],
                      ),
                    ),
                    Text(
                      "Musulmonlar!",
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Color(0xFFA38D53),
                        fontWeight: FontWeight.w600,
                        height: 1.4,
                        shadows: [
                          Shadow(
                              color: Colors.black,
                              blurRadius: 10.0,
                              offset: Offset(3, -3)),
                        ],
                      ),
                    ),
                  ],
                ),
                const Text(
                  "Muborak Ramazon oyi yaqinlashmoqda, keling ortga sanoqni boshlaymiz!",
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.white,
                    height: 1.4,
                    shadows: [
                      Shadow(
                          color: Colors.black,
                          blurRadius: 10.0,
                          offset: Offset(3, -3)),
                    ],
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 40.0),
                TimerCountdown(
                  format: CountDownTimerFormat.daysHoursMinutesSeconds,
                  // endTime: DateTime.now().add(
                  //   const Duration(days: 93),
                  // ),
                  endTime: DateTime(2022, 4, 3),
                  spacerWidth: 50,
                  timeTextStyle: const TextStyle(
                    fontSize: 100.0,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                    fontFamily: 'Nanami',
                  ),
                  daysDescription: "Kun",
                  hoursDescription: "Soat",
                  minutesDescription: "Daqiqa",
                  secondsDescription: "Soniya",
                  descriptionTextStyle: const TextStyle(
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                    fontSize: 25,
                  ),
                ),
                const Spacer(),
                const Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Copyright 2022 | Powered by ",
                      style: GoogleFonts.poppins(
                        fontSize: 16.0,
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    MouseRegion(
                      cursor: SystemMouseCursors.click,
                      child: GestureDetector(
                        onTap: () async {
                          await launch("https://t.me/asadbekdev",
                              enableJavaScript: true);
                        },
                        child: Text(
                          "Asadbek",
                          style: GoogleFonts.poppins(
                            fontSize: 18.0,
                            color: const Color(0xFFA38D53),
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 25.0),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
