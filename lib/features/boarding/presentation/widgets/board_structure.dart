import 'package:flutter/material.dart';
import 'package:ride_share/core/constants/style.dart';

import '../../../../core/helper/handle_image.dart';

class BoardStructure extends StatelessWidget {
  const BoardStructure({
    super.key,
    required this.image,
    required this.subTitle,
    required this.title,
    this.scroll = true,
  });

  final String image;
  final String title;
  final String subTitle;
  final bool scroll;

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: scroll
          ? const BouncingScrollPhysics()
          : const NeverScrollableScrollPhysics(),
      children: [
        const AspectRatio(aspectRatio: AppConsts.aspect16on3),
        //image
        Padding(
          padding: AppConsts.mainPadding,
          child: AspectRatio(
            aspectRatio: AppConsts.aspect13on9,
            child: HandleImageWidget(image: image),
          ),
        ),
        const AspectRatio(aspectRatio: AppConsts.aspect16on1),
        AspectRatio(
          aspectRatio: AppConsts.aspect13on9,
          child: Column(
            children: [
              ///title
              Text(
                title,
                style: AppConsts.style20.copyWith(
                  color: AppConsts.neutral900,
                ),
                textAlign: TextAlign.center,
              ),
              const AspectRatio(aspectRatio: AppConsts.aspect40on1),

              ///sub title
              Padding(
                padding: AppConsts.padding40,
                child: Text(
                  subTitle,
                  style: AppConsts.style16,
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
