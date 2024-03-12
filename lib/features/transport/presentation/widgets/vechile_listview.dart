import 'package:flutter/material.dart';
import 'package:ride_share/features/transport/domain/entities/vechile_intity.dart';

import 'item_vechile.dart';

class VehicleListView extends StatefulWidget {
  const VehicleListView({
    super.key,
    required this.vech,
    required this.vehicles,
  });

  final String vech;
  final List<VehicleEntity> vehicles;

  @override
  State<VehicleListView> createState() => _VehicleListViewState();
}

class _VehicleListViewState extends State<VehicleListView> {
  final GlobalKey<AnimatedListState> keyList = GlobalKey<AnimatedListState>();
  List<Widget> vehiclesWidget = [];
  List<VehicleEntity> vehicles = [];

  @override
  void initState() {
    //waiting & scheduling
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) => addVehicles());
    super.initState();
  }

  //add jobs
  addVehicles() {
    vehicles.addAll(widget.vehicles);
    Future future = Future(() {});
    for (VehicleEntity vehicle in vehicles) {
      future = future.then(
        (value) => Future.delayed(const Duration(milliseconds: 100)).then(
          (value) {
            vehiclesWidget.add(_buildWidget(vehicle));
            keyList.currentState!.insertItem(vehiclesWidget.length - 1);
          },
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedList(
      key: keyList,
      shrinkWrap: true,
      physics: const BouncingScrollPhysics(),
      itemBuilder: (context, index, animation) {
        Tween<double> opacity = Tween(begin: 0.0, end: 1.0);
        Tween<double> sc = Tween(begin: 0, end: 1);

        return FadeTransition(
          opacity: animation.drive(opacity),
          child: ScaleTransition(
            scale: animation.drive(sc),
            child: vehiclesWidget[index],
          ),
        );
      },
      initialItemCount: vehiclesWidget.length,
    );
  }

//build widget
  Widget _buildWidget(VehicleEntity vehicleEntity) {
    return ItemVehicle(
      vech: widget.vech,
      vehicleEntity: vehicleEntity,
    );
  }
}
