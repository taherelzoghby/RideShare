import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ride_share/core/constants/routesPage.dart';
import 'package:ride_share/core/constants/strings.dart';
import 'package:ride_share/core/constants/style.dart';
import 'package:ride_share/core/widgets/customButton.dart';
import 'package:ride_share/features/auth/presentation/widgets/signin_or_signup_with_other_account.dart';

import 'alternaive_auth.dart';
import 'headline_auth_widget.dart';
import 'section_fields_sign_in.dart';
import 'sign_with_other_account.dart';

class SignInBody extends StatelessWidget {
  const SignInBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppConsts.mainPadding,
      child: Column(
        children: [
          const AspectRatio(aspectRatio: AppConsts.aspect16on2),
          const Align(
            alignment: Alignment.centerLeft,
            child: HeadLineAuthSignUp(
              headline: StringsEn.signInWithEmailOrPhoneNumber,
            ),
          ),
          const AspectRatio(aspectRatio: AppConsts.aspect16on1),
          const SectionFieldsSignIn(),
          const Spacer(),
          AspectRatio(
            aspectRatio: AppConsts.aspectRatioButtonAuth,
            child: CustomButton(
              text: StringsEn.signIn,
              onTap: ()=>GoRouter.of(context).go(navPath),
            ),
          ),
          const OrWidget(),
          const SignWithGoogleAndFaceBookWidget(),
          AlternativeAuth(
            label: StringsEn.dontHaveAnAccount,
            trailing: StringsEn.signUp,
            trailOnTap: () => GoRouter.of(context).push(signUpPath),
          ),
        ],
      ),
    );
  }
}
