import 'package:flutter/material.dart';
import 'package:ride_share/core/constants/style.dart';

import 'headline_auth_widget.dart';

class HeadPhoneVerifiWidget extends StatelessWidget {
  const HeadPhoneVerifiWidget({
    super.key,
    required this.head,
    required this.subHead,
    this.crossAxisAlignment,
    this.headIsCenter,
  });

  final String head;
  final String subHead;
  final CrossAxisAlignment? crossAxisAlignment;
  final bool? headIsCenter;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: crossAxisAlignment ?? CrossAxisAlignment.center,
      children: [
        HeadLineAuthSignUp(
          headline: head,
          isCenter: headIsCenter ?? true,
        ),
        Text(
          subHead,
          style: AppConsts.style14,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
