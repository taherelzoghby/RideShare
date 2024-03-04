
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ride_share/core/constants/routesPage.dart';
import 'package:ride_share/core/constants/strings.dart';
import 'package:ride_share/core/constants/style.dart';
import 'package:ride_share/core/widgets/customButton.dart';

class ButtonsWelcomeScreen extends StatelessWidget {
  const ButtonsWelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppConsts.mainPadding,
      child: Column(
        children: [
          AspectRatio(
            aspectRatio: AppConsts.aspectRatioButtonAuth,
            child: CustomButton(
              text: StringsEn.createAnAccount,
              onTap: () =>GoRouter.of(context).push(signUpPath),
            ),
          ),
          const AspectRatio(aspectRatio: AppConsts.aspect16on1),
          AspectRatio(
            aspectRatio: AppConsts.aspectRatioButtonAuth,
            child: CustomButton(
              text: StringsEn.logIn,
              onTap: () =>GoRouter.of(context).push(signInPath),
              background: AppConsts.white,
              isBorder: true,
              styleText: AppConsts.style16.copyWith(
                color: AppConsts.mainColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
