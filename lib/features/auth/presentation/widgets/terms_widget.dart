
import 'package:flutter/material.dart';
import 'package:ride_share/core/constants/data.dart';
import 'package:ride_share/core/constants/style.dart';

class TermsWidget extends StatelessWidget {
  const TermsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(
          Icons.check_circle,
          color: AppConsts.mainColor,
        ),
        SizedBox(width: MediaQuery.sizeOf(context).width * .02),
        Expanded(
          child: Text.rich(
            TextSpan(children: childrenTerms),
            style: AppConsts.style14,
            maxLines: 2,
          ),
        ),
      ],
    );
  }
}
