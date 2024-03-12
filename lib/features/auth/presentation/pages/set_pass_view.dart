import 'package:flutter/material.dart';
import 'package:ride_share/core/widgets/build_app_bar.dart';
import '../widgets/set_pass_body.dart';

class SetPassView extends StatelessWidget {
  const SetPassView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: const SafeArea(
        child: SetPassBody(),
      ),
    );
  }
}
