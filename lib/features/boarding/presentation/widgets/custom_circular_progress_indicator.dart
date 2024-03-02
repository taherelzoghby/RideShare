import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:ride_share/core/constants/style.dart';

import '../../../../core/constants/strings.dart';

class CustomCircularPercentIndicator extends StatelessWidget {
  const CustomCircularPercentIndicator({
    super.key,
    required this.currentPage,
  });

  final int currentPage;

  @override
  Widget build(BuildContext context) {
    return CircularPercentIndicator(
      radius: 60.0,
      lineWidth: 7.0,
      percent: (currentPage + 1) / 3,
      progressColor: AppConsts.mainColor,
      center: currentPage == 2
          ? Text(
              StringsEn.go,
              style: AppConsts.style24.copyWith(
                color: AppConsts.neutral600,
              ),
            )
          : const Icon(Icons.arrow_forward, size: 35),
    );
  }
}
