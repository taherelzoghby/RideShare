
import 'package:flutter/material.dart';
import 'package:ride_share/core/constants/style.dart';
import 'package:ride_share/core/widgets/custom_circle_button.dart';

class TopHomeWidget extends StatelessWidget {
  const TopHomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppConsts.mainPadding,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomCircleButton(
            icon: const Icon(Icons.dehaze),
            color: AppConsts.mainColor,
            colorIcon: AppConsts.neutral800,
            onTap: () {},
          ),
          CustomCircleButton(
            icon: const Icon(Icons.notifications),
            color: AppConsts.white,
            colorIcon: AppConsts.neutral800,
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
