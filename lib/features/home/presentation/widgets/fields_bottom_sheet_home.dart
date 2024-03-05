
import 'package:flutter/material.dart';
import 'package:ride_share/core/constants/strings.dart';
import 'package:ride_share/core/constants/style.dart';
import 'package:ride_share/core/widgets/text_field.dart';

class FieldsBottomSheetHome extends StatelessWidget {
  const FieldsBottomSheetHome({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomTextField(
          hint: StringsEn.from,
          perfixIcon: const Icon(Icons.location_on_outlined),
          suffixIcon: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.my_location),
          ),
        ),
        const AspectRatio(aspectRatio: AppConsts.aspect40on1),
        const CustomTextField(
          hint: StringsEn.to,
          perfixIcon: Icon(Icons.location_on),
        ),
      ],
    );
  }
}
