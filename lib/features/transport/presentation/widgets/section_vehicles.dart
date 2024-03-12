import 'package:flutter/material.dart';
import 'package:ride_share/core/constants/data.dart';
import 'package:ride_share/core/constants/style.dart';
import 'package:ride_share/core/widgets/custom_photo.dart';

class SectionVehicles extends StatefulWidget {
  const SectionVehicles({super.key});

  @override
  State<SectionVehicles> createState() => _SectionVehiclesState();
}

class _SectionVehiclesState extends State<SectionVehicles> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: AppConsts.aspect13on7,
      child: Row(
        children: [
          Expanded(
            child: IconButton(
              onPressed: () => index != 0 ? setState(() => --index) : null,
              icon: const Icon(Icons.arrow_back_ios),
            ),
          ),
          Expanded(
            flex: 8,
            child: CustomPhoto(image: images[index]),
          ),
          Expanded(
            child: IconButton(
              onPressed: () => index != images.length - 1
                  ? setState(
                      () => ++index,
                    )
                  : null,
              icon: const Icon(Icons.arrow_forward_ios),
            ),
          ),
        ],
      ),
    );
  }
}
