import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ride_share/core/constants/style.dart';
import 'package:ride_share/core/widgets/customButton.dart';
import 'package:ride_share/features/auth/presentation/widgets/custom_textfield_password.dart';

import '../../../../core/constants/strings.dart';
import '../../../../core/widgets/text_form_field.dart';
import 'head_phone_verification_widget.dart';

class SetPassBody extends StatelessWidget {
  const SetPassBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppConsts.mainPadding,
      child: ListView(
        children: [
          const AspectRatio(aspectRatio: AppConsts.aspect16on2),
          const Center(
            child: HeadPhoneVerifiWidget(
              head: StringsEn.setPassword,
              subHead: StringsEn.setYourPassword,
            ),
          ),
          const AspectRatio(aspectRatio: AppConsts.aspect16on5),
          CustomTextFieldPassword(
            hint: StringsEn.enterYourPassword,
          ),
          const AspectRatio(aspectRatio: AppConsts.aspect16on1),
          CustomTextFieldPassword(
            hint: StringsEn.confirmPassword,
          ),
          const AspectRatio(aspectRatio: AppConsts.aspect16on13),
          AspectRatio(
            aspectRatio: AppConsts.aspectRatioButtonAuth,
            child: CustomButton(
              text: StringsEn.register,
              onTap: () {},
            ),
          ),
          const AspectRatio(aspectRatio: AppConsts.aspect16on2),
        ],
      ),
    );
  }
}
