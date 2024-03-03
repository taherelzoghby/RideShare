import 'package:flutter/material.dart';
import 'package:ride_share/core/constants/style.dart';

class HeadLineAuthSignUp extends StatelessWidget {
  const HeadLineAuthSignUp({
    super.key,
    required this.headline,
    this.isCenter = false,
  });

  final String headline;
  final bool isCenter;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return SizedBox(
      width: size.width * .75,
      child: Text(
        headline,
        style: AppConsts.style24.copyWith(color: AppConsts.neutral600),
        textAlign: isCenter ? TextAlign.center : null,
      ),
    );
  }
}
