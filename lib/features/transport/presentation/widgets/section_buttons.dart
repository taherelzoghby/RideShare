
import 'package:flutter/material.dart';
import 'package:ride_share/core/constants/strings.dart';
import 'package:ride_share/core/constants/style.dart';
import 'package:ride_share/core/widgets/customButton.dart';

class SectionButtons extends StatelessWidget {
  const SectionButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Spacer(),
        Expanded(
          flex: 12,
          child: CustomButton(
            text: StringsEn.bookLater,
            onTap: () {},
            background: AppConsts.white.withOpacity(.5),
            styleText: AppConsts.style16.copyWith(
              color: AppConsts.mainColor,
            ),
            isBorder: true,
          ),
        ),
        const Spacer(),
        Expanded(
          flex: 12,
          child: CustomButton(
            text: StringsEn.rideNow,
            onTap: () {},
          ),
        ),
        const Spacer(),
      ],
    );
  }
}
