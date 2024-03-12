import 'package:flutter/material.dart';
import 'package:ride_share/features/transport/presentation/widgets/available_vechile_for_rides_body.dart';

import '../../../../core/widgets/build_app_bar.dart';

class AvailableVechileForRideView extends StatelessWidget {
  const AvailableVechileForRideView({
    super.key,
    required this.vech,
  });

  final String vech;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:buildAppBar(context),
      body: SafeArea(
        child: AvailableVechileForRideBody(
          vech: vech,
        ),
      ),
    );
  }
}