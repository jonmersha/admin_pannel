import 'package:admin_pannel/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


import 'screen/main/main_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Audit System',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor:bgColor,
          textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme)
              .apply(bodyColor: Colors.white10),
        canvasColor: secondaryColor
      ),
      home:  MainScreen(),
    );
  }
}


