import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:podkes/widgets/colors.dart';

import 'package:podkes/widgets/style.dart';

class PodkesTexts {
  static PodkesStyle ps = PodkesStyle();
  static Text appbarText =
      Text('Podkes', style: ps.poppins(5, AppColors.textWhite));
  static Text menu1Text = Text(
    'Discover',
    style: ps.interw500(3, AppColors.textGrey),
  );
  static Text menu2Text = Text(
    'Library',
    style: ps.interw500(3, AppColors.textGrey),
  );
  static Text menu3Text = Text(
    'Profile',
    style: ps.interw500(3, AppColors.textGrey),
  );
  static Text gettingStartedTitle = Text(
    'Podkes',
    style: ps.poppins(8, AppColors.textWhite),
  );
  static Text gettingStartedSubtitle = Text(
    'A podcast is an episodic series of spoken word digital audio files that a user can download to a personal device for easy listening.',
    style: ps.interw500(3.5, AppColors.textGrey),
    textAlign: TextAlign.center,
  );
  static Text trendingText =
      Text('Trending', style: ps.interBold(6, AppColors.textWhite));
  static Text card1Text = Text('The missing 96 percent of the universe',
      style: ps.interBold(3, AppColors.textWhite));
  static Text card1Subtext = Text(
    'Claire Malone',
    style: ps.interw500(2.5, AppColors.textGrey),
  );
  static Text card2Text = Text(
    'How Dolly Parton led me to an epiphany',
    style: ps.interBold(3, AppColors.textWhite),
  );
  static Text card2Subtext = Text(
    'Abumenyang',
    style: ps.interw500(2.5, AppColors.textGrey),
  );
  static Text card3Text = Text('The missing 96 percent of the universe',
      style: ps.interBold(3, AppColors.textWhite));
  static Text card3Subtext = Text(
    'Tir McDohl',
    style: ps.interw500(2.5, AppColors.textGrey),
  );
  static Text card4Text = Text('Ngobam with Denny Caknan',
      style: ps.interBold(3, AppColors.textWhite));
  static Text card4Subtext = Text(
    'Denny Kulon',
    style: ps.interw500(2.5, AppColors.textGrey),
  );
  static Text nowPlaying = Text(
    'Now Playing',
    style: ps.interw500(4.5, AppColors.textWhite),
  );
  static Text nowPlayingTitle(String text, Color color) => Text(
        text,
        style: ps.interBold(5, color),
      );
  static Text nowPlayingArt(String text, Color color) => Text(
        text,
        style: ps.inter(3.5, color),
      );
  static Text search = Text(
    'Search',
    style: ps.inter(4, AppColors.textGrey),
  );
  Text buttonBarItem(String text) {
    return Text(text, style: ps.interw500(4, AppColors.textGrey));
  }
}
