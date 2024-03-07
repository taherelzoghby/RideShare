import 'package:flutter/material.dart';
import 'package:ride_share/core/constants/assets.dart';

import '../../../../core/constants/style.dart';
import '../../../../core/helper/handle_image.dart';
import 'away_from_widget.dart';

class InfoItemVechile extends StatelessWidget {
  const InfoItemVechile({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 2,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'BMW Cabrio',
                style: AppConsts.style16.copyWith(
                  color: AppConsts.neutral800,
                ),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              Text(
                'Automatic   |   3 seats   |   Octane',
                style: AppConsts.style14,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              Expanded(
                child: AwayFromWidget(
                  meter: 700, durationAway: '15 min',
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: HandleImageWidget(
            image: Assets.imagesCar3Png,
          ),
        ),
      ],
    );
  }
}
