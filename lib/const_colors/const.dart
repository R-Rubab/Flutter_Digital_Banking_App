import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

TextStyle textStyle = GoogleFonts.lobster(
  fontSize: 14,
  color: Colors.white,
  // fontWeight: FontWeight.bold,
);
TextStyle textStyle1 = GoogleFonts.lobster(
  fontSize: 14,
  color: Colors.white54,
  // fontWeight: FontWeight.bold,
);
TextStyle textStyle2 = GoogleFonts.lobster(
  fontSize: 18,
  color: Colors.black54,
  fontWeight: FontWeight.bold,
);
TextStyle textStyle3 = GoogleFonts.lobster(
    fontSize: 35,
    color: Colors.black.withOpacity(0.8),
    fontWeight: FontWeight.bold,
    letterSpacing: 2,
    shadows: [
      const Shadow(
        color: Color.fromARGB(255, 197, 163, 163),
        offset: Offset(3, 3),
        blurRadius: 9,
      )
    ]);

// ----------------   SixeBox Extension --------------

extension PaddingSizeBox on num {
  SizedBox get ph => SizedBox(height: toDouble());
  SizedBox get pw => SizedBox(width: toDouble());
}

//  ********************* Icon star in (visa card)
Icon icon = const Icon(
  Icons.star,
  color: Colors.white24,
  size: 12,
);
// ********************* contain two colors in whole app

Color color = const Color.fromARGB(255, 217, 231, 96);
Color black = const Color.fromARGB(255, 24, 23, 23);

// *********************** blur shadows out of container
BoxShadow box =
    BoxShadow(color: color, offset: const Offset(3, 3), blurRadius: 9);
BoxShadow box1 =
    BoxShadow(color: color, offset: const Offset(-3, -3), blurRadius: 9);

LinearGradient linearGradient = const LinearGradient(
  colors: [
    Color.fromARGB(255, 150, 176, 123),
    Color.fromARGB(255, 229, 245, 213),
    Color.fromARGB(255, 185, 202, 154),
    Color.fromARGB(223, 154, 213, 87),
    Color.fromARGB(223, 172, 217, 172),
    Color.fromARGB(223, 164, 223, 164),
  ],
  stops: [0, 0, 1, 0, 1, 0],
  begin: Alignment.bottomCenter,
  end: Alignment.bottomRight,
  transform: GradientRotation(6),
);

// **************

Color color1 = const Color(0xff5191ff);
Color color2 = const Color(0xff242138);
Color color3 = const Color(0xff373344);
Color color4 = const Color(0xff1d1c25);
Color color5 = const Color.fromARGB(255, 19, 36, 65);
Color background = const Color.fromARGB(255, 31, 30, 50);
// **************

double degToRad(double deg) => deg * (pi / 180.0);

double normalize(value, min, max) => ((value - min) / (max - min));
const Color kScaffoldBackgroundColor = Color(0xFFF3FBFA);
const double kDiameter = 292;
const double kMinDegree = 16;
const double kMaxDegree = 28;
