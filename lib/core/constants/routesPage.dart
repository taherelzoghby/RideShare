import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:ride_share/core/helper/custom_animation.dart';
import 'package:ride_share/features/auth/presentation/pages/phone_and_email_verification_view.dart';
import 'package:ride_share/features/auth/presentation/pages/phone_verification_view.dart';
import 'package:ride_share/features/auth/presentation/pages/profile_view.dart';
import 'package:ride_share/features/auth/presentation/pages/set_pass_view.dart';
import 'package:ride_share/features/auth/presentation/pages/sign_in_view.dart';
import 'package:ride_share/features/auth/presentation/pages/sign_up_view.dart';
import 'package:ride_share/features/auth/presentation/pages/welcome_view.dart';
import 'package:ride_share/features/home/presentation/manager/nav_bar_cubit.dart';
import 'package:ride_share/features/home/presentation/pages/home_view.dart';

import '../../features/boarding/presentation/pages/board_view.dart';

const boardPath = '/';
const welcomePath = '/welcome';
const signUpPath = '/signup';
const phoneVerificationPath = '/phoneVerifi';
const setPasswordPass = '/setPasswordPass';
const profilePath = '/profile';
const signInPath = '/signIn';
const phoneAndEmailVerificationPath = '/phoneAndEmailVerification';
const navPath = '/navPath';
final router = GoRouter(
  routes: [
    GoRoute(
      path: boardPath,
      pageBuilder: (context, state) => buildPageWithDefaultTransition(
        context: context,
        state: state,
        child: const BoardView(),
      ),
    ),
    GoRoute(
      path: welcomePath,
      pageBuilder: (context, state) => buildPageWithDefaultTransition(
        context: context,
        state: state,
        child: const WelcomeView(),
      ),
    ),
    GoRoute(
      path: signUpPath,
      pageBuilder: (context, state) => buildPageWithDefaultTransition(
        context: context,
        state: state,
        child: const SignUpView(),
      ),
    ),
    GoRoute(
      path: phoneVerificationPath,
      pageBuilder: (context, state) => buildPageWithDefaultTransition(
        context: context,
        state: state,
        child: const PhoneVerificationView(),
      ),
    ),
    GoRoute(
      path: setPasswordPass,
      pageBuilder: (context, state) => buildPageWithDefaultTransition(
        context: context,
        state: state,
        child: const SetPassView(),
      ),
    ),
    GoRoute(
      path: profilePath,
      pageBuilder: (context, state) => buildPageWithDefaultTransition(
        context: context,
        state: state,
        child: const ProfileView(),
      ),
    ),
    GoRoute(
      path: signInPath,
      pageBuilder: (context, state) => buildPageWithDefaultTransition(
        context: context,
        state: state,
        child: const SignInView(),
      ),
    ),
    GoRoute(
      path: phoneAndEmailVerificationPath,
      pageBuilder: (context, state) => buildPageWithDefaultTransition(
        context: context,
        state: state,
        child: const PhoneAndEmailVerificationView(),
      ),
    ),
    GoRoute(
      path: navPath,
      pageBuilder: (context, state) => buildPageWithDefaultTransition(
        context: context,
        state: state,
        child: BlocProvider(
          create: (_) => NavBarCubit(),
          child: const NavBarView(),
        ),
      ),
    ),
  ],
);

// void clearStackAndNavigate(BuildContext context, String path) {
//   while (GoRouter.of(context).canPop()) {
//     GoRouter.of(context).pop();
//   }
//
//   GoRouter.of(context).pushReplacement(path);
// }
