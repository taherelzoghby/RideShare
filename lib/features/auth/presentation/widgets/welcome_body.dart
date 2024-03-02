import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ride_share/core/constants/assets.dart';
import 'package:ride_share/core/constants/strings.dart';
import 'package:ride_share/core/constants/style.dart';
import 'package:ride_share/features/boarding/presentation/widgets/board_structure.dart';

import 'buttons_welcome_screen.dart';

class WelcomeBody extends StatelessWidget {
  const WelcomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        AspectRatio(aspectRatio: AppConsts.aspect16on2),
        AspectRatio(
          aspectRatio: AppConsts.aspect2point5on3,
          child: BoardStructure(
            scroll: false,
            image: Assets.imagesWelcomeScreen,
            subTitle: StringsEn.haveBetterSharingExperience,
            title: StringsEn.welcome,
          ),
        ),
        AspectRatio(aspectRatio: AppConsts.aspect16on3),
        ButtonsWelcomeScreen(),
        AspectRatio(aspectRatio: AppConsts.aspect16on3),
      ],
    );
  }
}
