import 'package:flutter/material.dart';
import 'package:ride_share/core/constants/style.dart';

import 'section_information.dart';
import 'section_name_rating.dart';
import 'section_vehicles.dart';

class ContentDetailsVehicle extends StatelessWidget {
  const ContentDetailsVehicle({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        children: const [
          AspectRatio(aspectRatio: AppConsts.aspect20on2),
          SectionNameRating(),
          AspectRatio(aspectRatio: AppConsts.aspect20on2),
          SectionVehicles(),
          AspectRatio(aspectRatio: AppConsts.aspect20on2),
          SectionInformation(),
        ],
      ),
    );
  }
}
