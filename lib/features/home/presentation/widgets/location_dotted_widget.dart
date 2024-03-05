
import 'package:flutter/material.dart';

import '../../../../core/helper/dotted_widget.dart';

class LocationDottedWidget extends StatelessWidget {
  const LocationDottedWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Icon(
          Icons.location_pin,
          color: Colors.red,
        ),
        ...dotted,
        const Icon(
          Icons.location_pin,
          color: Colors.green,
        ),
      ],
    );
  }
}
