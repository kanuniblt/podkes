import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:podkes/pages/now_playing.dart';
import 'package:podkes/widgets/colors.dart';

import 'package:podkes/widgets/texts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class PodkesCard {
  static String asset = 'assets/img/';
  static Widget podkesCard1(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => NowPlayingPage().nowPlayingWidget(
                context,
                asset + 'AlbumArt.jpg',
                PodkesTexts.nowPlayingTitle(
                    PodkesTexts.card1Text.data.toString(), AppColors.textWhite),
                PodkesTexts.nowPlayingArt(
                    PodkesTexts.card1Subtext.data.toString(),
                    AppColors.textGrey))));
      },
      child: Column(
        children: <Widget>[
          ClipRRect(
            borderRadius: BorderRadius.circular(5),
            child: Image(
              image: AssetImage(asset + 'AlbumArt.jpg'),
              height: Adaptive.w(45),
              width: Adaptive.w(45),
            ),
          ),
          SizedBox(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
              child: PodkesTexts.card1Text,
            ),
            width: Adaptive.w(40),
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
              child: PodkesTexts.card1Subtext,
            ),
            width: Adaptive.w(40),
          )
        ],
      ),
    );
  }

  static Widget podkesCard2(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => NowPlayingPage().nowPlayingWidget(
                context,
                asset + 'Album Art2.jpg',
                PodkesTexts.nowPlayingTitle(
                    PodkesTexts.card2Text.data.toString(), AppColors.textWhite),
                PodkesTexts.nowPlayingArt(
                    PodkesTexts.card2Subtext.data.toString(),
                    AppColors.textGrey))));
      },
      child: Column(
        children: <Widget>[
          ClipRRect(
            borderRadius: BorderRadius.circular(5),
            child: Image(
              image: AssetImage(asset + 'Album Art2.jpg'),
              height: Adaptive.w(45),
              width: Adaptive.w(45),
            ),
          ),
          SizedBox(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
              child: PodkesTexts.card2Text,
            ),
            width: Adaptive.w(40),
          ),
          SizedBox(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
              child: PodkesTexts.card2Subtext,
            ),
            width: Adaptive.w(40),
          )
        ],
      ),
    );
  }

  static Widget podkesCard3(BuildContext context) => InkWell(
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => NowPlayingPage().nowPlayingWidget(
                  context,
                  asset + 'Album Art3.jpg',
                  PodkesTexts.nowPlayingTitle(
                      PodkesTexts.card3Text.data.toString(),
                      AppColors.textWhite),
                  PodkesTexts.nowPlayingArt(
                      PodkesTexts.card3Subtext.data.toString(),
                      AppColors.textGrey))));
        },
        child: Column(
          children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.circular(5),
              child: Image(
                image: AssetImage(asset + 'Album Art3.jpg'),
                height: Adaptive.w(45),
                width: Adaptive.w(45),
              ),
            ),
            SizedBox(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                child: PodkesTexts.card3Text,
              ),
              width: Adaptive.w(40),
            ),
            SizedBox(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                child: PodkesTexts.card3Subtext,
              ),
              width: Adaptive.w(40),
            )
          ],
        ),
      );

  static Widget podkesCard4(BuildContext context) => InkWell(
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => NowPlayingPage().nowPlayingWidget(
                  context,
                  asset + 'Album Art4.jpg',
                  PodkesTexts.nowPlayingTitle(
                      PodkesTexts.card4Text.data.toString(),
                      AppColors.textWhite),
                  PodkesTexts.nowPlayingArt(
                      PodkesTexts.card4Subtext.data.toString(),
                      AppColors.textGrey))));
        },
        child: Column(
          children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.circular(5),
              child: Image(
                image: AssetImage(asset + 'Album Art4.jpg'),
                height: Adaptive.w(45),
                width: Adaptive.w(45),
              ),
            ),
            SizedBox(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                child: PodkesTexts.card4Text,
              ),
              width: Adaptive.w(40),
            ),
            SizedBox(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                child: PodkesTexts.card4Subtext,
              ),
              width: Adaptive.w(40),
            )
          ],
        ),
      );
  static Widget gettingStartedCard = Column(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Spacer(),
      ClipRRect(
        borderRadius: BorderRadius.vertical(top: Radius.circular(120)),
        child: Image(
          image: AssetImage(asset + 'Getting Started.jpg'),
          height: Adaptive.h(40),
          width: Adaptive.w(60),
          fit: BoxFit.cover,
        ),
      ),
      Padding(
        padding: const EdgeInsets.fromLTRB(0, 20, 0, 10),
        child: PodkesTexts.gettingStartedTitle,
      ),
      Padding(
          padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
          child: PodkesTexts.gettingStartedSubtitle),
    ],
  );
}
