import 'package:flutter/material.dart';

import '../widgets/board_body.dart';

class BoardView extends StatelessWidget {
  const BoardView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: OnBoardingBody(),
      ),
    );
  }
}
