import 'package:flutter/material.dart';
import 'package:ride_share/core/constants/routesPage.dart';
import 'package:ride_share/core/constants/strings.dart';
import 'package:ride_share/core/constants/style.dart';
import 'package:ride_share/core/widgets/build_app_bar.dart';

import '../widgets/select_transport_body.dart';

class SelectTransportView extends StatelessWidget {
  const SelectTransportView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(
        context,
        title: Text(
          StringsEn.selectTransport,
          style: AppConsts.style16.copyWith(
            color: AppConsts.neutral700,
          ),
        ),
        path: navPath,
      ),
      body: const SafeArea(
        child: SelectTransportBody(),
      ),
    );
  }
}
