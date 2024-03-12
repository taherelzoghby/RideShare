
import 'package:flutter/material.dart';
import 'package:ride_share/core/constants/style.dart';
import 'package:ride_share/core/helper/handle_image.dart';

class CustomPhoto extends StatelessWidget {
  const CustomPhoto({super.key, required this.image});

  final String image;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: AppConsts.radius8,
      child: Container(
        color: AppConsts.mainColor.withOpacity(.3),
        child: HandleImageWidget(image: image),
      ),
    );
  }
}
