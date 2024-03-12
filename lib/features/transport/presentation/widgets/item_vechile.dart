import 'package:flutter/material.dart';
import 'package:ride_share/core/constants/strings.dart';
import 'package:ride_share/core/constants/style.dart';
import 'package:ride_share/core/widgets/customButton.dart';

import '../../domain/entities/vechile_intity.dart';
import 'info_item_vechile.dart';

class ItemVechile extends StatelessWidget {
  const ItemVechile({
    super.key,
    required this.vech,
    required this.vehicleEntity,
  });

  final String vech;
  final VehicleEntity vehicleEntity;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Padding(
      padding: AppConsts.allPadding8,
      child: AspectRatio(
        aspectRatio: AppConsts.aspect16on7,
        child: Container(
          decoration: AppConsts.decorationRentalWidgetHome.copyWith(
            color: AppConsts.mainColor.withOpacity(.01),
          ),
          child: Padding(
            padding: AppConsts.allPadding8,
            child: Column(
              children: [
                const Expanded(
                  flex: 3,
                  child: InfoItemVechile(),
                ),
                SizedBox(height: size.height * .01),
                Expanded(
                  flex: 2,
                  child: Row(
                    children: [
                      const Spacer(),
                      Expanded(
                        flex: 12,
                        child: CustomButton(
                          text:StringsEn.bookLater,
                          onTap: () {},
                          background: AppConsts.white.withOpacity(.5),
                          styleText: AppConsts.style16.copyWith(
                            color: AppConsts.mainColor,
                          ),
                          isBorder: true,
                        ),
                      ),
                      const Spacer(),
                      Expanded(
                        flex: 12,
                        child: CustomButton(
                          text: StringsEn.rideNow,
                          onTap: () {},
                        ),
                      ),
                      const Spacer(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
