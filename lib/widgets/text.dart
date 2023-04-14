import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget mainText(String mainText, Color colorMainText) {
  return Text(
    mainText,
    style: GoogleFonts.lato(
      fontSize: 22,
      color: colorMainText,
      fontWeight: FontWeight.bold,
    ),
  );
}

Widget childText(String mainText, Color colorMainText) {
  return Text(
    mainText,
    style: GoogleFonts.lato(
      fontSize: 18,
      color: colorMainText,
    ),
  );
}
