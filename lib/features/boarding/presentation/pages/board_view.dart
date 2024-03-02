import 'package:flutter/material.dart';
import 'package:ride_share/features/boarding/presentation/widgets/board_body.dart';

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
