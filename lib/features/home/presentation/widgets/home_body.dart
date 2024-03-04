import 'package:flutter/material.dart';

import 'top_home_widget.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Stack(
      children: [
        Container(color: Colors.blue),
        Positioned(
          top: size.height * .025,
          right: 0,
          left: 0,
          child: const TopHomeWidget(),
        ),
      ],
    );
  }
}
