import 'package:flutter/material.dart';
import 'package:ride_share/core/constants/style.dart';

import '../../../../core/constants/strings.dart';
import 'custom_textfield_password.dart';

class SectionFieldsSetPassword extends StatelessWidget {
  const SectionFieldsSetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomTextFieldPassword(
          hint: StringsEn.enterYourPassword,
        ),
        AspectRatio(aspectRatio: AppConsts.aspect16on1),
        CustomTextFieldPassword(
          hint: StringsEn.confirmPassword,
        ),
      ],
    );
  }
}
