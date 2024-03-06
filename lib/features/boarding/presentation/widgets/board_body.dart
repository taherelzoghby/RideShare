import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ride_share/core/constants/assets.dart';
import 'package:ride_share/core/constants/routesPage.dart';
import 'package:ride_share/core/constants/strings.dart';
import 'package:ride_share/core/constants/style.dart';

import 'board_structure.dart';
import 'custom_circular_progress_indicator.dart';

class OnBoardingBody extends StatefulWidget {
  const OnBoardingBody({super.key});

  @override
  State<OnBoardingBody> createState() => _OnBoardingBodyState();
}

class _OnBoardingBodyState extends State<OnBoardingBody> {
  final PageController pageController = PageController();
  int currentPage = 0;

  ///dispose page controller
  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  List<Widget> children = const [
    BoardStructure(
      image: Assets.imagesBoard1,
      subTitle: StringsEn.subTitleBoard1,
      title: StringsEn.titleBoard1,
    ),
    BoardStructure(
      image: Assets.imagesBoard2,
      subTitle: StringsEn.subTitleBoard2,
      title: StringsEn.titleBoard2,
    ),
    BoardStructure(
      image: Assets.imagesBoard3,
      subTitle: StringsEn.subTitleBoard3,
      title: StringsEn.titleBoard3,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Stack(
      children: [
        ///page view
        PageView(
          controller: pageController,
          onPageChanged: (int index) => setState(
            () => currentPage = index,
          ),
          children: children,
        ),

        ///appbar
        Padding(
          padding: AppConsts.mainPadding,
          child: Padding(
            padding: AppConsts.topPadding20,
            child: Align(
              alignment: Alignment.topRight,
              child: TextButton(
                onPressed: () => GoRouter.of(context).go(welcomePath),
                child: const Text(StringsEn.skip, style: AppConsts.style16),
              ),
            ),
          ),
        ),

        ///go
        Positioned(
          right: 0,
          left: 0,
          bottom: size.height * .07,
          child: GestureDetector(
            onTap: changePage,
            child: CustomCircularPercentIndicator(currentPage: currentPage),
          ),
        ),
      ],
    );
  }

  void changePage() {
    if (currentPage == 0) {
      pageController.animateToPage(
        1,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeIn,
      );
    } else if (currentPage == 1) {
      pageController.animateToPage(
        2,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeIn,
      );
    } else {
      GoRouter.of(context).go(welcomePath);
    }
  }
}
