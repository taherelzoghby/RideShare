
import 'package:flutter/material.dart';
import 'package:ride_share/core/constants/strings.dart';
import 'package:ride_share/core/constants/style.dart';

class RecentPlacesListView extends StatelessWidget {
  const RecentPlacesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return ListTile(
          leading: const Icon(Icons.location_pin),
          title: const Text(
            StringsEn.office,
            style: AppConsts.style16,
          ),
          subtitle: Text(
            '2972 Westheimer Rd. Santa Ana, Illinois 85486 ',
            style: AppConsts.style12.copyWith(
              color: AppConsts.neutral400,
            ),
          ),
          trailing: Text(
            '2.7 KM',
            style: AppConsts.style14.copyWith(
              color: AppConsts.neutral700,
            ),
          ),
        );
      },
    );
  }
}
