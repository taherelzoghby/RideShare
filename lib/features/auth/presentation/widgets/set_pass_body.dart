import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ride_share/core/constants/routesPage.dart';
import 'package:ride_share/core/constants/style.dart';
import 'package:ride_share/core/widgets/customButton.dart';

import '../../../../core/constants/strings.dart';
import 'head_phone_verification_widget.dart';
import 'section_set_password_fields.dart';

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
          const SectionFieldsSetPassword(),
          const AspectRatio(aspectRatio: AppConsts.aspect16on13),
          AspectRatio(
            aspectRatio: AppConsts.aspectRatioButtonAuth,
            child: CustomButton(
              text: StringsEn.register,
              onTap: () => GoRouter.of(context).push(profilePath),
            ),
          ),
          const AspectRatio(aspectRatio: AppConsts.aspect16on2),
        ],
      ),
    );
  }
}
