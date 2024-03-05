import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:ride_share/core/constants/routesPage.dart';
import 'package:ride_share/core/constants/strings.dart';
import 'package:ride_share/core/constants/style.dart';
import 'package:ride_share/core/widgets/customButton.dart';
import 'package:ride_share/core/widgets/custom_divider.dart';

import 'complete_address_widget.dart';
import 'get_location_from_user_widget.dart';
import 'top_bottom_sheet_widget.dart';

class BottomSheetHomeSelectAddress extends StatefulWidget {
  const BottomSheetHomeSelectAddress({super.key});

  @override
  State<BottomSheetHomeSelectAddress> createState() =>
      _BottomSheetHomeSelectAddressState();
}

class _BottomSheetHomeSelectAddressState
    extends State<BottomSheetHomeSelectAddress> {
  int current = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppConsts.mainPadding,
      child: SizedBox(
        height: MediaQuery.of(context).size.height * .7,
        child: Column(
          children: [
            const TopBottomSheetWidget(),
            Text(
              StringsEn.selectAddress,
              style: AppConsts.style16.copyWith(
                fontWeight: FontWeight.w500,
              ),
            ),
            const AspectRatio(aspectRatio: AppConsts.aspect40on1),
            const Row(
              children: [
                Expanded(child: CustomDivider(height: 1)),
              ],
            ),
            current == 0
                ? const GetLocationFromUserWidget()
                : const CompleteAddressWidget(),
            const AspectRatio(aspectRatio: AppConsts.aspect40on1),
            AspectRatio(
              aspectRatio: AppConsts.aspectRatioButtonAuth,
              child: CustomButton(
                text: current == 0
                    ? StringsEn.confirm
                    : StringsEn.confirmLocation,
                onTap: () {
                  current == 0
                      ? setState(() => current = 1)
                      : GoRouter.of(context).push(selectTransportPath);
                },
              ),
            ),
            const AspectRatio(aspectRatio: AppConsts.aspect40on1),
          ],
        ),
      ),
    );
  }
}
