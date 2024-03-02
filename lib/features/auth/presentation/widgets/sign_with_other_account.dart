import 'package:flutter/material.dart';
import 'package:ride_share/core/constants/assets.dart';
import 'package:ride_share/core/constants/style.dart';

import '../../../../core/constants/strings.dart';
import '../../../../core/widgets/custom_button_with_widget.dart';

class SignWithGoogleAndFaceBookWidget extends StatelessWidget {
  const SignWithGoogleAndFaceBookWidget({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: AppConsts.verticalPadding5,
      child: Row(
        children: [
          ///google
          Expanded(
            child: CustomButtonWithWidget(
              label: StringsEn.google,
              icon: Assets.imagesGoogle,
              onTap: () {},
            ),
          ),
          SizedBox(width: size.width * .025),

          ///facebook
          Expanded(
            child: CustomButtonWithWidget(
              label: StringsEn.facebook,
              icon: Assets.imagesFacebook,
              onTap: () {},
            ),
          ),
        ],
      ),
    );
  }
}
