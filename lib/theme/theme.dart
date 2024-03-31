import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final primaryColorScheme =
    ColorScheme.fromSeed(seedColor: Colors.blue, brightness: Brightness.dark);

final themeData = ThemeData(
    colorScheme: primaryColorScheme,
    useMaterial3: true,
    textTheme: GoogleFonts.robotoTextTheme()
        .apply(bodyColor: Colors.white70, displayColor: Colors.white70),
    appBarTheme:
        AppBarTheme(backgroundColor: primaryColorScheme.primaryContainer));
