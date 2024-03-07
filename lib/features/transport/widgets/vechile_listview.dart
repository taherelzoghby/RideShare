import 'package:flutter/material.dart';

import 'item_vechile.dart';

class VechileListView extends StatelessWidget {
  const VechileListView({super.key, required this.vech});

  final String vech;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const BouncingScrollPhysics(),
      itemBuilder: (context, index) {
        return ItemVechile(vech: vech);
      },
      itemCount: 10,
    );
  }
}
