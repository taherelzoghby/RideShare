import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:ride_share/core/constants/strings.dart';
import 'package:ride_share/core/constants/style.dart';
import 'package:ride_share/core/widgets/text_form_field.dart';

import '../../../../core/constants/data.dart';
import '../../../../core/constants/enum.dart';

class SectionFieldsSignUp extends StatelessWidget {
  const SectionFieldsSignUp({super.key});

  @override
  Widget build(BuildContext context) {

    return Column(
      children: [
        CustomTextFormField(hint: StringsEn.name),
        const AspectRatio(aspectRatio: AppConsts.aspect16on1),
        CustomTextFormField(hint: StringsEn.email),
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
        CustomTextFormField(
          suffixIcon: Padding(
            padding: AppConsts.mainPadding,
            child: DropdownButton<Gender>(
              hint: Text(
                'gender',
                style: AppConsts.style14.copyWith(
                  fontWeight: FontWeight.w400,
                ),
              ),
              underline: Container(),
              isExpanded: true,
              icon: const Icon(Icons.keyboard_arrow_down_outlined),
              onChanged: (Gender? value) {},
              items: genderList,
            ),
          ),
          readOnly: true,
          hint: StringsEn.gender,
        ),
      ],
    );
  }
}
