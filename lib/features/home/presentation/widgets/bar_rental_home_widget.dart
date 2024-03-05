import 'package:flutter/material.dart';
import 'package:ride_share/core/constants/strings.dart';
import 'package:ride_share/core/constants/style.dart';

import 'bar_component.dart';

class BarRentalHomeWidget extends StatelessWidget {
  const BarRentalHomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const BarComponent(
      title: StringsEn.transport,
      color: AppConsts.mainColor2,
    );
  }
}
