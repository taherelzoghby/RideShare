
import 'package:flutter/material.dart';
import 'package:ride_share/core/constants/strings.dart';
import 'package:ride_share/core/widgets/text_field.dart';

class SearchFieldHome extends StatelessWidget {
  const SearchFieldHome({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomTextField(
      hint: StringsEn.whereWouldYouGo,
      perfixIcon: Icon(Icons.search),
    );
  }
}
