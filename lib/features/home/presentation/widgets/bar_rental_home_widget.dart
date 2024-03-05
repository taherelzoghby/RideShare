import 'package:flutter/material.dart';
import 'package:ride_share/core/constants/strings.dart';
import 'package:ride_share/core/constants/style.dart';

import 'bar_component.dart';

class BarRentalHomeWidget extends StatefulWidget {
  const BarRentalHomeWidget({super.key});

  @override
  State<BarRentalHomeWidget> createState() => _BarRentalHomeWidgetState();
}

class _BarRentalHomeWidgetState extends State<BarRentalHomeWidget> {
  int active = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: AppConsts.decorationBarRadius15white,
      child: Row(
        children: [
          Expanded(
            child: BarComponent(
              title: StringsEn.transport,
              color: active == 0 ? AppConsts.mainColor2 : null,
              onTap: () => setState(() => active = 0),
            ),
          ),
          Expanded(
            child: BarComponent(
              title: StringsEn.delivery,
              color: active == 1 ? AppConsts.mainColor2 : null,
              onTap: () => setState(() => active = 1),
            ),
          ),
        ],
      ),
    );
  }
}
