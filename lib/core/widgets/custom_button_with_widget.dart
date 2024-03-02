import 'package:flutter/material.dart';
import 'package:ride_share/core/helper/handle_image.dart';

import '../constants/style.dart';

class CustomButtonWithWidget extends StatelessWidget {
  const CustomButtonWithWidget({
    Key? key,
    required this.onTap,
    required this.icon,
    required this.label,
  }) : super(key: key);
  final String icon;
  final String label;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: AppConsts.borderButton,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            HandleImageWidget(image: icon),
            SizedBox(width: size.width * .01),
            Text(
              label,
              style: AppConsts.style14.copyWith(
                color: AppConsts.neutral900,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
