import 'package:flutter/material.dart';
import 'package:ride_share/core/constants/strings.dart';
import 'package:ride_share/core/constants/style.dart';
import 'package:ride_share/core/widgets/text_field.dart';

class FieldsBottomSheetHome extends StatefulWidget {
  const FieldsBottomSheetHome({super.key});

  @override
  State<FieldsBottomSheetHome> createState() => _FieldsBottomSheetHomeState();
}

class _FieldsBottomSheetHomeState extends State<FieldsBottomSheetHome> {
  FocusNode firstTextFieldFocusNode = FocusNode();
  FocusNode secondTextFieldFocusNode = FocusNode();

  void _moveToNextField(BuildContext context) {
    FocusScope.of(context).requestFocus(secondTextFieldFocusNode);
  }

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
          focusNode: firstTextFieldFocusNode,
          onEditingComplete: () {
            _moveToNextField(context);
          },
        ),
        const AspectRatio(aspectRatio: AppConsts.aspect40on1),
        CustomTextField(
          hint: StringsEn.to,
          focusNode: secondTextFieldFocusNode,
          perfixIcon: const Icon(Icons.location_on),
        ),
      ],
    );
  }
}
