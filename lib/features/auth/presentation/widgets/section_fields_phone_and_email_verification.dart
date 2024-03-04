
import 'package:flutter/material.dart';
import 'package:ride_share/core/constants/strings.dart';
import 'package:ride_share/core/widgets/text_form_field.dart';

class SectionFieldsVerificationEmailAndPhone extends StatelessWidget {
  const SectionFieldsVerificationEmailAndPhone({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomTextFormField(
      hint: StringsEn.emailOrPhoneNumber,
    );
  }
}
