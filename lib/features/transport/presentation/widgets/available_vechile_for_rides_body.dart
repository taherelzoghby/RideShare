import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ride_share/core/constants/assets.dart';
import 'package:ride_share/core/constants/enum.dart';
import 'package:ride_share/core/constants/style.dart';
import 'package:ride_share/features/auth/presentation/widgets/head_phone_verification_widget.dart';
import 'package:ride_share/features/transport/domain/entities/vechile_intity.dart';

import '../../../../core/constants/fake_data.dart';
import '../../../../core/constants/strings.dart';
import 'vechile_listview.dart';

class AvailableVechileForRideBody extends StatelessWidget {
  const AvailableVechileForRideBody({
    super.key,
    required this.vech,
  });

  final String vech;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppConsts.mainPadding,
      child: Column(
        children: [
          const AspectRatio(aspectRatio: AppConsts.aspect16on2),
          Align(
            alignment: Alignment.centerLeft,
            child: HeadPhoneVerifiWidget(
              crossAxisAlignment: CrossAxisAlignment.start,
              headIsCenter: false,
              head: "${StringsEn.available} $vech ${StringsEn.forRide}",
              subHead: "12 $vech ${StringsEn.found}",
            ),
          ),
          const AspectRatio(aspectRatio: AppConsts.aspect16on1),
          Expanded(
            child: VehicleListView(
              vech: vech,
              vehicles:vehiclesFake,
            ),
          ),
        ],
      ),
    );
  }
}
