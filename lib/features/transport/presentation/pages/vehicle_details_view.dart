import 'package:flutter/material.dart';
import '../../../../core/widgets/build_app_bar.dart';
import '../widgets/vehicle_details_body.dart';

class VehicleDetailsView extends StatelessWidget {
  const VehicleDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: const SafeArea(
        child: VehicleDetailsBody(),
      ),
    );
  }
}
