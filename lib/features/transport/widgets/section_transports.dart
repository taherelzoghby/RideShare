import 'package:flutter/material.dart';
import 'package:ride_share/core/constants/data.dart';
import 'transport_item.dart';

class SectionTransports extends StatelessWidget {
  const SectionTransports({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      direction: Axis.horizontal,
      spacing: 15,
      runSpacing: 15,
      children: transports
          .map(
            (e) => TransportItem(transportModel: e),
          )
          .toList(),
    );
  }
}
