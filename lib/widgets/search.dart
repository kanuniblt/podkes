import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:podkes/widgets/colors.dart';
import 'package:podkes/widgets/icons.dart';

import 'package:podkes/widgets/texts.dart';

class PodkesSearchField {
  static Container textField = Container(
    child: TextField(
      decoration: InputDecoration(
        suffixIconColor: AppColors.textGrey,
        hintStyle: PodkesTexts.search.style,
        hintText: PodkesTexts.search.data,
        suffixIcon: AppIcons.search,
        border: InputBorder.none,
        contentPadding: EdgeInsets.all(20),
      ),
    ),
    decoration: BoxDecoration(
        color: AppColors.searchBackground,
        borderRadius: BorderRadius.circular(15)),
  );
}
