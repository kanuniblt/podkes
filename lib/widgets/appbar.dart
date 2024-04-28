import 'package:flutter/material.dart';

import 'package:podkes/widgets/colors.dart';
import 'package:podkes/widgets/icons.dart';

import 'package:podkes/widgets/texts.dart';

class PodkesAppBar extends StatelessWidget implements PreferredSizeWidget {
  const PodkesAppBar({
    super.key,
  });

  @override
  Widget build(
    BuildContext context,
  ) {
    return AppBar(
        centerTitle: true,
        backgroundColor: AppColors.appbarColor,
        leading: Padding(
          padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
          child: SizedBox(width: 30, height: 30, child: AppIcons.menuIcon),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
            child: SizedBox(
                width: 30,
                height: 30,
                child: Stack(children: [
                  AppIcons.navigationIcon,
                  Positioned(
                      top: 0.0,
                      right: 10.0,
                      child: Icon(
                        Icons.brightness_1,
                        size: 8.0,
                        color: AppColors.red,
                      ))
                ])),
          )
        ],
        title: PodkesTexts.appbarText);
  }

  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
