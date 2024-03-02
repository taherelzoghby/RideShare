import 'package:flutter/material.dart';
import 'package:ride_share/core/constants/style.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.text,
    required this.onTap,
    this.background = AppConsts.mainColor,
    this.isBorder = false,
    this.styleText = AppConsts.style16White,
  });

  final String text;
  final Color background;
  final bool isBorder;
  final Function() onTap;
  final TextStyle styleText;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: AppConsts.radius8,
      child: Container(
        decoration: BoxDecoration(
          color: background,
          borderRadius: AppConsts.radius8,
          border: isBorder ? Border.all(color: AppConsts.mainColor) : null,
        ),
        child: Center(
          child: Text(
            text,
            style: styleText,
          ),
        ),
      ),
    );
  }
}
