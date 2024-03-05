import 'package:flutter/material.dart';
import 'package:ride_share/core/constants/style.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({super.key, this.height});

  final double? height;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height ?? MediaQuery.sizeOf(context).height * .005,
      decoration: BoxDecoration(
        borderRadius: AppConsts.radius15,
        color: AppConsts.neutral300,
      ),
    );
  }
}
