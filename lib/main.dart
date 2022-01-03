import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ramadantimer/ramadan_timer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ramadantimer.uz',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: GoogleFonts.comfortaaTextTheme(),
      ),
      home: RamadanTimerPage(),
    );
  }
}
