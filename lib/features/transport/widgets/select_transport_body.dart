import 'package:flutter/material.dart';
import 'package:ride_share/core/constants/strings.dart';
import 'package:ride_share/core/constants/style.dart';
import 'section_transports.dart';

class SelectTransportBody extends StatelessWidget {
  const SelectTransportBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const AspectRatio(aspectRatio: AppConsts.aspect16on1),
        Text(
          StringsEn.selectYourTransport,
          style: AppConsts.style20.copyWith(
            color: AppConsts.neutral800,
          ),
        ),
        const AspectRatio(aspectRatio: AppConsts.aspect16on1),
        const SectionTransports(),
      ],
    );
  }
}
