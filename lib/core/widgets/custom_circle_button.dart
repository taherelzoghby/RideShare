import 'package:flutter/material.dart';
import 'package:ride_share/core/constants/style.dart';

class CustomCircleButton extends StatelessWidget {
  const CustomCircleButton({
    super.key,
    this.onTap,
    required this.icon,
    this.color,
    this.colorIcon,
  });

  final Widget icon;
  final void Function()? onTap;
  final Color? color;
  final Color? colorIcon;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: AppConsts.radius8,
      child: Container(
        decoration: BoxDecoration(
          color: color,
          borderRadius: AppConsts.radius8,
          border: Border.all(color: color ?? AppConsts.neutral300),
        ),
        child: Padding(
          padding: AppConsts.allPadding8,
          child: Center(child: icon),
        ),
      ),
    );
  }
}
