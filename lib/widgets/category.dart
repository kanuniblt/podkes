import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:podkes/widgets/colors.dart';

import 'package:podkes/widgets/texts.dart';

class PodkesCategory {
  static SingleChildScrollView category = SingleChildScrollView(
    scrollDirection: Axis.horizontal,
    child: Wrap(
      spacing: 10,
      children: [
        TextButton(
            style: TextButton.styleFrom(
              backgroundColor: AppColors.buttonsBackground,
            ),
            onPressed: () {},
            child: Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: PodkesTexts().buttonBarItem('All'),
            )),
        TextButton(
            style: TextButton.styleFrom(
              backgroundColor: AppColors.buttonsBackground,
            ),
            onPressed: () {},
            child: Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: PodkesTexts().buttonBarItem('Life'))),
        TextButton(
            style: TextButton.styleFrom(
              backgroundColor: AppColors.buttonsBackground,
            ),
            onPressed: () {},
            child: Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: PodkesTexts().buttonBarItem('Comedy'))),
        TextButton(
            style: TextButton.styleFrom(
              backgroundColor: AppColors.buttonsBackground,
            ),
            onPressed: () {},
            child: Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: PodkesTexts().buttonBarItem('Technology'))),
      ],
    ),
  );
}
