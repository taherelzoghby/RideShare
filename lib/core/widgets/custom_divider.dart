import 'package:flutter/material.dart';
import 'package:ride_share/core/constants/style.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: AspectRatio(
        aspectRatio: AppConsts.aspect300on1,
        child: Container(color: AppConsts.neutral300),
      ),
    );
  }
}
