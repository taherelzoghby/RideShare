import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ride_share/core/constants/style.dart';
import 'package:ride_share/features/transport/presentation/widgets/section_buttons.dart';
import 'content_details_vehicle.dart';

class VehicleDetailsBody extends StatelessWidget {
  const VehicleDetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: AppConsts.mainPadding,
      child: Column(
        children: [
          ContentDetailsVehicle(),
          AspectRatio(aspectRatio: AppConsts.aspect16on1),
          SectionButtons(),
          AspectRatio(aspectRatio: AppConsts.aspect40on1),
        ],
      ),
    );
  }
}
