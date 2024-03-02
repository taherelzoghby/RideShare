import 'package:flutter/material.dart';
import 'package:ride_share/core/constants/strings.dart';
import 'package:ride_share/core/constants/style.dart';

class AlternativeAuth extends StatelessWidget {
  const AlternativeAuth({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          StringsEn.alreadyHaveAnAccount,
          style: AppConsts.style14,
        ),
        TextButton(
          onPressed: () {},
          child: Text(
            StringsEn.signIn,
            style: AppConsts.style14.copyWith(
              color: AppConsts.mainColor,
            ),
          ),
        ),
      ],
    );
  }
}
