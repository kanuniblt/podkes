import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:podkes/pages/explore.dart';
import 'package:podkes/widgets/card.dart';
import 'package:podkes/widgets/colors.dart';
import 'package:podkes/widgets/icons.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final PageController pageController = PageController(initialPage: 0);
  int activePage = 0;

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.mainColor,
      body: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
        Spacer(
          flex: 4,
        ),
        SizedBox(
          height: 500,
          width: 100.w,
          child: PageView(
            onPageChanged: (int page) {
              setState(() {
                activePage = page;
              });
            },
            controller: pageController,
            children: [
              PodkesCard.gettingStartedCard,
              PodkesCard.gettingStartedCard,
              PodkesCard.gettingStartedCard,
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
          child: DotsIndicator(
            position: activePage,
            dotsCount: 3,
            decorator: DotsDecorator(
              size: const Size.square(6.0),
              activeSize: const Size(18.0, 9.0),
              activeShape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0)),
            ),
          ),
        ),
        Spacer(
          flex: 6,
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 0, 0, 30),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Container(
                height: 60,
                width: 60,
                color: AppColors.textWhite,
                child: IconButton(
                  onPressed: () {
                    setState(() {
                      if (activePage < 2) {
                        pageController.nextPage(
                            duration: Duration(milliseconds: 400),
                            curve: Curves.easeIn);
                        activePage = activePage + 1;
                      } else {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => ExplorePage()));
                      }
                    });
                  },
                  icon: AppIcons.rightArrow,
                  color: AppColors.purple,
                )),
          ),
        )
      ]),
    );
  }
}
