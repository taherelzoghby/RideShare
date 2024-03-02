
import 'package:flutter/material.dart';
import 'package:ride_share/core/constants/style.dart';

class HeadLineAuth extends StatelessWidget {
  const HeadLineAuth({super.key, required this.headline});

  final String headline;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return SizedBox(
      width: size.width * .75,
      child: Text(
        headline,
        style: AppConsts.style24.copyWith(color: AppConsts.neutral600),
      ),
    );
  }
}
