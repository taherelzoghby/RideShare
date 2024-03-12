
import 'package:flutter/material.dart';

import '../../../../core/constants/style.dart';

class ItemInfo extends StatelessWidget {
  const ItemInfo({
    super.key,
    required this.leading,
    this.trailing,
    this.trailingWidget,
  });

  final String leading;
  final String? trailing;
  final Widget? trailingWidget;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: AppConsts.decorationRentalWidgetHome.copyWith(
        color: AppConsts.mainColor.withOpacity(.01),
      ),
      child: Padding(
        padding: AppConsts.allPadding8,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              leading,
              style: AppConsts.style14.copyWith(
                color: AppConsts.neutral500,
              ),
            ),
            const Spacer(),
            trailing == null
                ? trailingWidget!
                : Text(
              trailing!,
              style: AppConsts.style14.copyWith(
                color: AppConsts.neutral500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
