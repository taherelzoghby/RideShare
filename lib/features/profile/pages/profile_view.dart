import 'package:flutter/material.dart';
import 'package:ride_share/features/auth/presentation/widgets/profile_body.dart';
import 'package:ride_share/features/offer/presentation/widgets/offer_body.dart';

import '../widgets/profile_body.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: ProfileBody(),
      ),
    );
  }
}
