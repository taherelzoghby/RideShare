import 'package:flutter/cupertino.dart';
import 'package:ride_share/core/constants/style.dart';
import 'package:ride_share/features/transport/presentation/widgets/section_information.dart';

import 'section_name_rating.dart';
import 'section_vehicles.dart';

class VehicleDetailsBody extends StatelessWidget {
  const VehicleDetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: AppConsts.mainPadding,
      child: Column(
        children: [
          AspectRatio(aspectRatio: AppConsts.aspect20on2),
          SectionNameRating(),
          AspectRatio(aspectRatio: AppConsts.aspect20on2),
          SectionVehicles(),
          AspectRatio(aspectRatio: AppConsts.aspect20on2),
          SectionInformation(),
          AspectRatio(aspectRatio: AppConsts.aspect16on1),
        ],
      ),
    );
  }
}
