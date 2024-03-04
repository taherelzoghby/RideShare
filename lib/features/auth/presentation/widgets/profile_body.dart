import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ride_share/core/constants/style.dart';
import 'edit_photo.dart';
import 'section_buttons_profile.dart';
import 'section_fields_profile.dart';

class ProfileAuthBody extends StatelessWidget {
  const ProfileAuthBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppConsts.mainPadding,
      child: ListView(
        children: const [
          AspectRatio(aspectRatio: AppConsts.aspect16on2),
          EditPhoto(),
          AspectRatio(aspectRatio: AppConsts.aspect16on2),
          SectionFieldsProfile(),
          AspectRatio(aspectRatio: AppConsts.aspect16on2),
          SectionButtonsProfile(),
          AspectRatio(aspectRatio: AppConsts.aspect16on2),
        ],
      ),
    );
  }
}
