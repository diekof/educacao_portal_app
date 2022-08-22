import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

TextTheme get textTheme => TextTheme(
      bodyText1: const TextStyle(
        color: Color.fromARGB(255, 255, 255, 255),
        fontSize: 14,
        fontWeight: FontWeight.bold,
      ),
      bodyText2: const TextStyle(color: Color(0xFF727376)),
      displayLarge: const TextStyle(color: Color(0xFF727376), fontSize: 57),
      displayMedium: const TextStyle(color: Color(0xFF727376), fontSize: 45),
      displaySmall: const TextStyle(color: Color(0xFF727376), fontSize: 44),
      headlineLarge: const TextStyle(color: Color(0xFF00363c), fontSize: 40),
      headlineMedium: const TextStyle(color: Color(0xFF727376), fontSize: 36),
      headlineSmall: GoogleFonts.montserrat(
          fontWeight: FontWeight.bold, color: Color(0xFF00363c)),
      //TextStyle(color: Color(0xFF727376), fontSize: 32,fontWeight: FontWeight.bold, fontFamily:  ),
    );
