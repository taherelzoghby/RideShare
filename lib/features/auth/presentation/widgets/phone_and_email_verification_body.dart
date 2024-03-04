import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ride_share/core/constants/routesPage.dart';
import 'package:ride_share/core/constants/strings.dart';
import 'package:ride_share/core/constants/style.dart';
import 'package:ride_share/core/widgets/customButton.dart';

import 'headline_auth_widget.dart';
import 'section_fields_phone_and_email_verification.dart';

class PhoneAndEmailVerificationBody extends StatelessWidget {
  const PhoneAndEmailVerificationBody({super.key});

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
              headline: StringsEn.verificationEmailOrPhoneNumber,
            ),
          ),
          const AspectRatio(aspectRatio: AppConsts.aspect16on1),
          const SectionFieldsVerificationEmailAndPhone(),
          const Spacer(),
          AspectRatio(
            aspectRatio: AppConsts.aspectRatioButtonAuth,
            child: CustomButton(
              text: StringsEn.sendOtp,
              onTap: () => GoRouter.of(context).push(phoneVerificationPath),
            ),
          ),
          const AspectRatio(aspectRatio: AppConsts.aspect16on3),
        ],
      ),
    );
  }
}
