import 'package:flutter/material.dart';
import 'package:ride_share/core/constants/style.dart';
import 'section_rating.dart';

class SectionNameRating extends StatelessWidget {
  const SectionNameRating({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Bmw S700',
          style: AppConsts.style24,
        ),
        SectionRating(),
      ],
    );
  }
}
