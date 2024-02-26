import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ride_share/core/constants/style.dart';

class BoardStructure extends StatelessWidget {
  const BoardStructure({
    super.key,
    required this.image,
    required this.subTitle,
    required this.title,
  });

  final String image;
  final String title;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListView(
        children: [
          const AspectRatio(aspectRatio: AppConsts.aspect16on3),
          //image
          AspectRatio(
            aspectRatio: AppConsts.aspect13on9,
            child: SvgPicture.asset(image),
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
      ),
    );
  }
}
