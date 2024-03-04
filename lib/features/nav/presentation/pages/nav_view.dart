import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ride_share/core/constants/style.dart';

import '../../../../core/constants/data.dart';
import '../manager/nav_bar_cubit.dart';
import '../widgets/nav_body.dart';

class NavBarView extends StatelessWidget {
  const NavBarView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<NavBarCubit, NavBarState>(
        builder: (context, state) {
          int currentIndex = 0;
          if (state is Changed) {
            currentIndex = state.index;
          }
          return screens[currentIndex];
        },
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
