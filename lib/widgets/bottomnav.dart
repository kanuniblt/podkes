import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:podkes/widgets/colors.dart';
import 'package:podkes/widgets/icons.dart';

import 'package:podkes/widgets/texts.dart';

class PodkesBottomNavigationBar extends StatelessWidget {
  const PodkesBottomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      child: BottomNavigationBar(
        iconSize: 24,
        selectedFontSize: 10,
        unselectedFontSize: 10,
        selectedItemColor: AppColors.textWhite,
        unselectedItemColor: AppColors.textGrey,
        selectedLabelStyle: GoogleFonts.inter(
            textStyle: const TextStyle(
          fontWeight: FontWeight.normal,
          letterSpacing: 0.3,
        )),
        unselectedLabelStyle: GoogleFonts.inter(
            textStyle: const TextStyle(
          fontWeight: FontWeight.normal,
          letterSpacing: 0.3,
        )),
        backgroundColor: AppColors.bottomNavigationColor,
        items: [
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.all(8.0),
              child: AppIcons.discoverIcon,
            ),
            label: PodkesTexts.menu1Text.data,
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.all(8.0),
              child: AppIcons.libraryIcon,
            ),
            label: PodkesTexts.menu2Text.data,
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.all(8.0),
              child: AppIcons.profileIcon,
            ),
            label: PodkesTexts.menu3Text.data,
          ),
        ],
      ),
    );
  }
}
