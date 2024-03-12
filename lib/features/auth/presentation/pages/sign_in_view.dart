import 'package:flutter/material.dart';
import 'package:ride_share/core/widgets/build_app_bar.dart';

import '../widgets/sign_in_body.dart';

class SignInView extends StatelessWidget {
  const SignInView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: const SafeArea(
        child: SignInBody(),
      ),
    );
  }
}
