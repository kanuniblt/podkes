import 'package:flutter/material.dart';
import 'package:podkes/widgets/colors.dart';

class AppIcons {
  static String asset = 'assets/icons/';
  static ImageIcon menuIcon = ImageIcon(
    AssetImage(asset + 'Menu.png'),
    color: AppColors.textWhite,
    size: 22,
  );
  static ImageIcon navigationIcon = ImageIcon(
    AssetImage(asset + 'Notification.png'),
    color: Colors.white,
    size: 22,
  );
  static ImageIcon discoverIcon = ImageIcon(
    AssetImage(asset + 'Discover.png'),
    size: 22,
  );
  static ImageIcon libraryIcon = ImageIcon(
    AssetImage(asset + 'Library.png'),
    size: 22,
  );
  static ImageIcon profileIcon = ImageIcon(
    AssetImage(asset + 'Profile.png'),
    size: 22,
  );
  static ImageIcon rightArrow = ImageIcon(
    AssetImage(asset + 'RightArrow.png'),
    size: 22,
  );
  static ImageIcon leftArrow = ImageIcon(
    AssetImage(asset + 'LeftArrow.png'),
    size: 22,
  );
  static ImageIcon skipBack = ImageIcon(
    AssetImage(asset + 'Skip Back.png'),
    color: AppColors.textWhite,
    size: 36,
  );
  static ImageIcon play = ImageIcon(
    AssetImage(asset + 'Play.png'),
    color: AppColors.textWhite,
    size: 36,
  );
  static ImageIcon skipFwd = ImageIcon(
    AssetImage(asset + 'Skip Fwd.png'),
    color: AppColors.textWhite,
    size: 36,
  );
  static ImageIcon search = ImageIcon(
    AssetImage(asset + 'Search.png'),
    size: 22,
  );
}
