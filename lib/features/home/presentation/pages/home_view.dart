import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ride_share/core/constants/strings.dart';
import 'package:ride_share/core/constants/style.dart';
import 'package:ride_share/features/home/presentation/widgets/home_body.dart';

class NavBarView extends StatelessWidget {
  const NavBarView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
      ),
      body: SafeArea(
        child: Container(
          color: Colors.yellow,
        ),
      ),
      bottomNavigationBar: const NavBarBody(),
      floatingActionButton: FloatingActionButton(
        elevation: 5,
        backgroundColor: AppConsts.mainColor,
        onPressed: () {},
        shape: AppConsts.circleFloatButtonBorder,
        child: const Icon(
          Icons.wallet,
          color: AppConsts.neutral100,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
