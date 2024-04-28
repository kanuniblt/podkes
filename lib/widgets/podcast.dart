import 'package:flutter/material.dart';
import 'package:podkes/widgets/card.dart';

import 'package:responsive_sizer/responsive_sizer.dart';

class PodkesMusicListView {
  static GridView podkesMusicListview(BuildContext context) => GridView(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisExtent: Adaptive.w(65),
            mainAxisSpacing: 0,
            crossAxisSpacing: 0),
        shrinkWrap: true,
        physics: ScrollPhysics(),
        children: [
          PodkesCard.podkesCard1(context),
          PodkesCard.podkesCard2(context),
          PodkesCard.podkesCard3(context),
          PodkesCard.podkesCard4(context),
        ],
      );
}
