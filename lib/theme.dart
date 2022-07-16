import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final theme = ThemeData(
    textTheme: GoogleFonts.openSansTextTheme(),
    primaryColorDark: const Color(0XFFa65cce),
    primaryColorLight: Color.fromARGB(255, 255, 221, 0),
    primaryColor: const Color(0XFF3827b1),
    //accentColor: const Color(0xFF009688),
    scaffoldBackgroundColor: Color.fromARGB(255, 0, 0, 0),
    inputDecorationTheme: InputDecorationTheme(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(8))));
