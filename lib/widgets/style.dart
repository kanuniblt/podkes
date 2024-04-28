import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:responsive_sizer/responsive_sizer.dart';

class PodkesStyle {
  TextStyle poppins(double fontsize, Color color) {
    return GoogleFonts.inter(
        textStyle: TextStyle(
            color: color,
            fontWeight: FontWeight.bold,
            letterSpacing: 0.3,
            fontSize: fontsize.w));
  }

  TextStyle inter(double fontsize, Color color) {
    return GoogleFonts.inter(
        textStyle: TextStyle(
            color: color,
            fontWeight: FontWeight.bold,
            letterSpacing: 0.3,
            fontSize: fontsize.w));
  }

  TextStyle interBold(double fontsize, Color color) {
    return GoogleFonts.inter(
        textStyle: TextStyle(
            color: color,
            fontWeight: FontWeight.bold,
            letterSpacing: 0.3,
            fontSize: fontsize.w));
  }

  TextStyle interw500(double fontsize, Color color) {
    return GoogleFonts.inter(
        textStyle: TextStyle(
            color: color,
            fontWeight: FontWeight.w500,
            letterSpacing: 0.5,
            fontSize: fontsize.w));
  }
}
