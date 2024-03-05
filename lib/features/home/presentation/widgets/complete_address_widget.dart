import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'from_to_location_widget.dart';
import 'location_dotted_widget.dart';

class CompleteAddressWidget extends StatelessWidget {
  const CompleteAddressWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Expanded(
      child: Column(
        children: [
          Spacer(),
          Expanded(
            flex: 2,
            child: Row(
              children: [
                Expanded(
                  child: LocationDottedWidget(),
                ),
                Expanded(
                  flex: 7,
                  child: FromToLocation(),
                ),
              ],
            ),
          ),
          Spacer(),
        ],
      ),
    );
  }
}
