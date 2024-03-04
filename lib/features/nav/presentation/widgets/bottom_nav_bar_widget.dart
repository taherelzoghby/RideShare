
import 'package:flutter/material.dart';

import '../../../../core/constants/style.dart';

class BottomNavBarWidget extends StatelessWidget {
  const BottomNavBarWidget({
    super.key,
    required this.label,
     this.icon,
    required this.color,
     this.onTap,
  });
  final String label;
  final IconData? icon;
  final Color color;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: AppConsts.radius25,
      splashColor: AppConsts.mainColor,
      child: Column(
        children: [
          Icon(icon, color: color),
          Text(
            label,
            style: AppConsts.style14.copyWith(color: color),
          ),
        ],
      ),
    );
  }
}
