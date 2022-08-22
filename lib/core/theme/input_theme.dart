import 'package:flutter/material.dart';

InputDecorationTheme get loginInputTheme => InputDecorationTheme(
      filled: true,
      fillColor: Color(0XfF37c3d3),
      iconColor: Colors.white,
      hintStyle: const TextStyle(color: Colors.white),
      labelStyle: const TextStyle(color: Colors.white),
      focusColor: Colors.white,
      focusedBorder: UnderlineInputBorder(
        borderRadius: BorderRadius.circular(100),
        borderSide: const BorderSide(
          style: BorderStyle.solid,
          width: 2,
          color: Colors.white,
        ),
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: const BorderSide(
          width: 0,
          color: Color.fromARGB(0, 255, 255, 255),
        ),
        borderRadius: BorderRadius.circular(100),
      ),
    );
