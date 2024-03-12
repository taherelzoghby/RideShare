import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ride_share/core/constants/style.dart';

import 'section_car_info.dart';
import 'section_driver_info.dart';

class SectionInformation extends StatelessWidget {
  const SectionInformation({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        children: const [
          SectionCarInfo(),
          AspectRatio(aspectRatio: AppConsts.aspect16on1),
          SectionDriverInfo(),
        ],
      ),
    );
  }
}
