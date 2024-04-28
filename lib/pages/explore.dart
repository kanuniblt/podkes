import 'package:flutter/material.dart';
import 'package:podkes/widgets/appbar.dart';
import 'package:podkes/widgets/bottomnav.dart';
import 'package:podkes/widgets/category.dart';
import 'package:podkes/widgets/colors.dart';
import 'package:podkes/widgets/podcast.dart';
import 'package:podkes/widgets/search.dart';
import 'package:podkes/widgets/texts.dart';

class ExplorePage extends StatefulWidget {
  const ExplorePage({super.key});

  @override
  State<ExplorePage> createState() => _ExplorePageState();
}

class _ExplorePageState extends State<ExplorePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.mainColor,
      appBar: PodkesAppBar(),
      body: Column(
        children: [
          Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                child: PodkesSearchField.textField,
              )),
          Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(10, 10, 0, 0),
                child: PodkesCategory.category,
              )),
          Expanded(
              flex: 1,
              child: Padding(
                  padding: const EdgeInsets.fromLTRB(20, 0, 10, 0),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        PodkesTexts.trendingText,
                      ]))),
          Expanded(
              flex: 6, child: PodkesMusicListView.podkesMusicListview(context))
        ],
      ),
      bottomNavigationBar: PodkesBottomNavigationBar(),
    );
  }
}
