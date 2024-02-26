import 'package:flutter/material.dart';
import 'package:ride_share/core/constants/style.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.text,
    required this.onTap,
    this.background = AppConsts.primary500,
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
      borderRadius: BorderRadius.circular(15),
      child: Container(
        decoration: BoxDecoration(
          color: background,
          borderRadius: BorderRadius.circular(25),
          //border: isBorder ? Border.all(color: AppConsts.grey) : null,
          //boxShadow: AppConsts.boxShadows,
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
