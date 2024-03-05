import 'package:flutter/material.dart';
import 'package:ride_share/core/constants/style.dart';
import 'package:ride_share/core/widgets/custom_divider.dart';

import 'fields_bottom_sheet_home.dart';
import 'recent_places_widget.dart';

class GetLocationFromUserWidget extends StatelessWidget {
  const GetLocationFromUserWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Expanded(
      child: Column(
        children: [
          AspectRatio(aspectRatio: AppConsts.aspect16on1),
          FieldsBottomSheetHome(),
          AspectRatio(aspectRatio: AppConsts.aspect40on1),
          Row(
            children: [
              Expanded(child: CustomDivider(height: 1)),
            ],
          ),
          AspectRatio(aspectRatio: AppConsts.aspect40on1),
          RecentPlacesWidget(),
        ],
      ),
    );
  }
}
