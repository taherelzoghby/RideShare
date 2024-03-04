import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ride_share/core/constants/strings.dart';
import 'package:ride_share/core/constants/style.dart';
import 'package:ride_share/features/auth/presentation/widgets/phone_and_email_verification_body.dart';

class PhoneAndEmailVerificationView extends StatelessWidget {
  const PhoneAndEmailVerificationView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: MediaQuery.sizeOf(context).width * .25,
        leading: TextButton.icon(
          onPressed: () => GoRouter.of(context).pop(),
          icon: const Icon(
            Icons.arrow_back_ios,
            color: AppConsts.neutral500,
          ),
          label: const Text(
            StringsEn.back,
            style: AppConsts.style16,
          ),
        ),
      ),
      body: const SafeArea(
        child: PhoneAndEmailVerificationBody(),
      ),
    );
  }
}
