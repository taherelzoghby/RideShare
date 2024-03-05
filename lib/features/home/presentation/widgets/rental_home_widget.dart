import 'package:flutter/material.dart';
import 'package:ride_share/core/constants/strings.dart';
import 'package:ride_share/core/constants/style.dart';
import 'package:ride_share/core/widgets/customButton.dart';
import 'bar_rental_home_widget.dart';
import 'search_field_home.dart';

class RentalHomeWidget extends StatelessWidget {
  const RentalHomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);

    return Padding(
      padding: AppConsts.mainPadding,
      child: AspectRatio(
        aspectRatio: AppConsts.aspect13on7,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: size.height * .05,
              width: size.width * .45,
              child: CustomButton(
                text: StringsEn.rental,
                background: AppConsts.mainColor2,
                onTap: () {},
              ),
            ),
            SizedBox(height: size.height * .01),
            Expanded(
              child: Container(
                decoration: AppConsts.decorationRentalWidgetHome,
                child: const Padding(
                  padding: AppConsts.allPadding8,
                  child: Column(
                    children: [
                      Expanded(
                        flex: 5,
                        child: SearchFieldHome(),
                      ),
                      Spacer(flex: 1),
                      Expanded(
                        flex: 4,
                        child: BarRentalHomeWidget(),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
