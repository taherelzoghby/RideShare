
import 'package:flutter/material.dart';
import 'package:ride_share/core/constants/strings.dart';
import 'package:ride_share/core/constants/style.dart';

import 'section_leading_trailing_info_driver.dart';

class SectionDriverInfo extends StatelessWidget {
  const SectionDriverInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          StringsEn.driverInformation,
          style: AppConsts.style20.copyWith(
            color: AppConsts.neutral800,
          ),
        ),
        const AspectRatio(aspectRatio: AppConsts.aspect40on1),
        const SectionLeadingTrailingInfoDriver(),
      ],
    );
  }
}
