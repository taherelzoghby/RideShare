import 'package:flutter/material.dart';
import 'package:ride_share/core/widgets/build_app_bar.dart';
import 'package:ride_share/features/auth/presentation/widgets/phone_and_email_verification_body.dart';

class PhoneAndEmailVerificationView extends StatelessWidget {
  const PhoneAndEmailVerificationView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:buildAppBar(context),
      body: const SafeArea(
        child: PhoneAndEmailVerificationBody(),
      ),
    );
  }
}
