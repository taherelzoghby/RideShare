
import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:ride_share/core/constants/strings.dart';
import 'package:ride_share/core/constants/style.dart';
import 'package:ride_share/core/widgets/text_form_field.dart';

class SectionFieldsProfile extends StatelessWidget {
  const SectionFieldsProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomTextFormField(hint: StringsEn.fullName),
        const AspectRatio(aspectRatio: AppConsts.aspect16on1),
        CustomTextFormField(
          hint: StringsEn.yourMobilePhone,
          perfixIcon: CountryCodePicker(
            initialSelection: StringsEn.eg,
            flagWidth: 25,
            onChanged: (CountryCode code) {},
            showDropDownButton: true,
            showCountryOnly: true,
            showOnlyCountryWhenClosed: true,
            showFlagDialog: true,
            hideMainText: true,
            showFlagMain: true,
          ),
        ),
        const AspectRatio(aspectRatio: AppConsts.aspect16on1),
        CustomTextFormField(hint: StringsEn.email),
        const AspectRatio(aspectRatio: AppConsts.aspect16on1),
        CustomTextFormField(hint: StringsEn.street),
        const AspectRatio(aspectRatio: AppConsts.aspect16on1),
        CustomTextFormField(hint: StringsEn.city),
      ],
    );
  }
}
