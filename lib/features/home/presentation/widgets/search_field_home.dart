import 'package:flutter/material.dart';
import 'package:ride_share/core/constants/strings.dart';
import 'package:ride_share/core/constants/style.dart';
import 'package:ride_share/core/widgets/text_field.dart';

import 'bottom_sheet_select_address_home.dart';

class SearchFieldHome extends StatelessWidget {
  const SearchFieldHome({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomTextField(
      hint: StringsEn.whereWouldYouGo,
      perfixIcon: const Icon(Icons.search),
      readOnly: true,
      onTap: () {
        showModalBottomSheet(
          context: context,
          shape: AppConsts.radiusSheet,
          backgroundColor: AppConsts.white,
          isScrollControlled: true,
          builder: (context) {
            return const BottomSheetHomeSelectAddress();
          },
        );
      },
    );
  }
}
