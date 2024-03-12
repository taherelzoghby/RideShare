
import 'package:flutter/material.dart';
import 'package:ride_share/core/constants/strings.dart';
import 'package:ride_share/core/constants/style.dart';

import 'section_info_leading_trailing_info_car.dart';

class SectionCarInfo extends StatelessWidget {
  const SectionCarInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          StringsEn.carInformation,
          style: AppConsts.style20.copyWith(
            color: AppConsts.neutral800,
          ),
        ),
        const AspectRatio(aspectRatio: AppConsts.aspect40on1),
        const SectionLeadingTrailingInfoCar(),
      ],
    );
  }
}
