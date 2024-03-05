import 'package:flutter/material.dart';
import 'package:ride_share/core/constants/strings.dart';
import 'package:ride_share/core/constants/style.dart';
import 'package:ride_share/core/widgets/custom_divider.dart';
import 'package:ride_share/features/home/presentation/widgets/fields_bottom_sheet_home.dart';
import 'recent_places_widget.dart';
import 'top_bottom_sheet_widget.dart';

class BottomSheetHomeSelectAddress extends StatelessWidget {
  const BottomSheetHomeSelectAddress({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return SizedBox(
      height: size.height * .65,
      width: size.width,
      child: Padding(
        padding: AppConsts.mainPadding,
        child: Column(
          children: [
            const TopBottomSheetWidget(),
            Text(
              StringsEn.selectAddress,
              style: AppConsts.style16.copyWith(
                fontWeight: FontWeight.w500,
              ),
            ),
            const AspectRatio(aspectRatio: AppConsts.aspect16on1),
            const FieldsBottomSheetHome(),
            const AspectRatio(aspectRatio: AppConsts.aspect40on1),
            const Row(
              children: [
                Expanded(child: CustomDivider()),
              ],
            ),
            const AspectRatio(aspectRatio: AppConsts.aspect40on1),
            const RecentPlacesWidget(),
          ],
        ),
      ),
    );
  }
}
