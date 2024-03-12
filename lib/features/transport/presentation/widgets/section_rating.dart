
import 'package:flutter/material.dart';
import 'package:ride_share/core/constants/strings.dart';
import 'package:ride_share/core/constants/style.dart';

class SectionRating extends StatelessWidget {
  const SectionRating({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.star,
          color: AppConsts.starColor,
        ),
        Text(
          '4.9 (531 ${StringsEn.reviews})',
          style: AppConsts.style16,
        ),
      ],
    );
  }
}
