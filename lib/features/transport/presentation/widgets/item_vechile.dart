import 'package:flutter/material.dart';
import 'package:ride_share/core/constants/style.dart';

import '../../domain/entities/vechile_intity.dart';
import 'info_item_vechile.dart';
import 'section_buttons.dart';

class ItemVehicle extends StatelessWidget {
  const ItemVehicle({
    super.key,
    required this.vech,
    required this.vehicleEntity,
  });

  final String vech;
  final VehicleEntity vehicleEntity;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppConsts.allPadding8,
      child: AspectRatio(
        aspectRatio: AppConsts.aspect16on7,
        child: Container(
          decoration: AppConsts.decorationRentalWidgetHome.copyWith(
            color: AppConsts.mainColor.withOpacity(.01),
          ),
          child: const Padding(
            padding: AppConsts.allPadding8,
            child: Column(
              children: [
                Expanded(
                  flex: 3,
                  child: InfoItemVechile(),
                ),
                AspectRatio(aspectRatio: AppConsts.aspect40on1),
                Expanded(
                  flex: 2,
                  child: SectionButtons(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
