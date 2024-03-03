
import 'package:flutter/material.dart';
import 'package:ride_share/core/constants/style.dart';

import 'headline_auth_widget.dart';

class HeadPhoneVerifiWidget extends StatelessWidget {
  const HeadPhoneVerifiWidget({
    super.key,
    required this.head,
    required this.subHead,
  });

  final String head;
  final String subHead;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        HeadLineAuthSignUp(
          headline: head,
          isCenter: true,
        ),
        Text(
          subHead,
          style: AppConsts.style14,
        ),
      ],
    );
  }
}
