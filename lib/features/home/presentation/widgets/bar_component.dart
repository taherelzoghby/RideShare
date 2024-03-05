import 'package:flutter/material.dart';

import '../../../../../core/constants/style.dart';

class BarComponent extends StatelessWidget {
  const BarComponent({
    super.key,
    required this.title,
    this.color,
    this.onTap,
  });

  final String title;
  final Color? color;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 500),
        decoration: BoxDecoration(
          color: color,
          borderRadius: AppConsts.radius15,
        ),
        child: Center(
          child: Text(
            title,
            style: AppConsts.style14.copyWith(
              color: color == AppConsts.mainColor2
                  ? AppConsts.white
                  : AppConsts.neutral900,
            ),
          ),
        ),
      ),
    );
  }
}
