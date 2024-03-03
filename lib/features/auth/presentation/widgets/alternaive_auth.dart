import 'package:flutter/material.dart';
import 'package:ride_share/core/constants/style.dart';

class AlternativeAuth extends StatelessWidget {
  const AlternativeAuth({
    super.key,
    required this.label,
    required this.trailing,
    this.trailOnTap,
  });

  final String label;
  final String trailing;
  final void Function()? trailOnTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          label,
          style: AppConsts.style14,
        ),
        TextButton(
          onPressed: trailOnTap,
          child: Text(
            trailing,
            style: AppConsts.style14.copyWith(
              color: AppConsts.mainColor,
            ),
          ),
        ),
      ],
    );
  }
}
