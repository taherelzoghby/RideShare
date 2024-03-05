import 'package:flutter/material.dart';
import 'package:ride_share/core/constants/strings.dart';
import 'package:ride_share/core/constants/style.dart';
import 'package:ride_share/features/home/presentation/widgets/recent_places_list_view.dart';

class RecentPlacesWidget extends StatelessWidget {
  const RecentPlacesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          StringsEn.recentPlaces,
          style: AppConsts.style16,
        ),
        AspectRatio(aspectRatio: AppConsts.aspect40on1),
        AspectRatio(
          aspectRatio: AppConsts.aspect13on9,
          child: RecentPlacesListView(),
        ),
      ],
    );
  }
}
