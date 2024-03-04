import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:ride_share/core/constants/routesPage.dart';
import 'package:ride_share/core/constants/strings.dart';
import 'package:ride_share/core/constants/style.dart';
import 'package:ride_share/core/widgets/customButton.dart';

class SectionButtonsProfile extends StatelessWidget {
  const SectionButtonsProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: AppConsts.aspect16on2,
      child: Row(
        children: [
          Expanded(
            child: CustomButton(
              text: StringsEn.cancel,
              onTap: () {},
              background: AppConsts.white,
              isBorder: true,
              styleText: AppConsts.style16,
            ),
          ),
          SizedBox(width: MediaQuery.of(context).size.width * .02),
          Expanded(
            child: CustomButton(
              text: StringsEn.save,
              onTap: ()=>GoRouter.of(context).go(navPath),
            ),
          ),
        ],
      ),
    );
  }
}
