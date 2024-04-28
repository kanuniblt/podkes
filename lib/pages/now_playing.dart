import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:podkes/widgets/colors.dart';
import 'package:podkes/widgets/icons.dart';
import 'package:podkes/widgets/style.dart';
import 'package:podkes/widgets/texts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class NowPlayingPage {
  nowPlayingWidget(BuildContext context, String assetName, dynamic podcastName,
      dynamic podcastArtist) {
    return Scaffold(
      backgroundColor: AppColors.mainColor,
      appBar: AppBar(
        title: PodkesTexts.nowPlaying,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          icon: AppIcons.leftArrow,
          color: AppColors.textWhite,
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Spacer(
              flex: 3,
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(5),
              child: Image(
                fit: BoxFit.cover,
                image: AssetImage(assetName),
                height: Adaptive.w(80),
                width: Adaptive.w(80),
              ),
            ),
            SizedBox(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                child: podcastName,
              ),
              width: Adaptive.w(80),
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                child: podcastArtist,
              ),
              width: Adaptive.w(80),
            ),
            SizedBox(
                child: Padding(
                    padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                    child: Image(
                      image: AssetImage('assets/img/fooo.png'),
                      width: Adaptive.w(80),
                    ))),
            Container(
              height: 30,
              width: Adaptive.w(80),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  PodkesTexts.nowPlayingArt('24:35', AppColors.textWhite),
                  PodkesTexts.nowPlayingArt('34:00', AppColors.textWhite),
                ],
              ),
            ),
            Spacer(
              flex: 3,
            ),
            Wrap(
              direction: Axis.horizontal,
              spacing: 30,
              alignment: WrapAlignment.center,
              crossAxisAlignment: WrapCrossAlignment.center,
              children: [
                AppIcons.skipBack,
                SizedBox(
                  height: 50,
                  width: 50,
                  child: CircleAvatar(
                      backgroundColor: AppColors.searchBackground,
                      child: AppIcons.play),
                ),
                AppIcons.skipFwd,
              ],
            ),
            Spacer(
              flex: 6,
            )
          ],
        ),
      ),
    );
  }
}
