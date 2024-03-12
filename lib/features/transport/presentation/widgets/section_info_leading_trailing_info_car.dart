
import 'package:flutter/material.dart';
import 'package:ride_share/core/constants/strings.dart';
import 'package:ride_share/core/constants/style.dart';
import 'package:ride_share/core/widgets/custom_photo.dart';

import 'item_info.dart';

class SectionLeadingTrailingInfoCar extends StatelessWidget {
  const SectionLeadingTrailingInfoCar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        ItemInfo(leading: StringsEn.model, trailing: 'Bmw 2020'),
        AspectRatio(aspectRatio: AppConsts.aspect40on1),
        ItemInfo(leading: StringsEn.color, trailing: 'Red'),
        AspectRatio(aspectRatio: AppConsts.aspect40on1),
        ItemInfo(
          leading: StringsEn.drivingLicense,
          trailingWidget: Expanded(
            child: CustomPhoto(
              image:
              'https://road-safety.transport.ec.europa.eu/sites/default/files/styles/embed_medium/public/2021-07/driving_license_new.jpg?itok=AKK5Q7Rh',
            ),
          ),
        ),
      ],
    );
  }
}
