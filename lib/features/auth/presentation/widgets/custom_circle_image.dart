import 'package:flutter/material.dart';

import '../../../../core/constants/style.dart';

class CustomCircleImage extends StatelessWidget {
  const CustomCircleImage({
    super.key,
    required this.image,
    required this.onTap,
  });

  final String image;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(
      alignment: Alignment.bottomRight,
      children: [
        CircleAvatar(
          radius: size.height * .075,
          backgroundImage: NetworkImage(image),
        ),
        Container(
          decoration: BoxDecoration(
            color: AppConsts.mainColor,
            borderRadius: AppConsts.radius100,
          ),
          child: IconButton(
            onPressed: onTap,
            icon: const Icon(
              Icons.camera_alt,
              color: AppConsts.neutral100,
            ),
          ),
        ),
      ],
    );
  }
}
