import 'package:ride_share/core/constants/enum.dart';

class VehicleEntity {
  final String name;
  final String image;
  final ControlVehicle controlVehicle;
  final int seats;
  final String otherFeatures;
  final double awayFrom;
  final String durationAway;

  VehicleEntity({
    required this.name,
    required this.image,
    required this.controlVehicle,
    required this.seats,
    required this.otherFeatures,
    required this.awayFrom,
    required this.durationAway,
  });
}
