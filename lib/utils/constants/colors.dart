import 'package:flutter/material.dart';

class EColors {
  EColors._();

  /// --- App Basic Colors --- ///
  ///
  ///
  static const Color primary = Color(0xFF515948);
  static const Color secondary = Color(0xFFD9BDAD);
  static const Color tertiary = Color(0xFF607D8B);
  static const Color accent = Color(0xFFF2A03D);

  /// --- Background Colors --- ///
  ///
  ///
  static const Color backgroundLight = EColors.white;
  static const Color backgroundDark = EColors.black;

  /// --- Gradient Colors --- ///
  ///
  ///
  static const Gradient linearGradient = LinearGradient(
    begin: Alignment(0, 0),
    colors: [
      Color.fromARGB(255, 12, 117, 124),
      Color.fromARGB(255, 95, 36, 172),
      Color.fromARGB(255, 0, 195, 255),
    ],
  );

  /// --- COLOR LIST --- ///
  ///
  ///
  static const List<Color> colors = [
    Color(0x334FC3F7), // Faint blue (20% opacity)
    Color(0x3329B6F6), // Faint indigo (20% opacity)
    Color(0x3303DAC6), // Faint teal (20% opacity)
    Color(0x3300BCD4), // Faint cyan (20% opacity)
    Color(0x332196F3), // Faint blue (20% opacity)
    Color(0x333F51B5), // Faint indigo (20% opacity)
    Color(0x33009888), // Faint teal (20% opacity)
    Color(0x3300ACC1), // Faint cyan (20% opacity)
    Color(0x330288D1), // Faint blue (20% opacity)
    Color(0x331976D2), // Faint blue (20% opacity)
  ];

  /// --- Text Colors --- ///
  ///
  ///
  static const Color textPrimary = primary;
  static const Color textSecondary = tertiary;
  static const Color textWhite = backgroundLight;

  /// --- Background Container Colors --- ///
  ///
  ///
  static const Color containerLight = secondary;
  static const Color containerDark = tertiary;

  /// --- Button Colors --- ///
  ///
  ///
  static const Color buttonPrimary = primary;
  static const Color buttonSecondary = secondary;
  static const Color buttonDisabled = backgroundDark;

  /// --- Border Colors --- ///
  ///
  ///
  static const Color borderPrimary = primary;
  static const Color borderSecondary = secondary;

  /// --- Shimmer Colors --- ///
  ///
  ///
  static const Color shimmerBaseDark = backgroundDark;
  static const Color shimmerBaseLight = backgroundLight;
  static const Color shimmerHighlightDark = tertiary;
  static const Color shimmerHighlightLight = secondary;
  static const Color shimmerBorderDark = backgroundLight;
  static const Color shimmerBorderLight = backgroundDark;

  // Error and Validation Colors
  static const Color error = Colors.red;
  static const Color success = Colors.green;
  static const Color warning = Colors.yellow;
  static const Color info = Color(0xFF4B68FF);

  // Neutral Shades
  static const Color black = Colors.black;
  static const Color darkGrey = Colors.grey;
  static const Color grey = Colors.blueGrey;
  static const Color softGrey = Colors.deepOrangeAccent;
  static const Color white = Colors.white;

  /// --- Product Colors --- ///
  static const Color red = Colors.red;
  static const Color green = Colors.green;
  static const Color blue = Colors.blue;
}
