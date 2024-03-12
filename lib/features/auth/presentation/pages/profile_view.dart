import 'package:flutter/material.dart';
import 'package:ride_share/core/constants/strings.dart';
import 'package:ride_share/core/constants/style.dart';
import 'package:ride_share/core/widgets/build_app_bar.dart';
import 'package:ride_share/features/auth/presentation/widgets/profile_body.dart';

class ProfileAuthView extends StatelessWidget {
  const ProfileAuthView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(
        context,
        title: Text(
          StringsEn.profile,
          style: AppConsts.style16.copyWith(
            color: AppConsts.neutral700,
          ),
        ),
      ),
      body: const SafeArea(
        child: ProfileAuthBody(),
      ),
    );
  }
}
