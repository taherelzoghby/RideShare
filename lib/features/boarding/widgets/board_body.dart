import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ride_share/core/constants/assets.dart';
import 'package:ride_share/core/constants/strings.dart';
import 'package:ride_share/core/constants/style.dart';

import 'board_structure.dart';

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

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(
      children: [
        ///page view
        Padding(
          padding: AppConsts.mainPadding,
          child: PageView(
            controller: pageController,
            onPageChanged: (int index) => setState(
              () => currentPage = index,
            ),
            children: const [
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
            ],
          ),
        ),

        ///appbar
        Padding(
          padding: AppConsts.mainPadding,
          child: Align(
            alignment: Alignment.topRight,
            child: TextButton(
              onPressed: () => GoRouter.of(context).pushReplacement(''),
              child: const Text(StringsEn.skip, style: AppConsts.style16),
            ),
          ),
        ),

        ///go
        Positioned(
          width: size.width,
          bottom: size.height * .07,
          child: Align(
            alignment: Alignment.center,
            child: Padding(
              padding: AppConsts.allPadding8,
              child: AspectRatio(
                aspectRatio: AppConsts.aspectRatioButtonAuth,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text('go'),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
