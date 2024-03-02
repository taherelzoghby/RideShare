import 'package:flutter/material.dart';
import 'package:ride_share/core/constants/strings.dart';
import '../../../../core/constants/style.dart';

class OrWidget extends StatelessWidget {
  const OrWidget({
    super.key
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Row(
      children: [
        Expanded(
          child: Divider(
            color: AppConsts.neutral300,
            endIndent: size.width * .05,
          ),
        ),
        const Text(StringsEn.or, style: AppConsts.style14),
        Expanded(
          child: Divider(
            color: AppConsts.neutral300,
            indent: size.width * .05,
          ),
        ),
      ],
    );
  }
}
