import 'package:flutter/material.dart';
import 'package:ride_share/core/constants/style.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.sizeOf(context).height * .005,
      decoration: BoxDecoration(
        borderRadius: AppConsts.radius15,
        color: AppConsts.neutral300,
      ),
    );
  }
}
