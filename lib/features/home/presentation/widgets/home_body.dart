import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ride_share/core/constants/style.dart';

import '../../../../core/constants/strings.dart';
import '../manager/nav_bar_cubit.dart';
import 'bottom_nav_bar_widget.dart';

class NavBarBody extends StatelessWidget {
  const NavBarBody({super.key});

  @override
  Widget build(BuildContext context) {
    NavBarCubit blocNav = BlocProvider.of<NavBarCubit>(context);
    return AspectRatio(
      aspectRatio: AppConsts.aspect16on3,
      child: BottomAppBar(
        color: AppConsts.white,
        elevation: 7,
        shape: const CircularNotchedRectangle(),
        notchMargin: 5,
        child: BlocBuilder<NavBarCubit, NavBarState>(
          builder: (context, state) {
            return Row(
              children: [
                Expanded(
                  child: BottomNavBarWidget(
                    color: blocNav.currentIndex == 0
                        ? AppConsts.mainColor
                        : AppConsts.neutral400,
                    label: StringsEn.home,
                    icon: Icons.home,
                    onTap: () => blocNav.changeIndex(0),
                  ),
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: BottomNavBarWidget(
                    color: blocNav.currentIndex == 1
                        ? AppConsts.mainColor
                        : AppConsts.neutral400,
                    icon: Icons.favorite_outline_rounded,
                    label: StringsEn.favourite,
                    onTap: () => blocNav.changeIndex(1),
                  ),
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: BottomNavBarWidget(
                    color: blocNav.currentIndex == 2
                        ? AppConsts.mainColor
                        : AppConsts.neutral400,
                    label: StringsEn.wallet,
                    onTap: () => blocNav.changeIndex(2),
                  ),
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: BottomNavBarWidget(
                    color: blocNav.currentIndex == 3
                        ? AppConsts.mainColor
                        : AppConsts.neutral400,
                    icon: Icons.local_offer,
                    label: StringsEn.offer,
                    onTap: () => blocNav.changeIndex(3),
                  ),
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: BottomNavBarWidget(
                    color: blocNav.currentIndex == 4
                        ? AppConsts.mainColor
                        : AppConsts.neutral400,
                    icon: Icons.person,
                    label: StringsEn.profile,
                    onTap: () => blocNav.changeIndex(4),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
