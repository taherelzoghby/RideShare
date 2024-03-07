import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ride_share/core/constants/routesPage.dart';
import 'package:ride_share/core/constants/strings.dart';
import 'package:ride_share/core/constants/style.dart';

import '../widgets/select_transport_body.dart';

class SelectTransportView extends StatelessWidget {
  const SelectTransportView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: MediaQuery.sizeOf(context).width * .25,
        title: Text(
          StringsEn.selectTransport,
          style: AppConsts.style16.copyWith(
            color: AppConsts.neutral700,
          ),
        ),
        centerTitle: true,
        leading: TextButton.icon(
          onPressed: () => GoRouter.of(context).go(navPath),
          icon: const Icon(
            Icons.arrow_back_ios,
            color: AppConsts.neutral500,
          ),
          label: const Text(
            StringsEn.back,
            style: AppConsts.style16,
          ),
        ),
      ),
      body: const SafeArea(
        child: SelectTransportBody(),
      ),
    );
  }
}
