import 'package:flutter/material.dart';

import '../widgets/select_transport_body.dart';

class SelectTransportView extends StatelessWidget {
  const SelectTransportView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: SelectTransportBody(),
      ),
    );
  }
}
