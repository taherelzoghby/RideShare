import 'package:flutter/material.dart';
import 'package:ride_share/features/auth/presentation/widgets/phone_verification_body.dart';

class PhoneVerificationView extends StatelessWidget {
  const PhoneVerificationView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: PhoneVerificationBody(),
      ),
    );
  }
}
