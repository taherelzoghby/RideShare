import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ride_share/core/constants/routesPage.dart';
import 'package:ride_share/core/constants/strings.dart';
import 'package:ride_share/core/constants/style.dart';
import 'package:ride_share/core/widgets/text_form_field.dart';

class SectionFieldsSignIn extends StatelessWidget {
  const SectionFieldsSignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomTextFormField(hint: StringsEn.emailOrPhoneNumber),
        const AspectRatio(aspectRatio: AppConsts.aspect16on1),
        CustomTextFormField(hint: StringsEn.enterYourPassword),
        Align(
          alignment: Alignment.centerRight,
          child: TextButton(
            onPressed: () => GoRouter.of(context).push(
              phoneAndEmailVerificationPath,
            ),
            child: Text(
              StringsEn.forgetPassword,
              style: AppConsts.style14.copyWith(
                color: AppConsts.mainColor,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
