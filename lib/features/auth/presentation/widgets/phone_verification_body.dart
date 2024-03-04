import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:ride_share/core/constants/routesPage.dart';
import 'package:ride_share/core/constants/strings.dart';
import 'package:ride_share/core/constants/style.dart';
import 'package:ride_share/core/widgets/customButton.dart';

import 'alternaive_auth.dart';
import 'head_phone_verification_widget.dart';
import 'section_otp.dart';

class PhoneVerificationBody extends StatelessWidget {
  const PhoneVerificationBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppConsts.mainPadding,
      child: Column(
        children: [
          const AspectRatio(aspectRatio: AppConsts.aspect16on2),
          const Center(
            child: HeadPhoneVerifiWidget(
              head: StringsEn.phoneVerification,
              subHead: StringsEn.enterYourOtpCode,
            ),
          ),
          const AspectRatio(aspectRatio: AppConsts.aspect16on5),
          const SectionOtp(),
          const AlternativeAuth(
            label: StringsEn.didntReceiveCode,
            trailing: StringsEn.resendAgain,
          ),
          const Spacer(),
          AspectRatio(
            aspectRatio: AppConsts.aspectRatioButtonAuth,
            child: CustomButton(
              text: StringsEn.verify,
              onTap: () => GoRouter.of(context).push(setPasswordPass),
            ),
          ),
          const AspectRatio(aspectRatio: AppConsts.aspect16on2),
        ],
      ),
    );
  }
}
