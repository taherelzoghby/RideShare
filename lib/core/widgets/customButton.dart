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
    return ElevatedButton(
      onPressed: onTap,
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(
          isBorder ? AppConsts.white.withOpacity(.8) : background,
        ),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: AppConsts.radius8,
          ),
        ),
        side: MaterialStateProperty.all(
          isBorder
              ? const BorderSide(color: AppConsts.mainColor)
              : BorderSide.none,
        ),
        elevation: MaterialStateProperty.all(2),
        overlayColor: MaterialStateProperty.all(
          AppConsts.mainColor.withOpacity(.5),
        ),

      ),
      child: Text(
        text,
        style: styleText,
      ),
    );
  }
}
