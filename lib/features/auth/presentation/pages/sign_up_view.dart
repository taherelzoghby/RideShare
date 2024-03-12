import 'package:flutter/material.dart';
import 'package:ride_share/core/widgets/build_app_bar.dart';

import '../widgets/sign_up_body.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: const SafeArea(
        child: SignUpBody(),
      ),
    );
  }
}
