import 'package:flutter/material.dart';

import '../../../core/functions.dart';

class AwayFromWidget extends StatelessWidget {
  const AwayFromWidget({
    super.key,
    required this.meter,
    required this.durationAway,
  });

  final int meter;
  final String durationAway;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(Icons.location_on),
        Text('${convertMeterToKm(meter)} ($durationAway away)'),
      ],
    );
  }
}
