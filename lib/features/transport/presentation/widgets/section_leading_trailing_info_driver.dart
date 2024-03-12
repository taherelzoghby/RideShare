
import 'package:flutter/material.dart';
import 'package:ride_share/core/constants/strings.dart';
import 'package:ride_share/core/constants/style.dart';
import 'package:ride_share/core/widgets/custom_photo.dart';

import 'item_info.dart';

class SectionLeadingTrailingInfoDriver extends StatelessWidget {
  const SectionLeadingTrailingInfoDriver({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        ItemInfo(leading: StringsEn.name, trailing: 'Mohamed'),
        AspectRatio(aspectRatio: AppConsts.aspect40on1),
        ItemInfo(leading: StringsEn.phoneNumber, trailing: '01023412234'),
        AspectRatio(aspectRatio: AppConsts.aspect40on1),
        ItemInfo(
          leading: StringsEn.photo,
          trailingWidget: Expanded(
            child: CustomPhoto(
              image:
              'https://images.pexels.com/photos/614810/pexels-photo-614810.jpeg?cs=srgb&dl=pexels-simon-robben-614810.jpg&fm=jpg',
            ),
          ),
        ),
      ],
    );
  }
}
