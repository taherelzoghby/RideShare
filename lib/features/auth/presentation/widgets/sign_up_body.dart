import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ride_share/core/constants/strings.dart';
import 'package:ride_share/core/constants/style.dart';
import 'package:ride_share/features/auth/presentation/widgets/section_fields_sign_up.dart';
import 'package:ride_share/features/auth/presentation/widgets/sign_with_other_account.dart';
import 'package:ride_share/features/auth/presentation/widgets/signin_or_signup_with_other_account.dart';
import '../../../../core/widgets/customButton.dart';
import 'alternaive_auth.dart';
import 'headline_auth_widget.dart';
import 'terms_widget.dart';

class SignUpBody extends StatelessWidget {
  const SignUpBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppConsts.mainPadding,
      child: ListView(
        children: [
          const AspectRatio(aspectRatio: AppConsts.aspect16on2),
          const Align(
            alignment: Alignment.centerLeft,
            child: HeadLineAuth(
              headline: StringsEn.signUpWithYourEmailOrPhoneNumber,
            ),
          ),
          const AspectRatio(aspectRatio: AppConsts.aspect16on1),
          const SectionFieldsSignUp(),
          const AspectRatio(aspectRatio: AppConsts.aspect40on1),
          const TermsWidget(),
          const AspectRatio(aspectRatio: AppConsts.aspect16on2),
          AspectRatio(
            aspectRatio: AppConsts.aspectRatioButtonAuth,
            child: CustomButton(
              text: StringsEn.signUp,
              onTap: () => GoRouter.of(context).push(''),
            ),
          ),
          const OrWidget(),
          const SignWithGoogleAndFaceBookWidget(),
          const AlternativeAuth(),
        ],
      ),
    );
  }
}
