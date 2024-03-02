import 'package:flutter/material.dart';
import 'package:ride_share/core/constants/strings.dart';
import 'package:ride_share/core/constants/style.dart';

import 'enum.dart';

List<Gender> genders = <Gender>[
  Gender.Male,
  Gender.Female,
];
List<TextSpan> childrenTerms = const [
  TextSpan(text: StringsEn.bySigningUp1),
  TextSpan(
    text: StringsEn.bySigningUp2,
    style: TextStyle(color: AppConsts.mainColor),
  ),
  TextSpan(text: StringsEn.bySigningUp3),
  TextSpan(
    text: StringsEn.bySigningUp4,
    style: TextStyle(color: AppConsts.mainColor),
  ),
];
List<DropdownMenuItem<Gender>> genderList = genders
    .map<DropdownMenuItem<Gender>>(
      (Gender item) => DropdownMenuItem<Gender>(
        value: item,
        child: Text(item.name),
      ),
    )
    .toList();
